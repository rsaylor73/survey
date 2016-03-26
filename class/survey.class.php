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
		$template = "survey.tpl";
		$data['device'] = $device;

		$this->load_smarty($data,$template);

	}
}