<?php echo $header; ?>
<div class="container">
  <div class="row">
			<?php if(isset($megamenu_setting['menu_open_hpage']) && ($megamenu_setting['menu_open_hpage']=='1') && ($megamenu_setting['main_menu_selection'] =='1')) { ?>
				<div class="col-md-3"><div id="menu-header-open"></div></div>
				<script type="text/javascript">
				if(window.matchMedia("(min-width: 992px)").matches){
					$('#menu-vertical-list').addClass("nsmenu-block");
				}
				$(window).resize(function() {
					if ($(window).width() > 992) {
						$('#menu-vertical-list').addClass("nsmenu-block");
					} else {
						$('#menu-vertical-list').removeClass("nsmenu-block");
					}
				});
				$(function(){$('#menu-header-open').css({'min-height': $('#menu-vertical-list').outerHeight() - 20});});</script>
				<div class="col-md-9"><?php echo $content_top; ?></div>
			<?php } else { ?>
				<div class="col-md-12"><?php echo $content_top; ?></div>
			<?php } ?>
			</div>
			<div class="row">
			<?php echo $column_left; ?>
			
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
<?php if($content_bottom){?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_bottom; ?></div>
<?php } ?>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>