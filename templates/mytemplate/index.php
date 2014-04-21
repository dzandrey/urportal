<?php
defined( '_JEXEC' ) or die( 'Restricted access' );
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="<?php echo $this->baseurl ?>/templates/mytemplate/js/vendor/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/mytemplate/js/main.js"></script>
<jdoc:include type="head" />

<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/system.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/general.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/mytemplate/css/normalize.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/mytemplate/css/main.css" type="text/css" />


<!--[if lt IE 9]>
   <script>
      document.createElement('header');
      document.createElement('nav');
      document.createElement('section');
      document.createElement('article');
      document.createElement('aside');
      document.createElement('footer');
   </script>
    <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/mytemplate/css/ie.css" type="text/css" />
<![endif]-->

<link rel="stylesheet" type="text/css" href="<?php echo $this->baseurl ?>/templates/mytemplate/js/highslide/highslide.css" />


<!--******************************************************-->
<!--<script src="<?php //echo $this->baseurl ?>/templates/mytemplate/js/jquery.colorbox.js"></script>
<link rel="stylesheet" href="<?php //echo $this->baseurl ?>/templates/mytemplate/css/colorbox/colorbox.css" type="text/css" />-->
<!--<script type="text/javascript">
$(document).ready(function(){
    jQuery('.colorbox').on('click', function(e){
        e.preventDefault();
        jQuery.colorbox({'href': $(this).attr('href')})
    })
})
</script>-->

</head>

<body>
<header>
	<div class="logo_wrap">
		<a href="/" class="logo">logo</a>
	</div>
	<nav>
		<jdoc:include type="modules" name="mainmenu" style="xhtml" />
	</nav>
</header>
<section class="slideshow">
	 <jdoc:include type="modules" name="slide" />
</section>
<section class="content">
	<?php if($this->countModules('breadcrumb')) : ?>
			  <jdoc:include type="modules" name="breadcrumb" />
			<?php endif; ?>
	<div class="inner-wrap">
	   
		<?php if($this->countModules('left')) : ?>
		   <aside>
			   <div class="aside_left">
				   <jdoc:include type="modules" name="left" style="xhtml" />
			   </div>
		   </aside>
		<?php endif; ?>
	   <section class="main">
			 <?php if ($this->getBuffer('message')) : ?>
				   <div class="message"><jdoc:include type="message" /></div>
		   <?php endif; ?>
		   <jdoc:include type="component" />
	   </section>
	</div>
</section>
<footer>
	<div class="wrap"><jdoc:include type="modules" name="footer" /></div>
</footer>
</body>
</html>
