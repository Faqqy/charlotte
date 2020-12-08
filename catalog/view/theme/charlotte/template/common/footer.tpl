<footer>
  <div class="container">
    <div class="row">
      <div class="col-sm-2">

        <ul class="list-unstyled foot__list">

          <li><a href="/">Главная</a></li>
          <li><a href="/all-skincare">Уход за кожей</a></li>
          <li><a href="/makeup">Макияж</a></li>
          <li><a href="/lidery-prodazh">Лидеры продаж</a></li>
          <li><a href="/about">О магазине</a></li>
          <li><a href="/shipping-returns">Доставка и оплата</a></li>

        </ul>
      </div>

      <div class="col-sm-4">
        <ul class="list-unstyled foot__list-add__adres">
          <li><span style="text-decoration: underline;">Режим работы:</span> <br>
            ПН-ПТ с 09-00 до 22-00<br>
            СБ с 10:00 до 21:00<br>
            ВС с 10:00 до 21:00<br>
          </li>
        </ul>
        <ul class="list-unstyled foot__list-add">
          <li><span style="text-decoration: underline;">Наш адрес:</span> <br> Россия, г. Москва,
            улица Верхние Поля, <br>
            дом 51А троение 4 </li>
        </ul>
        <li class="soc_info">
          <a href="https://www.facebook.com/ZoevaCosmetics"><picture><img src="catalog/view/theme/charlotte/image/social/fb.jpg" alt="facebook"></picture> </a>
          <a href="https://www.youtube.com/user/ZoevaCosmetics"><picture><img src="catalog/view/theme/charlotte/image/social/yout.jpg" alt="youtube"></picture></a>
          <a href="https://www.instagram.com/ctilburymakeup/"><picture><img src="catalog/view/theme/charlotte/image/social/inst.jpg" alt="instagram"></picture></a>
        </li>
      </div>
      <div class="col-sm-6">
        <div class="about__us">
          <ul class="list-unstyled">
            <li><span>Служба поддержки:</span> <br> </li>
            <li><a style="text-decoration: underline;" href="mailto:info@charlottetilbury.ru.com">info@charlottetilbury.ru.com</a></li>
          </ul>
          <ul class="list-unstyled">
            <div class="subscribe-box" style="margin-bottom: 20px;">
              <h3 class="subscribe-title">Будьте в курсе всех акций и скидок магазина *</h3>
              <div class="subscribe-form">
                <form class="form-inline" action="" method="post">
                  <div class="form-group required">
                    <label class="sr-only" for="exampleInputAmount">Email:</label>
                    <input class="subcribe__email" type="email" class="form-control" name="txtemail" id="txtemail" placeholder="Укажите ваш Email">
                    <button type="submit" class="button_subscribe" onclick="return subscribe();">Подписаться сейчас</button>
                  </div>
                </form>
              </div>
            </div>
          </ul>
        </div>
      </div>

  </div>
    <div class="row">
      <div class="col-sm-12">
        <p class="bottom__info">Интернет-магазин Charlotte Tilbury является сертифицированным дистрибьютором косметики в России. Все изделия оригинальные, произведены в Великобритании. косметические товары Charlotte Tilbury отличаются высоким качеством, гипоаллергенностью и стойкостью. Вы можете легко купить косметику Charlotte Tilbury в нашем официальном магазине косметики. Гарантирующий оригинальность полученных вами товаров. ОСТЕРЕГАЙТЕСЬ НЕДОБРОСОВЕСТНЫХ ПРОДАВЦОВ, ТОРГУЮЩИХ КОПИЯМИ БРЕНДА.</p>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-12">
        <p>Charlotte Tilbury Russia. Все права защищены ©</p> <!--<a href="/">Политика конфиденциальности</a>-->
      </div>
    </div>
</footer>

<script>
  function subscribe()
  {
    var emailpattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    var email = $('#txtemail').val();
    if(email != "")
    {
      if(!emailpattern.test(email))
      {
        alert("Неправильный Email");
        return false;
      }
      else
      {
        $.ajax({
          url: 'index.php?route=module/newsletters/news',
          type: 'post',
          data: 'email=' + $('#txtemail').val(),
          dataType: 'json',


          success: function(json) {

            alert(json.message);

          }

        });
        return false;
      }
    }
    else
    {
      alert("Email обязательно");
      $(email).focus();
      return false;
    }


  }
</script>

</body>
</html>