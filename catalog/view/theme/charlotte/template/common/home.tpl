<?php echo $header; ?>
<div class="container-fluid">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>

<div class="top__banner-two">
  <div class="container">
    <div class="col-md-5 col-sm-5 col-sm-hidden">
    </div>
    <div class="col-md-7 col-sm-7 col-md-offset-6 col-sm-12">
      <p>
        Почувствуйте себя суперзвездой с нашумевшим <br> оттенком теней для век QUEEN OF GLOW!
      </p>
      <a class="button-pink" href="#">Купить сейчас</a>
    </div>
  </div>
</div>

<div class="top__item-block">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div style="background-image: url(/catalog/view/theme/charlotte/image/topItems/itemtop5.png)" class="item"><a href="#">Тени и карандаши</a></div>
        <div style="background-image: url(/catalog/view/theme/charlotte/image/topItems/itemtop6.png)" class="item"><a href="#">Румяна и хайлатеры</a></div>
        <div style="background-image: url(/catalog/view/theme/charlotte/image/topItems/itemtop7.png)" class="item"><a href="#">Помады и блеск для губ</a></div>
        <div style="background-image: url(/catalog/view/theme/charlotte/image/topItems/itemtop8.png)" class="item"><a href="#">Макияж лица</a></div>
      </div>
    </div>
  </div>
</div>

<div class="two__banner-info">
  <div class="container" style="padding-left: 0;">
    <div class="col-md-6 col-xs-12">
      <div style="background-image: url(/catalog/view/theme/charlotte/image/infobanner3.jpg)" class="item">
        <a href="#">
          <h2>LIGHTWEIGHT MOISTURISER</h2>
          <p>Увлажняющий крем с SPF 20 с запатентованными ингредиентами, стимулирующими молодость и гидратацию, которые подтягивают и преображают внешний вид уставшей кожи.</p>
        </a>
        <a class="button" href="#">КУПИТЬ СЕЙЧАС</a>
      </div>
    </div>
    <div class="col-md-6 col-xs-12">
      <div style="background-image: url(/catalog/view/theme/charlotte/image/infobanner4.jpg)" class="item">
        <a href="#">
          <h2>CHARLOTTE'S MAGIC CREAM</h2>
          <p> Cекретная формула этого крема позволит моментально, как по мановению волшебной палочки, освежить и преобразить Вашу кожу, а также обеспечить ей необходимое увлажнение.</p>
        </a>
        <a class="button" href="#">КУПИТЬ СЕЙЧАС</a>
      </div>
    </div>
  </div>
</div>



<?php echo $footer; ?>