<?php
include PATH . "/class/survey.class.php";

class loader extends survey{

	public function load_module($module) {
		if (method_exists('survey', $module)) {
			$this->$module();
		} elseif (method_exists('loader',$module)) {
			$this->$module();
		} else {
			print "<br><font color=red>The $module method does not exist.</font><br>";
			die;
		}
	}
}