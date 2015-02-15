<?php
define("ALLOWED",false);

// Try to avoid bad script injection (don't allow spaces)
$ALLOWED = strpos($_GET["url"],' ') === false ? true : false;

// Verify that the request is coming from an internal IP.
$ALLOWED = strpos($_SERVER["REMOTE_ADDR"],"192.168.0.") !== false && $ALLOWED ? true : false;

// @TODO make page to not load indefinitely on "exec".
if ($ALLOWED) {
  exec("nohup sh /var/www/play.sh '".$_GET["url"]."'");
}
