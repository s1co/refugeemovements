<?php
$r = parse_url($_SERVER['REQUEST_URI']);
$r = explode('/', $r['path']);

$dir = 'pages';
$files = scandir($dir);
unset($files[0]);
unset($files[1]);

$pages = array();

foreach ($files as $value) {
    $pages[] = preg_replace('/\\.[^.\\s]{3,4}$/', '', $value);
}

// Print Header
include("assets/inc/header.php");

// Check URL and Print Body
if (in_array($r[1], $pages)) {
  include("pages/".$r[1].".php");
} else {
  include("pages/main.php");
}

// Print Footer
include("assets/inc/footer.php");
?>
