<?php
require_once('common/smarty.php');
require_once('common/api.class.php');

$template = 'tos.tpl';

require_once('common.php');

header("Content-type: text/html; charset=UTF-8");
$tpl->display($template);
?>
