<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title;  ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">

<link href="catalog/view/theme/default/stylesheet/assets/css/style.css" rel="stylesheet">

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>"> 
<nav id="top">
  <div class="container">
    <div class="row">
        <div class="col-md-7">
            <ul class="header-list-left"> 
                <li><img src="catalog/view/theme/default/stylesheet/assets/img/hend.png" alt="">Приятное соотношение <br> цены и качества</li>
                <li><img src="catalog/view/theme/default/stylesheet/assets/img/machine.png" alt="">Бесплатная доставка <br> заказов от 3 тыс. руб.</li>
                <li><img src="catalog/view/theme/default/stylesheet/assets/img/credit_cart.png" alt="">Оплата при <br> получении</li>
            </ul>
        </div>
        <div class="col-md-5 text-right">
            <ul class="header-list-right">
                <li><img src="catalog/view/theme/default/stylesheet/assets/img/register.png" alt=""><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                <li><img src="catalog/view/theme/default/stylesheet/assets/img/login.png" alt=""><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>

            </ul>
            <?php echo $cart; ?>
        </div>
    </div>
    
    
    
  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <div id="logo">  
          <img src="catalog/view/theme/default/stylesheet/assets/img/logo.png" alt="" class="img-responsive">
          <p>фирменный магазин аккумуляторов DELTA</p>
        </div>
      </div>
      <div class="col-md-6 text-right">
				<span class="tel">+7 (343) 361-00-00</span>
				<p class="header-address">пн-пт 9.00-18.00 сб. 10.00-16.00 вс. выходной<br>г. Екатеринбург, ул. Машинная, д.42а, оф. 504</p>
			</div>
    </div>
  </div>
</header>
<section id="menu" class="text-center">   

<div class="container">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse" id=bs-example-navbar-collapse-1>
   
     <ul id="menu" class="nav nav-tabs text-center nav-center menu-ul">
   
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled sub-menu">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><span><?php echo $child['name']; ?></span></a></li>
                <?php } ?>
      
              </ul>
              <?php } ?>
            </div>
            <!-- <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div> -->
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
             <li><a href="/">Главная</a></li>
        <?php } ?>
    
        <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
       <?php } ?>
    
      </ul>

    </div>

</div>

 
</section>



