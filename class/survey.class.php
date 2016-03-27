<?php

class survey {
	public $linkID;
	function __construct($linkID) {
		$this->linkID = $linkID;
	}

   public function new_mysql($sql) {
		$result = $this->linkID->query($sql) or die($this->linkID->error.__LINE__);
      return $result;
	}

	public function load_smarty($vars,$template) {
		// loads the PHP Smarty class
		require_once('libs/Smarty.class.php');
		$smarty=new Smarty();
		$smarty->setTemplateDir('templates/');
		$smarty->setCompileDir('templates_c/');
		$smarty->setConfigDir('configs/');
		$smarty->setCacheDir('cache/');
		if (is_array($vars)) {
			foreach ($vars as $key=>$value) {
				$smarty->assign($key,$value);
			}
		}
		$smarty->display($template);
	}	

	public function error() {
		// Generic error message
      	$template = "error.tpl";
      	$data = array();
      	$this->load_smarty($data,$template);
		die;
	}

    public function device_type() {
        //print "TEST: $_SERVER[HTTP_USER_AGENT]<br>";
        //die;
        return preg_match("/(android|avantgo|blackberry|bolt|boost|cricket|docomo|fone|hiptop|mini|iphone|palm|phone|pie|tablet|up\.browser|up\.link|webos|wos)/i", $_SERVER["HTTP_USER_AGENT"]);
    }

	public function homepage() {
		$device = $this->device_type();
		// show the home page of the survey and evaulate the URL parms to start the survey
		$data['device'] = $device;

		$get_data = $this->lookup_survey_code();
		if ($get_data['status'] == "INCOMPLETE") {
			$template = "survey.tpl";
			$data['boat_name'] = $get_data['name'];
			$data['code'] = $_GET['code'];
			$this->load_smarty($data,$template);
		} else {
			$template = "already_complete.tpl";
			$this->load_smarty($null,$template);
		}
	}

	public function lookup_survey_code() {
		$sql = "
		SELECT
			`s`.`inventoryID`,
			IF(`r`.`inventoryID` = '1800','COMPLETE','INCOMPLETE') AS 'status',
			`b`.`name`

		FROM
			`WWM_survey_codes` s, `boats` b

		LEFT JOIN `WWM_survey_results` r ON `s`.`inventoryID` = `r`.`inventoryID`

		WHERE
			`s`.`inventoryID` = '$_GET[code]'
			AND `s`.`boatID` = `b`.`boatID`
		";
		$result = $this->new_mysql($sql);
		while ($row = $result->fetch_assoc()) {
			$name = $row['name'];
			$status = $row['status'];
		}
		$data['name'] = $name;
		$data['status'] = $status;
		return $data;
	}

	public function saveresults() {
		$_GET['code'] = $_POST['code'];
		$get_data = $this->lookup_survey_code();

		if ($get_data['status'] == "INCOMPLETE") {
			$sql = "SELECT `boatID`,`start_date`,`end_date` FROM `WWM_survey_codes` WHERE `inventoryID` = '$_POST[code]'";
			$result = $this->new_mysql($sql);
			while ($row = $result->fetch_assoc()) {
				$boatID = $row['boatID'];
				$start_date = $row['start_date'];
				$end_date = $row['end_date'];
			}

         	$sql = "
         	INSERT INTO `WWM_survey_results` (

         	`inventoryID`,`boatID`,`start_date`,`end_date`,
         	`ans_1`,`ans_3`,`ans_4a`,`ans_4b`,`ans_5`,`ans_6`,`ans_7`,`ans_8`,`ans_9`,`ans_10`,`ans_11`,`ans_12`,`ans_gift`,`ans_15`,
         	`ans_16`,`ans_17`,`ans_18`,`ans_19`,`ans_20`,`ans_21`
         	)

         	VALUES (
         	'$_POST[code]','$boatID','$start_date','$end_date',
         	'$_POST[q2]','$_POST[q9]','$_POST[q11a]','$_POST[q11b]','$_POST[q7a]','$_POST[q7b]','$_POST[q7c]','$_POST[q7d]','$_POST[q8]','$_POST[q3]','$_POST[q4]','$_POST[q5]',
         	'$_POST[donate]','$_POST[q14]',
         	'$_POST[q15]','$_POST[q10a]','$_POST[q10b]','$_POST[q6]','$_POST[q1]','$_POST[q4b]'
         	)
         	";
         	print "SQL 1:<br>$sql<br>";
         	$result = $this->new_mysql($sql);

            for ($r=0; $r < 30; $r++) {
               $i = "q12a_";
               $i .= $r;
               $mag[$r] = $_POST[$i];
            }

            for ($r=0; $r < 30; $r++) {
               $i = "q13a_";
               $i .= $r;
               $site[$r] = $_POST[$i];
            }

			$sql = "
            INSERT INTO `WWM_survey_publications` (

            `inventoryID`,`boatID`,`start_date`,`end_date`,
            `mag_1`,`mag_2`,`mag_3`,`mag_4`,`mag_5`,`mag_6`,`mag_8`,`mag_9`,`mag_10`,`mag_11`,`mag_13`,`mag_14`,`mag_15`,`mag_16`,`mag_17`,`mag_18`,`mag_19`,`mag_20`,`mag_21`,`mag_22`,`mag_23`,
            `mag_other`,
            `site_1`,`site_2`,`site_3`,`site_4`,`site_5`,`site_6`,`site_7`,`site_8`,`site_9`,`site_10`,`site_11`,`site_12`,`site_13`,`site_14`,`site_15`,`site_16`,`site_17`,
            `site_other`
            )

            VALUES (
            '$_POST[code]','$boatID','$start_date','$end_date',
            '$mag[0]','$mag[1]','$mag[2]','$mag[3]','$mag[4]','$mag[5]','$mag[6]','$mag[7]','$mag[8]','$mag[9]','$mag[10]',
            '$mag[11]','$mag[12]','$mag[13]','$mag[14]','$mag[15]','$mag[16]','$mag[17]','$mag[18]','$mag[19]','$mag[20]',
            '$_POST[q12b]','$site[0]','$site[1]','$site[2]','$site[3]','$site[4]','$site[5]','$site[6]','$site[7]','$site[8]',
            '$site[9]','$site[10]','$site[11]','$site[12]','$site[13]','$site[14]','$site[15]','$site[16]','$_POST[q13b]'
            )
            ";
            print "SQL 2:<br>$sql<br>";
            $result = $this->new_mysql($sql);

            $submitted = date("Ymd");
            $sql = "UPDATE `WWM_survey_codes` SET `submitted` = '$submitted' WHERE `inventoryID` = '$_POST[code]'";
            $result = $this->new_mysql($sql);

            $template = "thankyou.tpl";
            $this->load_smarty($null,$template);
		} else {
			$template = "already_complete.tpl";
			$this->load_smarty($null,$template);
		}
		

	}

}