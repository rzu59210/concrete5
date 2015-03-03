<?php  defined('C5_EXECUTE') or die("Access Denied.");
$al = Loader::helper('concrete/asset_library');
?>

<style type="text/css" media="screen">
	.ccm-block-field-group h2 { margin-bottom: 5px; }
	.ccm-block-field-group td { vertical-align: middle; }
</style>

<div class="ccm-block-field-group">
	<h2>vignette</h2>
	<?php  echo $al->image('field_1_image_fID', 'field_1_image_fID', 'Choisir une image', $field_1_image); ?>
</div>

<div class="ccm-block-field-group">
	<h2>text news</h2>
	<?php  echo $form->text('field_2_textbox_text', $field_2_textbox_text, array('style' => 'width: 95%;')); ?>
</div>


