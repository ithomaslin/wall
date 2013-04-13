<?php
error_reporting(0);
include_once 'includes/db.php';
include_once 'includes/Wall_Updates.php';
include_once 'includes/tolink.php';
include_once 'includes/textlink.php';
include_once 'includes/htmlcode.php';
include_once 'includes/time_stamp.php';
include_once 'session.php';

$Wall = new Wall_Updates();

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Facebook WallScript Version 4.0</title>
<link href="css/wall.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery.min.js"></script>
 <script type="text/javascript" src="js/jquery.oembed.min.js"></script>
 <script type="text/javascript" src="js/jquery.wallform.js"></script>
 <script type="text/javascript" src="js/jquery.webcam.js"></script>
  <script type="text/javascript" src="js/jquery.color.js"></script>
 <script type="text/javascript" src="js/wall.js"></script>
 </head>
<body>


<div id="wall_container">

<div id="updateboxarea">
<h4>What's up?</h4>
<textarea name="update" id="update" maxlength="200" ></textarea>
<br />
<div id="webcam_container" class='border'>
<div id="webcam" >
</div>
<div id="webcam_preview">

</div>

<div id='webcam_status'></div>
<div id='webcam_takesnap'>

<input type="button" value=" Take Snap " onclick="return takeSnap();" class="camclick button"/>
<input type="hidden" id="webcam_count" />
</div>
</div>
<div  id="imageupload" class="border">
<form id="imageform" method="post" enctype="multipart/form-data" action='image_ajax.php'> 
<div id='preview'>
</div>

<span id='addphoto'>Add Photo:</span> <input type="file" name="photoimg" id="photoimg" />
<input type='hidden' id='uploadvalues' />
</form>
</div>
<div style="width:100%;clear:both">
<input type="submit"  value=" Update "  id="update_button"  class="update_button"/> 
<span style="float:right">
<a href="javascript:void(0);" id="camera"><img src="icons/cameraa.png" border="0" title="Upload Image"/></a> 
 <a href="javascript:void(0);" id="webcam_button"><img src="icons/web-cam.png"  border="0" title="Webcam Snap" style='margin-top:5px'/></a>
</span>
</div>

</div>

<div id='flashmessage'>
<div id="flash" align="left"  ></div>
</div>
<div id="content">

<?php 
// Loading Messages
include('load_messages.php'); 
?>

</div>
</div>

</body>
</html>
