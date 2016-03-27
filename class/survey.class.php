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
		print "<pre>";
		print_r($get_data);
		print "</pre>";
		

	}

}