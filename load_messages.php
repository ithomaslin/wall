 <?php
//Srinivas Tamada http://9lessons.info
//Loading Comments link with load_updates.php 
if($lastid=='')
$lastid=0;

$updatesarray=$Wall->Updates($uid,$lastid);
$total=$Wall->Total_Updates($uid);
if($updatesarray)
{
foreach($updatesarray as $data)
 {
 $msg_id=$data['QuestionID'];
 $orimessage=$data['Question'];
 $message=tolink(htmlcode($data['Question']));
  $time=$data['created'];
 $username=$data['first_name'];
 $uid=$data['UserID'];
 // User Avatar
 if($gravatar)
 $face=$Wall->Gravatar($uid);
 else
 $face=$Wall->Profile_Pic($uid);
  // End Avatar
 if(textlink($orimessage))
 {
 $link =textlink($orimessage);
?>
<script type="text/javascript"> 
$(document).ready(function(){$("#stexpand<?php echo $QuestionID;?>").oembed("<?php echo  $link; ?>",{maxWidth: 400, maxHeight: 300});});
</script>
<?php } ?>
<div class="stbody" id="stbody<?php echo $msg_id;?>">

<div class="stimg">
<img src="<?php echo $face;?>" class='big_face' alt='<?php echo $username; ?>'/>
</div> 
<div class="sttext">
<a class="stdelete" href="#" id="<?php echo $QuestionID;?>" title="Delete Update"></a>
<b><a href="<?php echo $base_url.$username; ?>"><?php echo $username;?></a></b> <?php echo clear($message);  ?> 

<?php
 if($uploads)
{
echo "<div style='margin-top:10px'>";
$s = explode(",", $uploads);
foreach($s as $a)
{
$newdata=$Wall->Get_Upload_Image_Id($a);
if($newdata)
echo "<img src='uploads/".$newdata['image_path']."' class='imgpreview'/>";
}
echo "</div>";
 }
 ?>
<div class="sttime"><?php time_stamp($time);?> | <a href='#' class='commentopen' id='<?php echo $QuestionID;?>' title='Comment'>Comment </a></div> 
<div id="stexpandbox">
<div id="stexpand<?php echo $QuestionID;?>"></div>
</div>
<div class="commentcontainer" id="commentload<?php echo $QuestionID;?>">
<?php
$x=1;
include('load_comments.php') ?>
</div>
<div class="commentupdate" style='display:none' id='commentbox<?php echo $QuestionID;?>'>
<div class="stcommentimg">
<img src="<?php echo $face;?>" class='small_face'/>
</div> 
<div class="stcommenttext" >
<form method="post" action="">
<textarea name="comment" class="comment" maxlength="200"  id="ctextarea<?php echo $QuestionID;?>"></textarea>
<br />
<input type="submit"  value=" Comment "  id="<?php echo $msg_id;?>" class="comment_button button"/>
</form>
</div>
</div>
</div> 
</div>
<?php
  }
  if($total>$perpage)
  {
  ?>
 <!-- More Button here $msg_id values is a last message id value. -->
 
<div id="more<?php echo $msg_id; ?>" class="morebox">
<a href="#" class="more" id="<?php echo $msg_id; ?>">More</a>
</div>

  <?php
  }
  }
?>
