<?php
session_start();
$sesID = session_id();
include_once('config.php');
require_once(PATH."/class/loader.class.php");
$loader = new loader($linkID);

if ($_GET['section'] != "") {
	$loader->load_module($_GET['section']);
} else {
	$loader->load_module('homepage');
}