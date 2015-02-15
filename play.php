<?php
define("ALLOWED",false);
if (!isset($_GET["url"])) {
  header("HTTP/1.0 404 Not Found");
  die();
}

// Try to avoid bad script injection (don't allow spaces)
$ALLOWED = strpos($_GET["url"],' ') === false ? true : false;

// Verify that the request is coming from an internal IP.
$ALLOWED = strpos($_SERVER["REMOTE_ADDR"],"192.168.0.") !== false && $ALLOWED ? true : false;

// @TODO make page to not load indefinitely on "exec".
if ($ALLOWED) {
  exec("nohup sh /var/www/play.sh '".$_GET["url"]."' ".(isset($_GET["exit"]) ? "exit" : "none"));
}
