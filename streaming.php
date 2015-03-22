<?php

$x = false;
$fp = fsockopen('192.168.1.10', 8080, $errno, $errstr, 5);

if (!$fp) {
  $x = false;
}
else {
  $x = true;
  fclose($fp);
}

if ($x == false) {
  echo "false";
}
elseif ($x == true && (int)$_GET["iteration"] >= 1) {
  echo "true";
}
elseif ($x == true && (int)$_GET["iteration"] == 0) {
  echo "streaming";
}
else {
  echo $x;
}
