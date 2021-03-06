<?php
require('smarty.php');

$template = 'error.tpl';

$number = $request[1];

header("HTTP/1.0 ".$number);
$_SERVER['REDIRECT_STATUS'] = $number;

$tpl->assign('number',$number);
$tpl->assign('image',constant($number.'_IMAGE'));
$tpl->assign('rand',md5(uniqid(rand(), true)));

require_once('common.php');

header("Content-type: text/html; charset=UTF-8");
$tpl->display($template);
?>