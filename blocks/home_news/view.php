<?php  defined('C5_EXECUTE') or die("Access Denied.");
?>

<?php  if (!empty($field_1_image)): ?>
	<img src="<?php  echo $field_1_image->src; ?>" width="<?php  echo $field_1_image->width; ?>" height="<?php  echo $field_1_image->height; ?>" alt="" />
<?php  endif; ?>

<?php  if (!empty($field_2_textbox_text)): ?>
	<?php  echo htmlentities($field_2_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
<?php  endif; ?>


