import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_single_new.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/models/list_news_model.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

const String nextUrl = "https://www.eldigitaldealbacete.com/economia-2/page/2/";
final ListNewsModel expectedListNewsModel = ListNewsModel(listNews: <ListSingleNew>[
  ListSingleNew(
      imageSrc:
      "https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/consejo-gobierno-castilla-la-mancha-paracetamol-620x330.jpg",
      link:
      "https://www.eldigitaldealbacete.com/2020/03/20/entran-en-vigor-las-medidas-extraordinarias-economico-financieras-y-de-refuerzo-de-medios-de-la-junta546825/",
      publishDate: "20 marzo, 2020",
      title: "Entran en vigor las medidas extraordinarias económico-financieras y de refuerzo de medios de la Junta"),
  ListSingleNew(
      imageSrc: "https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/12/SUPERALBA_NOTICIA_ALBACETE-23-1-620x330.jpg",
      link: "https://www.eldigitaldealbacete.com/2020/03/19/el-gasto-en-alimentacion-se-impulsa-un-12-por-el-efecto-bunker-provocado-por-el-coronavirus/",
      publishDate: "19 marzo, 2020",
      title: "El gasto en alimentación se impulsa un 12% por el ‘efecto búnker’ provocado por el coronavirus"),
]);
final dom.Document sampleListNewsDocument = parser.parse(_html);
const String _html = '''<!DOCTYPE html>
<html lang="es" prefix="og: http://ogp.me/ns#">
<head><script>window.w3tc_lazyload=1,window.lazyLoadOptions={elements_selector:".lazy",callback_loaded:function(t){var e;try{e=new CustomEvent("w3tc_lazyload_loaded",{detail:{e:t}})}catch(a){(e=document.createEvent("CustomEvent")).initCustomEvent("w3tc_lazyload_loaded",!1,!1,{e:t})}window.dispatchEvent(e)}}</script><style>img.lazy{min-height:1px}</style><script async src="https://www.eldigitaldealbacete.com/wp-content/plugins/w3-total-cache/pub/js/lazyload.min.js"></script>
<meta charset="UTF-8" />
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="pingback" href="https://www.eldigitaldealbacete.com/xmlrpc.php" />
<title>Economía - El Digital de Albacete</title>

<!-- Ads on this site are served by WP PRO Advertising System - All In One Ad Manager v5.3.0 - wordpress-advertising.tunasite.com -->
<!-- / WP PRO Advertising System - All In One Ad Manager. -->


<!-- This site is optimized with the Yoast SEO Premium plugin v13.3 - https://yoast.com/wordpress/plugins/seo/ -->
<meta name="robots" content="max-snippet:-1, max-image-preview:large, max-video-preview:-1"/>
<link rel="canonical" href="https://www.eldigitaldealbacete.com/economia-2/" />
<link rel="next" href="https://www.eldigitaldealbacete.com/economia-2/page/2/" />
<meta property="og:locale" content="es_ES" />
<meta property="og:type" content="object" />
<meta property="og:title" content="Economía - El Digital de Albacete" />
<meta property="og:url" content="https://www.eldigitaldealbacete.com/economia-2/" />
<meta property="og:site_name" content="El Digital de Albacete" />
<!-- / Yoast SEO Premium plugin. -->

<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel='dns-prefetch' href='//s.w.org' />
<link rel="alternate" type="application/rss+xml" title="El Digital de Albacete &raquo; Feed" href="https://www.eldigitaldealbacete.com/feed/" />
<link rel="alternate" type="application/rss+xml" title="El Digital de Albacete &raquo; Feed de los comentarios" href="https://www.eldigitaldealbacete.com/comments/feed/" />
<link rel="alternate" type="application/rss+xml" title="El Digital de Albacete &raquo; Categoría Economía del feed" href="https://www.eldigitaldealbacete.com/economia-2/feed/" />
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/12.0.0-1\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/12.0.0-1\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/www.eldigitaldealbacete.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=5.3.2"}};
			!function(e,a,t){var r,n,o,i,p=a.createElement("canvas"),s=p.getContext&&p.getContext("2d");function c(e,t){var a=String.fromCharCode;s.clearRect(0,0,p.width,p.height),s.fillText(a.apply(this,e),0,0);var r=p.toDataURL();return s.clearRect(0,0,p.width,p.height),s.fillText(a.apply(this,t),0,0),r===p.toDataURL()}function l(e){if(!s||!s.fillText)return!1;switch(s.textBaseline="top",s.font="600 32px Arial",e){case"flag":return!c([127987,65039,8205,9895,65039],[127987,65039,8203,9895,65039])&&(!c([55356,56826,55356,56819],[55356,56826,8203,55356,56819])&&!c([55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447],[55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447]));case"emoji":return!c([55357,56424,55356,57342,8205,55358,56605,8205,55357,56424,55356,57340],[55357,56424,55356,57342,8203,55358,56605,8203,55357,56424,55356,57340])}return!1}function d(e){var t=a.createElement("script");t.src=e,t.defer=t.type="text/javascript",a.getElementsByTagName("head")[0].appendChild(t)}for(i=Array("flag","emoji"),t.supports={everything:!0,everythingExceptFlag:!0},o=0;o<i.length;o++)t.supports[i[o]]=l(i[o]),t.supports.everything=t.supports.everything&&t.supports[i[o]],"flag"!==i[o]&&(t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&t.supports[i[o]]);t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&!t.supports.flag,t.DOMReady=!1,t.readyCallback=function(){t.DOMReady=!0},t.supports.everything||(n=function(){t.readyCallback()},a.addEventListener?(a.addEventListener("DOMContentLoaded",n,!1),e.addEventListener("load",n,!1)):(e.attachEvent("onload",n),a.attachEvent("onreadystatechange",function(){"complete"===a.readyState&&t.readyCallback()})),(r=t.source||{}).concatemoji?d(r.concatemoji):r.wpemoji&&r.twemoji&&(d(r.twemoji),d(r.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
		<style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
	<link rel='stylesheet' id='wp-block-library-css'  href='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-includes/css/dist/block-library/style.min.css?ver=5.3.2' type='text/css' media='all' />
<link rel='stylesheet' id='ads-for-wp-front-css-css'  href='https://www.eldigitaldealbacete.com/wp-content/plugins/ads-for-wp/public/assets/css/adsforwp-front.min.css?ver=1.9.15.3' type='text/css' media='all' />
<link rel='stylesheet' id='cptch_stylesheet-css'  href='https://www.eldigitaldealbacete.com/wp-content/plugins/captcha/css/front_end_style.css?ver=4.4.5' type='text/css' media='all' />
<link rel='stylesheet' id='dashicons-css'  href='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-includes/css/dashicons.min.css?ver=5.3.2' type='text/css' media='all' />
<link rel='stylesheet' id='cptch_desktop_style-css'  href='https://www.eldigitaldealbacete.com/wp-content/plugins/captcha/css/desktop_style.css?ver=4.4.5' type='text/css' media='all' />
<link rel='stylesheet' id='WPPAS_VBC_BNR_STYLE-css'  href='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/public/assets/css/vbc/wppas_vbc_bnr.css?ver=5.3.0' type='text/css' media='all' />
<link rel='stylesheet' id='Oswald-css'  href='https://fonts.googleapis.com/css?family=Oswald%3Aregular%2C700&#038;ver=5.3.2' type='text/css' media='all' />
<link rel='stylesheet' id='slb_core-css'  href='https://www.eldigitaldealbacete.com/wp-content/plugins/simple-lightbox/client/css/app.css?ver=2.8.1' type='text/css' media='all' />
<link rel='stylesheet' id='parent-style-css'  href='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/themes/jarida-child/../jarida/style.css?ver=1.0.5' type='text/css' media='all' />
<link rel='stylesheet' id='child-style-css'  href='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/themes/jarida-child/style.css?ver=1.0.5' type='text/css' media='all' />
<link rel='stylesheet' id='child-main-style-css'  href='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/themes/jarida-child/css/main.css?ver=1580472526' type='text/css' media='all' />
<script type='text/javascript' src='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-includes/js/jquery/jquery.js?ver=1.12.4-wp'></script>
<script type='text/javascript' src='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
<script type='text/javascript' src='https://www.eldigitaldealbacete.com/wp-content/plugins/float-left-right-advertising/floatads.js?ver=5.3.2'></script>
<script type='text/javascript' src='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-includes/js/plupload/moxie.min.js?ver=1.3.5'></script>
<script type='text/javascript' src='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-includes/js/plupload/plupload.min.js?ver=2.1.9'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var pluploadL10n = {"queue_limit_exceeded":"Has intentado poner en cola demasiados archivos.","file_exceeds_size_limit":"El tama\u00f1o del archivo %s excede el tama\u00f1o permitido en este sitio.","zero_byte_file":"Este archivo est\u00e1 vac\u00edo. Por favor, prueba con otro.","invalid_filetype":"Lo siento, este tipo de archivo no est\u00e1 permitido por motivos de seguridad.","not_an_image":"Este archivo no es una imagen. Por favor, prueba con otro.","image_memory_exceeded":"Memoria excedida. Por favor, prueba con otro archivo m\u00e1s peque\u00f1o.","image_dimensions_exceeded":"Supera el tama\u00f1o permitido. Por favor, prueba con otro.","default_error":"Ha habido un error en la subida. Por favor, int\u00e9ntalo m\u00e1s tarde.","missing_upload_url":"Ha habido un error de configuraci\u00f3n. Por favor, contacta con el  administrador del servidor.","upload_limit_exceeded":"Solo puedes subir 1 archivo.","http_error":"Respuesta inesperada del servidor. El archivo puede haber sido subido correctamente. Comprueba la biblioteca de medios o recarga la p\u00e1gina.","http_error_image":"Ha fallado el posproceso de la imagen. Si es una foto o una imagen grande, por favor, red\u00facela a 2.500 p\u00edxeles y vuelve a subirla de nuevo.","upload_failed":"Subida fallida.","big_upload_failed":"Por favor, intenta subir este archivo a trav\u00e9s del %1\$snavegador%2\$s.","big_upload_queued":"%s excede el tama\u00f1o m\u00e1ximo de subida del cargador de m\u00faltiples archivos del navegador.","io_error":"Error de entrada\/salida.","security_error":"Error de seguridad.","file_cancelled":"Archivo cancelado.","upload_stopped":"Subida detenida.","dismiss":"Descartar","crunching":"Calculando\u2026","deleted":"movidos a la papelera.","error_uploading":"Ha habido un error al subir \u00ab%s\u00bb"};
/* ]]> */
</script>
<script type='text/javascript' src='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-includes/js/plupload/handlers.min.js?ver=5.3.2'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wppas_vbc_upload = {"ajaxurl":"https:\/\/www.eldigitaldealbacete.com\/wp-admin\/admin-ajax.php","nonce":"8a342e9403","remove":"25144551f8","number":"1","upload_enabled":"1","confirmMsg":"Are you sure you want to delete this?","plupload":{"runtimes":"html5,flash,html4","browse_button":"wppas-vbc-uploader","container":"wppas-vbc-upload-container","file_data_name":"wppas_vbc_upload_file","max_file_size":"100000000b","url":"https:\/\/www.eldigitaldealbacete.com\/wp-admin\/admin-ajax.php?action=wppas_vbc_upload&nonce=392b22a0c0","flash_swf_url":"https:\/\/www.eldigitaldealbacete.com\/wp-includes\/js\/plupload\/plupload.flash.swf","filters":[{"title":"Archivos permitidos","extensions":"jpg,gif,png"}],"multipart":true,"urlstream_upload":true,"multipart_params":{"upload_folder":""}}};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/public/assets/js/vbc/AjaxUpload.js?ver=5.3.2'></script>
<script type='text/javascript' src='https://www.eldigitaldealbacete.com/wp-content/plugins/whatsapp-button-es/js/whatsapp-button.js?ver=5.3.2'></script>
<script type='text/javascript' src='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/templates/js/advertising.js?ver=5.3.2'></script>
<link rel='https://api.w.org/' href='https://www.eldigitaldealbacete.com/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://www.eldigitaldealbacete.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 5.3.2" />
        <script type="text/javascript">              
              jQuery(document).ready( function(\$) {    
                  if (\$('#adsforwp-hidden-block').length == 0 ) {
                       \$.getScript("https://www.eldigitaldealbacete.com/front.js");
                  }
              });
         </script>
       <link rel="shortcut icon" href="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2014/10/favicon-2.jpg" title="Favicon" /><!--[if IE]>
<script type="text/javascript">jQuery(document).ready(function (){ jQuery(".menu-item").has("ul").children("a").attr("aria-haspopup", "true");});</script>
<![endif]-->
<!--[if lt IE 9]>
<script src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/themes/jarida/js/html5.js"></script>
<script src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/themes/jarida/js/selectivizr-min.js"></script>
<![endif]-->
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" media="all" href="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/themes/jarida/css/ie8.css" />
<![endif]-->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<style type="text/css" media="screen">

body {
 background-image : url(https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/themes/jarida/images/patterns/body-bg1.png);background-position: top center;
}
	
body.single .entry, body.page .entry{
	font-size : 18px !important;
}
	#main-nav ul li.current-menu-item a,
	#main-nav ul li.current-menu-item a:hover,
	#main-nav ul li.current-menu-parent a,
	#main-nav ul li.current-menu-parent a:hover,
	#main-nav ul li.current-page-ancestor a,
	#main-nav ul li.current-page-ancestor a:hover,
	.pagination span.current,
	.ei-slider-thumbs li.ei-slider-element,
	.breaking-news span,
	.ei-title h2,h2.cat-box-title,
	a.more-link,.scroll-nav a,
	.flex-direction-nav a,
	.tagcloud a:hover,
	#tabbed-widget ul.tabs li.active a,
	.slider-caption h2, .full-width .content .slider-caption h2,
	.review-percentage .review-item span span,.review-final-score,
	.woocommerce span.onsale, .woocommerce-page span.onsale ,
	.woocommerce .widget_price_filter .ui-slider .ui-slider-handle, .woocommerce-page .widget_price_filter .ui-slider .ui-slider-handle,
	.button,a.button,#main-content input[type="submit"],#main-content input[type="submit"]:focus, span.onsale,
	.mejs-container .mejs-controls .mejs-time-rail .mejs-time-current,
	#reading-position-indicator {
		background-color:#6eba30 !important;
	}
	::-webkit-scrollbar-thumb{background-color:#6eba30 !important;}
	#main-nav,.top-nav {border-bottom-color: #6eba30;}
	.cat-box , .footer-bottom .container{border-top-color: #6eba30;}
a:hover {
	color: #6eba30;	}
::-moz-selection { background: #6eba30;}
::selection { background: #6eba30; }



</style>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-41044974-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-41044974-1');
  var GA_MEASUREMENT_ID='UA-41044974-1';
</script>


<meta name="referrer" content="unsafe-url" />
<style>
div[class^="modal_link"] > a{
    margin-left: 8px;
}
div[class^="description_message"] {
    margin-top: 40px;
}
div[class^="description_message"] > div[class^="description_info"] {
   line-height: 21px !important;
} 
</style>


<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','https://connect.facebook.net/en_US/fbevents.js');

fbq('init', '756820097755888');
fbq('track', "PageView");</script>
<noscript><img class="lazy" height="1" width="1" style="display:none"
src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://www.facebook.com/tr?id=756820097755888&ev=PageView&noscript=1"
/></noscript>
<script data-ad-client="ca-pub-2207770142965283" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>




<!-- Schema & Structured Data For WP v1.9.28 - -->
<script type="application/ld+json" class="saswp-schema-markup-output">
[{"@context":"https:\/\/schema.org","@type":"WebSite","@id":"https:\/\/www.eldigitaldealbacete.com#website","headline":"El Digital de Albacete","name":"El Digital de Albacete","description":"Peri\u00f3dico de Noticias de Albacete","url":"https:\/\/www.eldigitaldealbacete.com"},

{"@context":"https:\/\/schema.org","@type":"BreadcrumbList","@id":"https:\/\/www.eldigitaldealbacete.com\/ultima-hora\/#breadcrumb","itemListElement":[{"@type":"ListItem","position":1,"item":{"@id":"https:\/\/www.eldigitaldealbacete.com","name":"El Digital de Albacete"}},{"@type":"ListItem","position":2,"item":{"@id":"https:\/\/www.eldigitaldealbacete.com\/noticias-albacete\/","name":"Albacete"}},{"@type":"ListItem","position":3,"item":{"@id":"https:\/\/www.eldigitaldealbacete.com\/economia-2\/","name":"Econom\u00eda"}},{"@type":"ListItem","position":4,"item":{"@id":"https:\/\/www.eldigitaldealbacete.com\/portada\/","name":"Portada"}},{"@type":"ListItem","position":5,"item":{"@id":"https:\/\/www.eldigitaldealbacete.com\/ultima-hora\/","name":"ultima hora"}}]},

{"@context":"https:\/\/schema.org","@type":"NewsMediaOrganization","@id":"https:\/\/www.eldigitaldealbacete.com#Organization","name":"El Digital de Albacete","url":"https:\/\/www.eldigitaldealbacete.com","sameAs":["https:\/\/www.facebook.com\/ElDigitalDeAlbacete","https:\/\/twitter.com\/ElDigitalAB","https:\/\/www.youtube.com\/user\/ElDigitaldeAlbacete","https:\/\/www.instagram.com\/eldigitaldealbacete\/"],"logo":{"@type":"ImageObject","url":"https:\/\/www.eldigitaldealbacete.com\/wp-content\/uploads\/2020\/02\/logo-cuadrado-el-digital-de-albacete.jpg","width":"560","height":"560"},"contactPoint":{"@type":"ContactPoint","contactType":"customer support","telephone":"+34967257420","url":"https:\/\/www.eldigitaldealbacete.com\/contacto\/"}}]
</script>

<link rel="icon" href="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/cropped-12118986_711214355646438_7712997827358759636_n-32x32.png" sizes="32x32" />
<link rel="icon" href="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/cropped-12118986_711214355646438_7712997827358759636_n-192x192.png" sizes="192x192" />
<link rel="apple-touch-icon-precomposed" href="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/cropped-12118986_711214355646438_7712997827358759636_n-180x180.png" />
<meta name="msapplication-TileImage" content="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/cropped-12118986_711214355646438_7712997827358759636_n-270x270.png" />
</head>
<body id="top" class="archive category category-economia-2 category-1018">
	<div class="background-cover"></div>
	<div class="wrapper">
				<div class="top-nav fade-in animated1 ">
			<div class="container">
				<div class="search-block">
					<form method="get" id="searchform" action="https://www.eldigitaldealbacete.com/">
						<button class="search-button" type="submit" value="Buscar"></button>
						<input type="text" id="s" name="s" value="Buscar..." onfocus="if (this.value == 'Buscar...') {this.value = '';}" onblur="if (this.value == '') {this.value = 'Buscar...';}"  />
					</form>
				</div><!-- .search-block /-->
						<div class="social-icons icon_flat">
		<a class="tooldown" title="Rss" href="https://www.eldigitaldealbacete.com/feed/" target="_blank"><i class="tieicon-rss"></i></a><a class="tooldown" title="Facebook" href="https://www.facebook.com/ElDigitalDeAlbacete" target="_blank"><i class="tieicon-facebook"></i></a><a class="tooldown" title="Twitter" href="https://twitter.com/ElDigitalAB" target="_blank"><i class="tieicon-twitter"></i></a><a class="tooldown" title="Youtube" href="https://www.youtube.com/user/ElDigitaldeAlbacete" target="_blank"><i class="tieicon-youtube"></i></a><a class="tooldown" title="instagram" href="https://www.instagram.com/eldigitaldealbacete/" target="_blank"><i class="tieicon-instagram"></i></a>	</div>


								
			</div>
		</div><!-- .top-menu /-->
		
		<div class="container">
		<header id="theme-header">
		<div class="header-content fade-in animated1">
			<div class="logo">
			<h2>								<a title="El Digital de Albacete" href="https://www.eldigitaldealbacete.com/">
					<img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2017/08/logo-el-digital-de-albacete-cabecera-2-4.jpg" alt="El Digital de Albacete" /><strong>El Digital de Albacete Periódico de Noticias de Albacete</strong>
				</a>
			</h2>			</div><!-- .logo /-->
			<div class="e3lan-top">					<div  class="paszone_container paszone-container-536108   " id="paszonecont_536108" style="overflow:hidden; max-width:px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-536108 " id="536108" style="overflow:hidden; max-width:px; max-height:px;  "><div class="wppasrotate   paszoneholder-536108" style="" ><div class="pasli pasli-536111 "  data-duration="5000" bid="536111" aid="536108"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NTM2MTEx&amp;pasZONE=NTM2MTA4" target="_blank" ><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/porellos_eldigitaldecr_1200x250.jpg?pas=2390225282003201744" alt="GLOBALCAJA TOP" border="0"  /></a></div></div></div></div>
<a href="https://www.eldigitaldealbacete.com/2020/03/13/coronavirus-declaracion-institucional-del-alcalde-de-albacete-tras-la-proclamacion-del-estado-de-alarma-por-parte-del-gobierno/"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201200%20250'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Medidas-1200.gif" border=0 width=1200 height=250></a>
				</div>			<div class="clear"></div>
		</div>
									<nav id="main-nav" class="fade-in animated2">
				<div class="container">
				<div class="main-menu"><ul id="menu-menu-principal" class="menu"><li id="menu-item-14" class="menu-item  menu-item-type-custom  menu-item-object-custom  menu-item-home"><a href="https://www.eldigitaldealbacete.com">Portada</a></li>
<li id="menu-item-106942" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/noticias-albacete/">Albacete</a></li>
<li id="menu-item-12" class="menu-item  menu-item-type-taxonomy  menu-item-object-category  menu-item-has-children"><a href="https://www.eldigitaldealbacete.com/noticias-provincia-albacete/">Provincia</a>
<ul class="sub-menu">
	<li id="menu-item-52335" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/noticias-almansa/">Almansa</a></li>
	<li id="menu-item-52336" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/noticias-hellin/">Hellín</a></li>
	<li id="menu-item-52337" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/noticias-villarrobledo/">Villarrobledo</a></li>
	<li id="menu-item-52448" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/noticias-laroda/">La Roda</a></li>
	<li id="menu-item-52338" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/noticias-resto-provincia-albacete/">Resto provincia</a></li>
</ul> <!--End Sub Menu -->
</li>
<li id="menu-item-10" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/castilla-la-mancha/">Castilla-La Mancha</a></li>
<li id="menu-item-8" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/noticias-albacete-balompie/">Albacete Balompié</a></li>
<li id="menu-item-11" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/noticias-deporte-albacete/">Deportes</a></li>
<li id="menu-item-44781" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/noticias-agricultura-casltilla-la-macha-albacete/">Agricultura</a></li>
<li id="menu-item-48993" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/justicia-2/">Justicia</a></li>
<li id="menu-item-47908" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/noticias-sanidad-albacete/">Sanidad y Salud</a></li>
<li id="menu-item-47913" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/noticias-educacion-albacete/">Educación</a></li>
<li id="menu-item-48992" class="menu-item  menu-item-type-taxonomy  menu-item-object-category  current-menu-item"><a href="https://www.eldigitaldealbacete.com/economia-2/">Economía</a></li>
<li id="menu-item-55604" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/noticias-cultura-albacete/">Cultura</a></li>
<li id="menu-item-45511" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/noticias-toros-albacete/">Toros</a></li>
<li id="menu-item-155438" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/videos/">Vídeos</a></li>
<li id="menu-item-191521" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/modesto-colorado/">Modesto Colorado</a></li>
<li id="menu-item-514954" class="menu-item  menu-item-type-post_type  menu-item-object-page"><a href="https://www.eldigitaldealbacete.com/liga-globalcaja-benjamin-futbol-8/">Liga Globalcaja Benjamín Fútbol 8</a></li>
<li id="menu-item-531912" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/circuito-baloncesto-benjamin-globalcaja-2020/">Circuito Baloncesto Benjamín Globalcaja 2020</a></li>
<li id="menu-item-118646" class="menu-item  menu-item-type-post_type  menu-item-object-page"><a href="https://www.eldigitaldealbacete.com/recibe-nuestro-boletin-diario/">Recibe gratis nuestro boletín diario</a></li>
<li id="menu-item-134431" class="menu-item  menu-item-type-post_type  menu-item-object-page"><a href="https://www.eldigitaldealbacete.com/buzon-ciudadano/">Buzón Ciudadano</a></li>
<li id="menu-item-208" class="menu-item  menu-item-type-post_type  menu-item-object-page"><a href="https://www.eldigitaldealbacete.com/contacto/">Contacto</a></li>
</ul></div>				</div>
			</nav><!-- .main-nav /-->
		</header><!-- #header /-->

	<div id="main-content" class="container fade-in animated3">
<center><div id="text-370" class="widget widget_text"> </h2>
			<div class="textwidget"><div  class="paszone_container paszone-container-542827   " id="paszonecont_542827" style="overflow:hidden;    " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-542827 " id="542827" style="overflow:hidden;  width:100%; height:auto; display:inline-block;   "><div class="wppasrotate   paszoneholder-542827" style="" ><div class="pasli pasli-542828 "  data-duration="5000" bid="542828" aid="542827"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NTQyODI4&amp;pasZONE=NTQyODI3" target="_blank" rel="noopener noreferrer"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/BANNER-DIGITAL-MINI-3-puertas.DEF_.gif?pas=13139513042003201744" alt="ALBAMOCION" border="0"  /></a></div></div></div></div>


<a href="https://sanidad.castillalamancha.es/ciudadanos/enfermedades-infecciosas/coronavirus"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/coronavirus-clm-Síntomas-980x90-1.gif" /></a>
<a href="https://sanidad.castillalamancha.es/ciudadanos/enfermedades-infecciosas/coronavirus"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/coronavirus-clm-Recomendaciones-980x90-1.gif" /></a></div>
		</div></center><!-- .widget /--><div class="content-wrap">
	<div class="content">
					<div class="page-head">
			<h1 class="page-title">
				Economía			</h1>
						<a class="rss-cat-icon ttip" title="Suscripción al Feed" href="https://www.eldigitaldealbacete.com/economia-2/feed/"></a>
						<div class="stripe-line"></div>

					</div>
				<div class="post-listing ">
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/entran-en-vigor-las-medidas-extraordinarias-economico-financieras-y-de-refuerzo-de-medios-de-la-junta546825/" title="Enlace permanente a Entran en vigor las medidas extraordinarias económico-financieras y de refuerzo de medios de la Junta" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/consejo-gobierno-castilla-la-mancha-paracetamol-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="noticias castilla la mancha" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/consejo-gobierno-castilla-la-mancha-paracetamol-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/consejo-gobierno-castilla-la-mancha-paracetamol-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/20/entran-en-vigor-las-medidas-extraordinarias-economico-financieras-y-de-refuerzo-de-medios-de-la-junta546825/" title="Enlace permanente a Entran en vigor las medidas extraordinarias económico-financieras y de refuerzo de medios de la Junta" rel="bookmark">Entran en vigor las medidas extraordinarias económico-financieras y de refuerzo de medios de la Junta</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">20 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/20/entran-en-vigor-las-medidas-extraordinarias-economico-financieras-y-de-refuerzo-de-medios-de-la-junta546825/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/20/entran-en-vigor-las-medidas-extraordinarias-economico-financieras-y-de-refuerzo-de-medios-de-la-junta546825/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/19/el-gasto-en-alimentacion-se-impulsa-un-12-por-el-efecto-bunker-provocado-por-el-coronavirus/" title="Enlace permanente a El gasto en alimentación se impulsa un 12% por el &#8216;efecto búnker&#8217; provocado por el coronavirus" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/12/SUPERALBA_NOTICIA_ALBACETE-23-1-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="noticias albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/12/SUPERALBA_NOTICIA_ALBACETE-23-1-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/12/SUPERALBA_NOTICIA_ALBACETE-23-1-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/19/el-gasto-en-alimentacion-se-impulsa-un-12-por-el-efecto-bunker-provocado-por-el-coronavirus/" title="Enlace permanente a El gasto en alimentación se impulsa un 12% por el &#8216;efecto búnker&#8217; provocado por el coronavirus" rel="bookmark">El gasto en alimentación se impulsa un 12% por el &#8216;efecto búnker&#8217; provocado por el coronavirus</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">19 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/19/el-gasto-en-alimentacion-se-impulsa-un-12-por-el-efecto-bunker-provocado-por-el-coronavirus/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/19/el-gasto-en-alimentacion-se-impulsa-un-12-por-el-efecto-bunker-provocado-por-el-coronavirus/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/19/ata-denuncia-que-16-millones-de-autonomos-no-cobraran-la-nueva-prestacion-y-seguiran-pagando-cotizaciones/" title="Enlace permanente a ATA denuncia que 1,6 millones de autónomos no cobrarán la nueva prestación y seguirán pagando cotizaciones" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/presidente_ata_lorenzo_amor-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="noticias albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/presidente_ata_lorenzo_amor-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/presidente_ata_lorenzo_amor-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/19/ata-denuncia-que-16-millones-de-autonomos-no-cobraran-la-nueva-prestacion-y-seguiran-pagando-cotizaciones/" title="Enlace permanente a ATA denuncia que 1,6 millones de autónomos no cobrarán la nueva prestación y seguirán pagando cotizaciones" rel="bookmark">ATA denuncia que 1,6 millones de autónomos no cobrarán la nueva prestación y seguirán pagando cotizaciones</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">19 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/19/ata-denuncia-que-16-millones-de-autonomos-no-cobraran-la-nueva-prestacion-y-seguiran-pagando-cotizaciones/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/19/ata-denuncia-que-16-millones-de-autonomos-no-cobraran-la-nueva-prestacion-y-seguiran-pagando-cotizaciones/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/19/fitch-estima-que-el-pib-de-espana-se-contraera-al-08-en-2020-y-ya-habla-de-recesion-global/" title="Enlace permanente a Fitch estima que el PIB de España se contraerá al -0,8% en 2020 y ya habla de &#8220;recesión global&#8221;" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/presidente_gobierno_pedro_sanchez_pleno_extraordinario-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="noticias albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/presidente_gobierno_pedro_sanchez_pleno_extraordinario-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/presidente_gobierno_pedro_sanchez_pleno_extraordinario-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/19/fitch-estima-que-el-pib-de-espana-se-contraera-al-08-en-2020-y-ya-habla-de-recesion-global/" title="Enlace permanente a Fitch estima que el PIB de España se contraerá al -0,8% en 2020 y ya habla de &#8220;recesión global&#8221;" rel="bookmark">Fitch estima que el PIB de España se contraerá al -0,8% en 2020 y ya habla de &#8220;recesión global&#8221;</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">19 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/19/fitch-estima-que-el-pib-de-espana-se-contraera-al-08-en-2020-y-ya-habla-de-recesion-global/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/19/fitch-estima-que-el-pib-de-espana-se-contraera-al-08-en-2020-y-ya-habla-de-recesion-global/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/19/el-bce-anuncia-un-programa-de-compras-de-emergencia-para-pandemias-de-750-000-millones-de-euros/" title="Enlace permanente a El BCE anuncia un Programa de Compras de Emergencia para Pandemias de 750.000 millones de euros" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/bce-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="noticias economia" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/bce-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/bce-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/19/el-bce-anuncia-un-programa-de-compras-de-emergencia-para-pandemias-de-750-000-millones-de-euros/" title="Enlace permanente a El BCE anuncia un Programa de Compras de Emergencia para Pandemias de 750.000 millones de euros" rel="bookmark">El BCE anuncia un Programa de Compras de Emergencia para Pandemias de 750.000 millones de euros</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">19 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/19/el-bce-anuncia-un-programa-de-compras-de-emergencia-para-pandemias-de-750-000-millones-de-euros/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/19/el-bce-anuncia-un-programa-de-compras-de-emergencia-para-pandemias-de-750-000-millones-de-euros/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/18/muere-el-presidente-de-banco-santander-en-portugal-por-coronavirus/" title="Enlace permanente a Muere el presidente de Banco Santander en Portugal por Coronavirus" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/12/BANCO_SANTANDER_ARCHIVO_ALBACETE-32-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="noticias albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/12/BANCO_SANTANDER_ARCHIVO_ALBACETE-32-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/12/BANCO_SANTANDER_ARCHIVO_ALBACETE-32-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/18/muere-el-presidente-de-banco-santander-en-portugal-por-coronavirus/" title="Enlace permanente a Muere el presidente de Banco Santander en Portugal por Coronavirus" rel="bookmark">Muere el presidente de Banco Santander en Portugal por Coronavirus</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">18 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/18/muere-el-presidente-de-banco-santander-en-portugal-por-coronavirus/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/18/muere-el-presidente-de-banco-santander-en-portugal-por-coronavirus/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/18/coronavirus-arcos-plantea-un-erte-que-afecta-a-mas-de-240-trabajadores/" title="Enlace permanente a CORONAVIRUS | ARCOS plantea un ERTE que afecta a más de 240 trabajadores" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2015/12/35_CALLES_CAMPOLLANO_ARCHIVO_ALBACETE-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="noticias albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2015/12/35_CALLES_CAMPOLLANO_ARCHIVO_ALBACETE-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2015/12/35_CALLES_CAMPOLLANO_ARCHIVO_ALBACETE-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/18/coronavirus-arcos-plantea-un-erte-que-afecta-a-mas-de-240-trabajadores/" title="Enlace permanente a CORONAVIRUS | ARCOS plantea un ERTE que afecta a más de 240 trabajadores" rel="bookmark">CORONAVIRUS | ARCOS plantea un ERTE que afecta a más de 240 trabajadores</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">18 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/18/coronavirus-arcos-plantea-un-erte-que-afecta-a-mas-de-240-trabajadores/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/18/coronavirus-arcos-plantea-un-erte-que-afecta-a-mas-de-240-trabajadores/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/18/coronavirus-cuando-cobraran-el-paro-los-trabajadores-afectados-por-ertes/" title="Enlace permanente a CORONAVIRUS | ¿Cuándo cobrarán el paro los trabajadores afectados por ERTEs?" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/paro-empleo-trabajo-trabajador-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="Noticias Albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/paro-empleo-trabajo-trabajador-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/paro-empleo-trabajo-trabajador-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/18/coronavirus-cuando-cobraran-el-paro-los-trabajadores-afectados-por-ertes/" title="Enlace permanente a CORONAVIRUS | ¿Cuándo cobrarán el paro los trabajadores afectados por ERTEs?" rel="bookmark">CORONAVIRUS | ¿Cuándo cobrarán el paro los trabajadores afectados por ERTEs?</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">18 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/18/coronavirus-cuando-cobraran-el-paro-los-trabajadores-afectados-por-ertes/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/18/coronavirus-cuando-cobraran-el-paro-los-trabajadores-afectados-por-ertes/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-es-necesario-que-los-empresarios-de-albacete-hagan-certificados-a-los-trabajadores-para-poder-desplazarse-a-su-puesto-de-trabajo/" title="Enlace permanente a CORONAVIRUS | ¿Es necesario que los empresarios de Albacete hagan certificados a los trabajadores para poder desplazarse a su puesto de trabajo?" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/12/autonomo-firma-contrato-trabajo-hipoteca-vivienda.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/12/autonomo-firma-contrato-trabajo-hipoteca-vivienda.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/12/autonomo-firma-contrato-trabajo-hipoteca-vivienda-370x197.jpg 370w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/12/autonomo-firma-contrato-trabajo-hipoteca-vivienda-184x98.jpg 184w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/12/autonomo-firma-contrato-trabajo-hipoteca-vivienda-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-es-necesario-que-los-empresarios-de-albacete-hagan-certificados-a-los-trabajadores-para-poder-desplazarse-a-su-puesto-de-trabajo/" title="Enlace permanente a CORONAVIRUS | ¿Es necesario que los empresarios de Albacete hagan certificados a los trabajadores para poder desplazarse a su puesto de trabajo?" rel="bookmark">CORONAVIRUS | ¿Es necesario que los empresarios de Albacete hagan certificados a los trabajadores para poder desplazarse a su puesto de trabajo?</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">17 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-es-necesario-que-los-empresarios-de-albacete-hagan-certificados-a-los-trabajadores-para-poder-desplazarse-a-su-puesto-de-trabajo/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-es-necesario-que-los-empresarios-de-albacete-hagan-certificados-a-los-trabajadores-para-poder-desplazarse-a-su-puesto-de-trabajo/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-como-esta-afectando-el-estado-de-alarma-al-poligono-de-campollano/" title="Enlace permanente a CORONAVIRUS | ¿Cómo está afectando el Estado de Alarma al Polígono de Campollano?" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2015/12/6_NOMBRE_CALLES_CAMPOLLANO_ARCHIVO_ALBACETE-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="noticias albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2015/12/6_NOMBRE_CALLES_CAMPOLLANO_ARCHIVO_ALBACETE-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2015/12/6_NOMBRE_CALLES_CAMPOLLANO_ARCHIVO_ALBACETE-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-como-esta-afectando-el-estado-de-alarma-al-poligono-de-campollano/" title="Enlace permanente a CORONAVIRUS | ¿Cómo está afectando el Estado de Alarma al Polígono de Campollano?" rel="bookmark">CORONAVIRUS | ¿Cómo está afectando el Estado de Alarma al Polígono de Campollano?</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">17 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-como-esta-afectando-el-estado-de-alarma-al-poligono-de-campollano/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-como-esta-afectando-el-estado-de-alarma-al-poligono-de-campollano/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-el-gobierno-de-castilla-la-mancha-avanza-un-decalogo-de-medidas-para-mitigar-el-impacto-de-la-crisis-por-el-covid19-en-las-empresas-de-la-region/" title="Enlace permanente a CORONAVIRUS | El Gobierno de Castilla-La Mancha avanza un decálogo de medidas para mitigar el impacto de la crisis por el COVID19 en las empresas de la región" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/patricia-franco-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="Noticias Castilla-La Mancha" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/patricia-franco-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/patricia-franco-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-el-gobierno-de-castilla-la-mancha-avanza-un-decalogo-de-medidas-para-mitigar-el-impacto-de-la-crisis-por-el-covid19-en-las-empresas-de-la-region/" title="Enlace permanente a CORONAVIRUS | El Gobierno de Castilla-La Mancha avanza un decálogo de medidas para mitigar el impacto de la crisis por el COVID19 en las empresas de la región" rel="bookmark">CORONAVIRUS | El Gobierno de Castilla-La Mancha avanza un decálogo de medidas para mitigar el impacto de la crisis por el COVID19 en las empresas de la región</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">17 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-el-gobierno-de-castilla-la-mancha-avanza-un-decalogo-de-medidas-para-mitigar-el-impacto-de-la-crisis-por-el-covid19-en-las-empresas-de-la-region/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-el-gobierno-de-castilla-la-mancha-avanza-un-decalogo-de-medidas-para-mitigar-el-impacto-de-la-crisis-por-el-covid19-en-las-empresas-de-la-region/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-eurocaja-rural-mantiene-sus-oficinas-abiertas-y-plenamente-operativas-adoptando-medidas-de-prevencion-frente-al-covid-192/" title="Enlace permanente a CORONAVIRUS | Eurocaja Rural mantiene sus oficinas abiertas y plenamente operativas, adoptando medidas de prevención frente al COVID-19" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/20200317-SERVICIOS-CENTRALES-EUROCAJA-RURAL-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="NOTICIAS Castilla-La mancha" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/20200317-SERVICIOS-CENTRALES-EUROCAJA-RURAL-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/20200317-SERVICIOS-CENTRALES-EUROCAJA-RURAL-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-eurocaja-rural-mantiene-sus-oficinas-abiertas-y-plenamente-operativas-adoptando-medidas-de-prevencion-frente-al-covid-192/" title="Enlace permanente a CORONAVIRUS | Eurocaja Rural mantiene sus oficinas abiertas y plenamente operativas, adoptando medidas de prevención frente al COVID-19" rel="bookmark">CORONAVIRUS | Eurocaja Rural mantiene sus oficinas abiertas y plenamente operativas, adoptando medidas de prevención frente al COVID-19</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">17 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-eurocaja-rural-mantiene-sus-oficinas-abiertas-y-plenamente-operativas-adoptando-medidas-de-prevencion-frente-al-covid-192/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-eurocaja-rural-mantiene-sus-oficinas-abiertas-y-plenamente-operativas-adoptando-medidas-de-prevencion-frente-al-covid-192/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-el-gobierno-aprobara-una-moratoria-en-el-pago-de-las-hipotecas-para-los-desempleados-por-el-covid19/" title="Enlace permanente a CORONAVIRUS | El Gobierno aprobará una moratoria en el pago de las hipotecas para los desempleados por el COVID19" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/11/Negociación-Colectiva-hipoteca-firma-empleo-trabajo-paro-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="noticias economia albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/11/Negociación-Colectiva-hipoteca-firma-empleo-trabajo-paro-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/11/Negociación-Colectiva-hipoteca-firma-empleo-trabajo-paro-184x97.jpg 184w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/11/Negociación-Colectiva-hipoteca-firma-empleo-trabajo-paro-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-el-gobierno-aprobara-una-moratoria-en-el-pago-de-las-hipotecas-para-los-desempleados-por-el-covid19/" title="Enlace permanente a CORONAVIRUS | El Gobierno aprobará una moratoria en el pago de las hipotecas para los desempleados por el COVID19" rel="bookmark">CORONAVIRUS | El Gobierno aprobará una moratoria en el pago de las hipotecas para los desempleados por el COVID19</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">17 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-el-gobierno-aprobara-una-moratoria-en-el-pago-de-las-hipotecas-para-los-desempleados-por-el-covid19/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/17/coronavirus-el-gobierno-aprobara-una-moratoria-en-el-pago-de-las-hipotecas-para-los-desempleados-por-el-covid19/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/15/coronavirus-las-oficinas-bancarias-seguiran-abiertas-para-dar-servicio/" title="Enlace permanente a CORONAVIRUS | Las oficinas bancarias seguirán abiertas para dar servicio" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2016/12/GLOBALCAJA_ARCHIVO_ALBACETE-20-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="noticias albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2016/12/GLOBALCAJA_ARCHIVO_ALBACETE-20-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2016/12/GLOBALCAJA_ARCHIVO_ALBACETE-20-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/15/coronavirus-las-oficinas-bancarias-seguiran-abiertas-para-dar-servicio/" title="Enlace permanente a CORONAVIRUS | Las oficinas bancarias seguirán abiertas para dar servicio" rel="bookmark">CORONAVIRUS | Las oficinas bancarias seguirán abiertas para dar servicio</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">15 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/15/coronavirus-las-oficinas-bancarias-seguiran-abiertas-para-dar-servicio/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/15/coronavirus-las-oficinas-bancarias-seguiran-abiertas-para-dar-servicio/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/13/coronavirus-situacion-critica-del-sector-de-la-hosteleria-y-el-turismo-en-la-provincia-de-albacete/" title="Enlace permanente a CORONAVIRUS | Situación crítica del sector de la hostelería y el turismo en la provincia de Albacete" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2018/10/MIRALMUNDO_CASA_RURAL_HOTEL_HOSTAL_AYNA_ARCHIVO_ALBACETE75-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2018/10/MIRALMUNDO_CASA_RURAL_HOTEL_HOSTAL_AYNA_ARCHIVO_ALBACETE75-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2018/10/MIRALMUNDO_CASA_RURAL_HOTEL_HOSTAL_AYNA_ARCHIVO_ALBACETE75-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/13/coronavirus-situacion-critica-del-sector-de-la-hosteleria-y-el-turismo-en-la-provincia-de-albacete/" title="Enlace permanente a CORONAVIRUS | Situación crítica del sector de la hostelería y el turismo en la provincia de Albacete" rel="bookmark">CORONAVIRUS | Situación crítica del sector de la hostelería y el turismo en la provincia de Albacete</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">13 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/13/coronavirus-situacion-critica-del-sector-de-la-hosteleria-y-el-turismo-en-la-provincia-de-albacete/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/13/coronavirus-situacion-critica-del-sector-de-la-hosteleria-y-el-turismo-en-la-provincia-de-albacete/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/13/coronavirus-informacion-importante-sobre-el-servicio-de-taxi-de-albacete/" title="Enlace permanente a CORONAVIRUS | Información importante sobre el servicio de Taxi de Albacete" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/TAXIS_ARCHIVO_ALBACETE-32-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/TAXIS_ARCHIVO_ALBACETE-32-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/TAXIS_ARCHIVO_ALBACETE-32-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/13/coronavirus-informacion-importante-sobre-el-servicio-de-taxi-de-albacete/" title="Enlace permanente a CORONAVIRUS | Información importante sobre el servicio de Taxi de Albacete" rel="bookmark">CORONAVIRUS | Información importante sobre el servicio de Taxi de Albacete</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">13 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/13/coronavirus-informacion-importante-sobre-el-servicio-de-taxi-de-albacete/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/13/coronavirus-informacion-importante-sobre-el-servicio-de-taxi-de-albacete/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/13/coronavirus-no-somos-eduardo-manostijeras-y-no-podemos-trabajar-a-un-metro-de-distancia-del-cliente/" title="Enlace permanente a CORONAVIRUS | &#8220;No somos Eduardo Manostijeras y no podemos trabajar a un metro de distancia del cliente&#8221;" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2018/12/ANA_ROMERO_PELUQUERIA_NOTICIA_ALBACETE-18-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2018/12/ANA_ROMERO_PELUQUERIA_NOTICIA_ALBACETE-18-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2018/12/ANA_ROMERO_PELUQUERIA_NOTICIA_ALBACETE-18-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/13/coronavirus-no-somos-eduardo-manostijeras-y-no-podemos-trabajar-a-un-metro-de-distancia-del-cliente/" title="Enlace permanente a CORONAVIRUS | &#8220;No somos Eduardo Manostijeras y no podemos trabajar a un metro de distancia del cliente&#8221;" rel="bookmark">CORONAVIRUS | &#8220;No somos Eduardo Manostijeras y no podemos trabajar a un metro de distancia del cliente&#8221;</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">13 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/13/coronavirus-no-somos-eduardo-manostijeras-y-no-podemos-trabajar-a-un-metro-de-distancia-del-cliente/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/13/coronavirus-no-somos-eduardo-manostijeras-y-no-podemos-trabajar-a-un-metro-de-distancia-del-cliente/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/13/bajan-los-precios-en-albacete-3/" title="Enlace permanente a Bajan los precios en Albacete" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/Manos-Mujer-Mayores-Euros-dinero-pension-jubilacion-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="Noticias Albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/Manos-Mujer-Mayores-Euros-dinero-pension-jubilacion-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/Manos-Mujer-Mayores-Euros-dinero-pension-jubilacion-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/13/bajan-los-precios-en-albacete-3/" title="Enlace permanente a Bajan los precios en Albacete" rel="bookmark">Bajan los precios en Albacete</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">13 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/13/bajan-los-precios-en-albacete-3/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/13/bajan-los-precios-en-albacete-3/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/10/mercadona-incrementa-su-inversion-un-46-hasta-los-2-200-millones-y-factura-25-500-millones-un-5-mas/" title="Enlace permanente a Mercadona incrementa su inversión un 46%, hasta los 2.200 millones, y factura 25.500 millones, un 5% más" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/mercadona-balance-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="Noticias Albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/mercadona-balance-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/mercadona-balance-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/10/mercadona-incrementa-su-inversion-un-46-hasta-los-2-200-millones-y-factura-25-500-millones-un-5-mas/" title="Enlace permanente a Mercadona incrementa su inversión un 46%, hasta los 2.200 millones, y factura 25.500 millones, un 5% más" rel="bookmark">Mercadona incrementa su inversión un 46%, hasta los 2.200 millones, y factura 25.500 millones, un 5% más</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">10 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/10/mercadona-incrementa-su-inversion-un-46-hasta-los-2-200-millones-y-factura-25-500-millones-un-5-mas/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/10/mercadona-incrementa-su-inversion-un-46-hasta-los-2-200-millones-y-factura-25-500-millones-un-5-mas/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/10/la-onu-alerta-de-que-el-terremoto-del-coronavirus-provocara-recesion-y-desaceleracion-economica/" title="Enlace permanente a La ONU alerta de que el &#8220;terremoto&#8221; del coronavirus provocará recesión y desaceleración económica" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/ibex-bolsa-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/ibex-bolsa-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/ibex-bolsa-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/10/la-onu-alerta-de-que-el-terremoto-del-coronavirus-provocara-recesion-y-desaceleracion-economica/" title="Enlace permanente a La ONU alerta de que el &#8220;terremoto&#8221; del coronavirus provocará recesión y desaceleración económica" rel="bookmark">La ONU alerta de que el &#8220;terremoto&#8221; del coronavirus provocará recesión y desaceleración económica</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">10 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/10/la-onu-alerta-de-que-el-terremoto-del-coronavirus-provocara-recesion-y-desaceleracion-economica/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/10/la-onu-alerta-de-que-el-terremoto-del-coronavirus-provocara-recesion-y-desaceleracion-economica/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/10/la-fundacion-globalcaja-albacete-con-el-colegio-de-economistas/" title="Enlace permanente a La Fundación Globalcaja Albacete, con el Colegio de Economistas" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/IMG_7673-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="Noticias Albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/IMG_7673-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/IMG_7673-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/10/la-fundacion-globalcaja-albacete-con-el-colegio-de-economistas/" title="Enlace permanente a La Fundación Globalcaja Albacete, con el Colegio de Economistas" rel="bookmark">La Fundación Globalcaja Albacete, con el Colegio de Economistas</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">10 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/10/la-fundacion-globalcaja-albacete-con-el-colegio-de-economistas/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/10/la-fundacion-globalcaja-albacete-con-el-colegio-de-economistas/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/08/un-ensanche-mas-eficiente/" title="Enlace permanente a Un Ensanche más eficiente" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/ENSANCHE-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="noticias albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/ENSANCHE-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/ENSANCHE-370x197.jpg 370w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/ENSANCHE-184x98.jpg 184w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/ENSANCHE-768x409.jpg 768w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/ENSANCHE-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/ENSANCHE.jpg 1200w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/08/un-ensanche-mas-eficiente/" title="Enlace permanente a Un Ensanche más eficiente" rel="bookmark">Un Ensanche más eficiente</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">8 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/08/un-ensanche-mas-eficiente/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/08/un-ensanche-mas-eficiente/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/06/hacienda-inicio-hace-meses-en-castilla-la-mancha-la-resolucion-de-contratos-tras-constatar-el-incumplimiento-de-las-condiciones-laborales-por-parte-de-la-adjudicataria/" title="Enlace permanente a Hacienda inició hace meses en Castilla-La Mancha la resolución de contratos tras constatar el incumplimiento de las condiciones laborales por parte de la adjudicataria" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/p1e2oiufqa1p1afqh1nao1ga83h94-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="Noticias Castilla-La Mancha" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/p1e2oiufqa1p1afqh1nao1ga83h94-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/p1e2oiufqa1p1afqh1nao1ga83h94-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/06/hacienda-inicio-hace-meses-en-castilla-la-mancha-la-resolucion-de-contratos-tras-constatar-el-incumplimiento-de-las-condiciones-laborales-por-parte-de-la-adjudicataria/" title="Enlace permanente a Hacienda inició hace meses en Castilla-La Mancha la resolución de contratos tras constatar el incumplimiento de las condiciones laborales por parte de la adjudicataria" rel="bookmark">Hacienda inició hace meses en Castilla-La Mancha la resolución de contratos tras constatar el incumplimiento de las condiciones laborales por parte de la adjudicataria</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">6 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/06/hacienda-inicio-hace-meses-en-castilla-la-mancha-la-resolucion-de-contratos-tras-constatar-el-incumplimiento-de-las-condiciones-laborales-por-parte-de-la-adjudicataria/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/06/hacienda-inicio-hace-meses-en-castilla-la-mancha-la-resolucion-de-contratos-tras-constatar-el-incumplimiento-de-las-condiciones-laborales-por-parte-de-la-adjudicataria/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/06/castilla-la-mancha-intensificara-las-practicas-internacionales-en-las-ensenanzas-de-cerca-de-una-decena-de-familias-de-la-fp-para-el-empleo/" title="Enlace permanente a Castilla-La Mancha intensificará las prácticas internacionales en las enseñanzas de cerca de una decena de familias de la FP para el Empleo" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/clausura-la-ii-convencin-nacional-de-delegados-de-la-academia-getbrit_49626284083_o-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="Noticias Castilla-La Mancha" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/clausura-la-ii-convencin-nacional-de-delegados-de-la-academia-getbrit_49626284083_o-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/clausura-la-ii-convencin-nacional-de-delegados-de-la-academia-getbrit_49626284083_o-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/06/castilla-la-mancha-intensificara-las-practicas-internacionales-en-las-ensenanzas-de-cerca-de-una-decena-de-familias-de-la-fp-para-el-empleo/" title="Enlace permanente a Castilla-La Mancha intensificará las prácticas internacionales en las enseñanzas de cerca de una decena de familias de la FP para el Empleo" rel="bookmark">Castilla-La Mancha intensificará las prácticas internacionales en las enseñanzas de cerca de una decena de familias de la FP para el Empleo</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">6 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/06/castilla-la-mancha-intensificara-las-practicas-internacionales-en-las-ensenanzas-de-cerca-de-una-decena-de-familias-de-la-fp-para-el-empleo/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/06/castilla-la-mancha-intensificara-las-practicas-internacionales-en-las-ensenanzas-de-cerca-de-una-decena-de-familias-de-la-fp-para-el-empleo/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
	<article class="item-list">
					
		<div class="post-thumbnail single-post-thumb archive-wide-thumb">
			<a href="https://www.eldigitaldealbacete.com/2020/03/06/globalcaja-protagonista-en-comercia-2020/" title="Enlace permanente a Globalcaja, protagonista en Comercia 2020" rel="bookmark"><img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/20200306_122740-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="Noticias Albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/20200306_122740-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/20200306_122740-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" /></a>
		</div>
				<h2 class="post-title"><a href="https://www.eldigitaldealbacete.com/2020/03/06/globalcaja-protagonista-en-comercia-2020/" title="Enlace permanente a Globalcaja, protagonista en Comercia 2020" rel="bookmark">Globalcaja, protagonista en Comercia 2020</a></h2>
		<p class="post-meta">
	
		
	<span class="tie-date">6 marzo, 2020</span>	
	
	<span class="post-comments"><a href="https://www.eldigitaldealbacete.com/2020/03/06/globalcaja-protagonista-en-comercia-2020/#respond">Deja un comentario</a></span>
</p>
					
		<div class="entry">
			<p>Whatsapp</p>
			<a class="more-link" href="https://www.eldigitaldealbacete.com/2020/03/06/globalcaja-protagonista-en-comercia-2020/">Leer más &raquo;</a>
		</div>
				<div class="clear"></div>
	</article><!-- .item-list -->
	
</div>
			<div class="pagination">
		<span class="pages">Página 1 di 105</span><span class="current">1</span><a href="https://www.eldigitaldealbacete.com/economia-2/page/2/" class="page" title="2">2</a><a href="https://www.eldigitaldealbacete.com/economia-2/page/3/" class="page" title="3">3</a><a href="https://www.eldigitaldealbacete.com/economia-2/page/4/" class="page" title="4">4</a><a href="https://www.eldigitaldealbacete.com/economia-2/page/5/" class="page" title="5">5</a>					<span id="tie-next-page">
					<a href="https://www.eldigitaldealbacete.com/economia-2/page/2/" >&raquo;</a>					</span>
					<a href="https://www.eldigitaldealbacete.com/economia-2/page/10/" class="page" title="10">10</a><a href="https://www.eldigitaldealbacete.com/economia-2/page/20/" class="page" title="20">20</a><a href="https://www.eldigitaldealbacete.com/economia-2/page/30/" class="page" title="30">30</a><span class="extend">...</span><a href="https://www.eldigitaldealbacete.com/economia-2/page/105/" class="last" title="Último &raquo;">Último &raquo;</a>	</div>
			
	</div> <!-- .content -->

<aside class="sidebar-narrow">
<div id="text-540" class="widget widget_text"><div class="widget-top"><h4> </h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"></div>
		</div></div><!-- .widget /--><div id="text-679" class="widget widget_text"><div class="widget-top"><h4>El tiempo en Albacete</h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><div id="c_963d30836220ff63be451d9199a0364b" class="delgado"></div>
<p><script type="text/javascript" src="https://www.eltiempo.es/widget/widget_loader/963d30836220ff63be451d9199a0364b"></script></p>
</div>
		</div></div><!-- .widget /--><div id="text-17" class="widget widget_text"><div class="widget-top"><h4>Cita Previa SESCAM</h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><a href="http://sescam.jccm.es/web/sHome.do?main=/ciudadanos/citaPrevia/citaPreLogin.jsp&cabecera=/common/cabecera_cita.html"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2014/10/tarjeta-sescam.gif"></a></div>
		</div></div><!-- .widget /--><div id="text-16" class="widget widget_text"><div class="widget-top"><h4>Farmacias de Guardia</h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><a href="http://sescam.jccm.es/web/ServiciosGuardiasFarm.do?idLoc=6"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2014/10/farmacias-de-guardia.jpg"></a></div>
		</div></div><!-- .widget /--><div id="text-273" class="widget widget_text"><div class="widget-top"><h4>Buzón Ciudadano</h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><a href="http://www.eldigitaldealbacete.com/buzon-ciudadano/"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2016/06/buzon-ciudadano.jpg"></a></div>
		</div></div><!-- .widget /-->			<div id="text-html-widget-14" class="text-html-box" >
			<div  class="paszone_container paszone-container-352618   " id="paszonecont_352618" style="overflow:hidden; max-width:160px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-352618 " id="352618" style="overflow:hidden; width:160px; height:620px;  "><div class="wppasrotate   paszoneholder-352618" style="" ><div class="pasli pasli-352607 "  data-duration="5000" bid="352607" aid="352618"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=MzUyNjA3&amp;pasZONE=MzUyNjE4" target="_blank" ><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/620x163.gif?pas=2253567072003201744" alt="hyunday" border="0"  /></a></div></div></div></div>			</div>
					<div id="text-html-widget-15" class="text-html-box" >
			<div  class="paszone_container paszone-container-352619   " id="paszonecont_352619" style="overflow:hidden; max-width:160px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-352619 " id="352619" style="overflow:hidden; width:160px; height:800px;  "><div class="wppasrotate   paszoneholder-352619" style="width:100%; height:100%;" ></div></div></div>			</div>
					<div id="text-html-widget-17" class="text-html-box" >
			<div  class="paszone_container paszone-container-373925   " id="paszonecont_373925" style="overflow:hidden; max-width:160px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-373925 " id="373925" style="overflow:hidden; width:160px; height:620px;  "><div class="wppasrotate   paszoneholder-373925" style="width:100%; height:100%;" ></div></div></div>			</div>
		<div id="categort-posts-widget-9" class="widget categort-posts"><div class="widget-top"><h4>Deportes		</h4><div class="stripe-line"></div></div>
						<div class="widget-container">				<ul>
					<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/18/muere-un-famoso-castellano-manchego/" title="Enlace permanente a Muere un famoso castellano-manchego" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/ETZhEJyXgAEFK4n-70x70.jpeg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="Noticias Castilla-La mancha" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/18/muere-un-famoso-castellano-manchego/">Muere un famoso castellano-manchego</a></h3>
	 <span class="date"><span class="tie-date">18 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/18/coronavirus-que-pasa-ahora-con-los-jugadores-lesionados-del-albacete-balompie/" title="Enlace permanente a CORONAVIRUS | ¿Qué pasa ahora con los jugadores lesionados del Albacete Balompié?" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Captura-de-pantalla-2020-03-18-a-las-18.54.23-70x70.png" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/18/coronavirus-que-pasa-ahora-con-los-jugadores-lesionados-del-albacete-balompie/">CORONAVIRUS | ¿Qué pasa ahora con los jugadores lesionados del Albacete Balompié?</a></h3>
	 <span class="date"><span class="tie-date">18 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/18/coronavirus-la-albacetena-susana-rodriguez-afirma-que-no-seria-descabellado-que-se-pospongan-los-juegos-olimpicos-de-tokio/" title="Enlace permanente a CORONAVIRUS | La albaceteña Susana Rodríguez afirma que &#8220;no sería descabellado que se pospongan los Juegos Olímpicos&#8221; de Tokio" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/05/susana-rodriguez-jjoo-londres-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/18/coronavirus-la-albacetena-susana-rodriguez-afirma-que-no-seria-descabellado-que-se-pospongan-los-juegos-olimpicos-de-tokio/">CORONAVIRUS | La albaceteña Susana Rodríguez afirma que &#8220;no sería descabellado que se pospongan los Juegos Olímpicos&#8221; de Tokio</a></h3>
	 <span class="date"><span class="tie-date">18 marzo, 2020</span></span>
</li>
				</ul>
		<div class="clear"></div>
	</div></div><!-- .widget /--><div id="text-29" class="widget widget_text"><div class="widget-top"><h4> </h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"></br></div>
		</div></div><!-- .widget /--><div id="posts-list-widget-3" class="widget posts-list"><div class="widget-top"><h4>Artículos Recientes		</h4><div class="stripe-line"></div></div>
						<div class="widget-container">				<ul>
					<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/video-ana-la-vecina-del-barrio-imaginalia-que-llena-de-arte-las-tardes-de-confinamiento/">VÍDEO | Ana, la vecina del Barrio Imaginalia que llena de arte las tardes de confinamiento</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-13-casos-confirmados-y-50-posibles-en-la-residencia-de-mayores-nunez-de-balboa/">CORONAVIRUS | 13 casos confirmados y 50 posibles en la Residencia de mayores Núñez de Balboa</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-buscan-en-albacete-impresoras-3d-para-luchar-contra-el-covid-19/">CORONAVIRUS | Buscan en Albacete impresoras 3D para luchar contra el COVID-19</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-se-disparan-las-denuncias-en-albacete-capital-por-no-respetar-el-estado-de-alarma/">CORONAVIRUS | Se disparan las denuncias en Albacete capital por no respetar el Estado de Alarma</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-castilla-la-mancha-habilitara-dos-residencias-de-mayores-en-albacete-para-casos-positivos-y-negativos/">CORONAVIRUS | Castilla-La Mancha habilitará dos residencias de mayores en Albacete para casos positivos y negativos</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-empresarios-del-calzado-de-almansa-a-disposicion-para-fabricar-material-de-proteccion-para-el-personal-sanitario/">CORONAVIRUS | Empresarios del calzado de Almansa, a disposición para fabricar material de protección para el personal sanitario</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/nuevas-medidas-del-ayuntamiento-de-albacete-para-frenar-al-coronavirus/">Nuevas medidas del Ayuntamiento de Albacete para frenar al coronavirus</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/muere-una-repartidora-de-correos-por-coronavirus/">Muere una repartidora de Correos por coronavirus</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-informacion-importante-para-los-vecinos-de-la-provincia-de-albacete-a-la-hora-de-tirar-la-basura/">CORONAVIRUS | Información importante para los vecinos de la provincia de Albacete a la hora de tirar la basura</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-detenida-una-mujer-con-positivo-tras-escupir-a-varios-guardias-civiles/">CORONAVIRUS | Detenida una mujer con positivo tras escupir a varios guardias civiles</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-1-400-casos-positivos-y-84-muertes-en-castilla-la-mancha/">CORONAVIRUS | 1.400 casos positivos y 84 muertes en Castilla-La Mancha</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-aumentan-el-numero-de-personas-que-atienden-las-llamadas-de-1-1-2-en-castilla-la-mancha/">CORONAVIRUS | Aumentan el número de personas que atienden las llamadas de 1-1-2 en Castilla-La Mancha</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/ultima-hora-mas-de-300-infectados-por-coronavirus-y-28-muertos-en-albacete/">ÚLTIMA HORA | Más de 300 infectados por coronavirus y 28 muertos en Albacete</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/los-casos-de-coronavirus-en-espana-rozan-los-20-000-y-se-superan-las-1-000-muertes/">Los casos de coronavirus en España rozan los 20.000 y se superan las 1.000 muertes</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-gobierno-de-castilla-la-mancha-pone-a-geacam-al-servicio-de-los-pueblos-de-la-region/">CORONAVIRUS | El Gobierno de Castilla-La Mancha pone a Geacam al servicio de los pueblos de la región</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-ponen-en-marcha-en-albacete-una-cadena-para-confeccionar-mascarillas/">CORONAVIRUS | Ponen en marcha en Albacete una cadena para confeccionar mascarillas</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-garcia-page-trasladara-a-pedro-sanchez-la-necesidad-de-material-de-proteccion/">CORONAVIRUS | García-Page trasladará a Pedro Sánchez la necesidad de material de protección</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/ultima-hora-asi-se-prepara-el-hospital-de-hellin-ante-el-pico-del-coronavirus/">ÚLTIMA HORA | Así se prepara el Hospital de Hellín ante el pico del coronavirus</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-equipo-de-supervivientes-entre-los-casi-300-espanoles-que-buscan-salir-de-honduras/">CORONAVIRUS | El equipo de Supervivientes, entre los casi 300 españoles que buscan salir de Honduras</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/el-gran-gesto-de-instituto-bernabeu-hacia-el-hospital-de-albacete/">El gran gesto de Instituto Bernabeu hacia el Hospital de Albacete</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/video-tremenda-cola-para-entrar-a-carrefour-en-albacete/">VÍDEO | Tremenda cola para entrar a Carrefour en Albacete</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/">CORONAVIRUS | El Ayuntamiento garantiza la atención integral a las mujeres víctimas de la violencia de género en Albacete durante la crisis del CoVid-19</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
				</ul>
		<div class="clear"></div>
	</div></div><!-- .widget /--></aside>
</div> <!-- .content-wrap -->
<aside class="sidebar">
<div id="text-305" class="widget widget_text"><div class="widget-top"><h4> </h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><center><div style="width: 300px; height: 62px; background-image: url(https://1.bp.blogspot.com/-E-JcWuGvn6Q/UD5glfZvoKI/AAAAAAAABbE/FeLCsukJRfw/s1600/fondofecha04.jpg); line-height: 1.5em; border: 1px solid #8e8e8e;">

<div style="font-family: century gothic; padding: 10px 0 0 0; font-size: 22px; color: #8e8e8e; background: none;"><script>

var meses = new Array ("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");

var diasSemana = new Array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado");

var f=new Date();

document.write(diasSemana[f.getDay()]);

</script></div><strong>

<div style="font-family: century gothic; padding: 5px 0 0 0; font-size: 12px; color: #ffffff; background: none;"><script>

var meses = new Array ("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");

var diasSemana = new Array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado");

var f=new Date();

document.write(f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear());

</script></div></strong></div></center>

<div style="position:relative;top: -7px; #top: -14px"><p><div style="text-align: center; line-height: 0.1em; font-size: 10px"></div></p></div></div>
		</div></div><!-- .widget /--><div id="text-749" class="widget widget_text"><div class="widget-top"><h4> </h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><div  class="paszone_container paszone-container-545848   " id="paszonecont_545848" style="overflow:hidden; max-width:300px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-545848 " id="545848" style="overflow:hidden; width:300px; height:250px;  "><div class="wppasrotate   paszoneholder-545848" style="" ><div class="pasli pasli-545844 "  data-duration="5000" bid="545844" aid="545848"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NTQ1ODQ0&amp;pasZONE=NTQ1ODQ4" target="_blank" rel="noopener noreferrer"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/coronavirus-clm-Recomendaciones-300x250-1.gif?pas=11965343972003201744" alt="coronavirus junta 1" border="0"  /></a></div></div></div></div>
</div>
		</div></div><!-- .widget /--><div id="text-681" class="widget widget_text"><div class="widget-top"><h4> </h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><div  class="paszone_container paszone-container-455617   " id="paszonecont_455617" style="overflow:hidden; max-width:300px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-455617 " id="455617" style="overflow:hidden; width:300px; height:300px;  "><div class="wppasrotate   paszoneholder-455617" style="" ><div class="pasli pasli-464217 "  data-duration="5000" bid="464217" aid="455617"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NDY0MjE3&amp;pasZONE=NDU1NjE3" target="_blank" rel="noopener noreferrer"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/GENERICO-MARZO.gif?pas=16909410122003201744" alt="CONACO" border="0"  /></a></div></div></div></div>
</div>
		</div></div><!-- .widget /--><div id="text-741" class="widget widget_text"><div class="widget-top"><h4> </h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><p><a href="https://www.eldigitaldealbacete.com/2020/03/13/coronavirus-declaracion-institucional-del-alcalde-de-albacete-tras-la-proclamacion-del-estado-de-alarma-por-parte-del-gobierno/"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Gif-medidas-300.gif" /></a></p>
</div>
		</div></div><!-- .widget /--><div id="text-684" class="widget widget_text"><div class="widget-top"><h4> </h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><div  class="paszone_container paszone-container-464220   " id="paszonecont_464220" style="overflow:hidden; max-width:300px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-464220 " id="464220" style="overflow:hidden; width:300px; height:300px;  "><div class="wppasrotate   paszoneholder-464220" style="" ><div class="pasli pasli-463236 "  data-duration="5000" bid="463236" aid="464220"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NDYzMjM2&amp;pasZONE=NDY0MjIw" target="_blank" rel="noopener noreferrer"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/ANBELOSORAL_banner.gif?pas=8742248772003201744" alt="ANBELO SOLAR" border="0"  /></a></div></div></div></div>
</div>
		</div></div><!-- .widget /--><div id="text-640" class="widget widget_text"><div class="widget-top"><h4> </h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><p><a href="https://eurocajarural.es/prontovolveremosaabrazarnos"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/eldigitaldealbacete-300x300px-gracias-2020-copia.gif" /></a></p>
</div>
		</div></div><!-- .widget /--><div id="text-734" class="widget widget_text"><div class="widget-top"><h4> </h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><p><a href="http://www.coealbacete.com/"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/banner-300x420pxAZUL.jpg" /></a></p>
</div>
		</div></div><!-- .widget /--><div id="text-738" class="widget widget_text"><div class="widget-top"><h4> </h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><p><a href="http://adeca.com/"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/banner-EL-DIGITAL.gif" /></a></p>
</div>
		</div></div><!-- .widget /--><div id="text-736" class="widget widget_text"><div class="widget-top"><h4> </h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><p><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/LEYENDAS-DEL-DEPORTE-DIGITAL_300X300.png" /></p>
</div>
		</div></div><!-- .widget /--><div id="text-748" class="widget widget_text"><div class="widget-top"><h4> </h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><p><a href="http://videoacta.ayto-albacete.es/"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Banner-web-300x300px-EDUSI-1ª-CAMPAÑA.gif" /></a></p>
</div>
		</div></div><!-- .widget /--><div id="text-726" class="widget widget_text"><div class="widget-top"><h4> </h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><p><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20300'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/BANNER-PPAA-300X300.gif" /></p>
</div>
		</div></div><!-- .widget /--><div id="text-728" class="widget widget_text"><div class="widget-top"><h4> </h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><p><a href="https://almansaimpulsa.es"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20300'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/06/BANNER-ALMANSA-300X300.jpg" /></a></p>
</div>
		</div></div><!-- .widget /-->		<div id="ads300_250-widget-3" class="ads300-250">
								<div class="ad-cell">
				<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- Cuadrado amp -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-2207770142965283"
     data-ad-slot="6602440678"
     data-ad-format="auto"
     data-full-width-responsive="true"></ins>
<script>
     (adsbygoogle = window.adsbygoogle || []).push({});
</script>
			</div>
				</div>
	<div id="ads300_250-widget-5" class="widget ads300_250-widget"><div class="widget-top"><h4>Publicidad</h4><div class="stripe-line"></div></div>
						<div class="widget-container">		<div  class="ads300-250">
								<div class="ad-cell">
				<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- Cuadrado amp -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-2207770142965283"
     data-ad-slot="6602440678"
     data-ad-format="auto"
     data-full-width-responsive="true"></ins>
<script>
     (adsbygoogle = window.adsbygoogle || []).push({});
</script>
			</div>
				</div>
	</div></div><!-- .widget /-->		<div id="ads300_250-widget-7" class="ads300-250">
								<div class="ad-cell">
				<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- Cuadrado amp -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-2207770142965283"
     data-ad-slot="6602440678"
     data-ad-format="auto"
     data-full-width-responsive="true"></ins>
<script>
     (adsbygoogle = window.adsbygoogle || []).push({});
</script>
			</div>
				</div>
	</aside>
<div class="clear"></div>		<div class="clear"></div>
	</div><!-- .container /-->

	<div class="e3lan-bottom">					<div  class="paszone_container paszone-container-534209   " id="paszonecont_534209" style="overflow:hidden;    " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-534209 " id="534209" style="overflow:hidden;  width:100%; height:auto; display:inline-block;   "><div class="wppasrotate   paszoneholder-534209" style="width:100%; height:100%;" ></div></div></div>				</div>	</div><!-- .container -->

	<footer id="theme-footer" class="fade-in animated4">
	<div id="footer-widget-area" class="footer-3c container">

			<div id="footer-first" class="footer-widgets-box">
			<div id="categort-posts-widget-2" class="footer-widget categort-posts"><div class="footer-widget-top"><h4>ÚLTIMA HORA ALBACETE		</h4></div>
						<div class="footer-widget-container">				<ul>
					<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/video-ana-la-vecina-del-barrio-imaginalia-que-llena-de-arte-las-tardes-de-confinamiento/" title="Enlace permanente a VÍDEO | Ana, la vecina del Barrio Imaginalia que llena de arte las tardes de confinamiento" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/5da349d2-5789-4b8b-9dca-56fbd2d5c096-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/video-ana-la-vecina-del-barrio-imaginalia-que-llena-de-arte-las-tardes-de-confinamiento/">VÍDEO | Ana, la vecina del Barrio Imaginalia que llena de arte las tardes de confinamiento</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-13-casos-confirmados-y-50-posibles-en-la-residencia-de-mayores-nunez-de-balboa/" title="Enlace permanente a CORONAVIRUS | 13 casos confirmados y 50 posibles en la Residencia de mayores Núñez de Balboa" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/RESIDENCIA_DE_MAYORES_NUÑEZ_DE_BALBOA_NOTICIA_ALBACETE-06-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="noticias albacete" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-13-casos-confirmados-y-50-posibles-en-la-residencia-de-mayores-nunez-de-balboa/">CORONAVIRUS | 13 casos confirmados y 50 posibles en la Residencia de mayores Núñez de Balboa</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-buscan-en-albacete-impresoras-3d-para-luchar-contra-el-covid-19/" title="Enlace permanente a CORONAVIRUS | Buscan en Albacete impresoras 3D para luchar contra el COVID-19" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/e036b862-b4b4-4f53-96c9-d42fa9183236-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="Noticias Albacete" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-buscan-en-albacete-impresoras-3d-para-luchar-contra-el-covid-19/">CORONAVIRUS | Buscan en Albacete impresoras 3D para luchar contra el COVID-19</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-se-disparan-las-denuncias-en-albacete-capital-por-no-respetar-el-estado-de-alarma/" title="Enlace permanente a CORONAVIRUS | Se disparan las denuncias en Albacete capital por no respetar el Estado de Alarma" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Policía-Local-1-e1584715985665-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="noticias albacete" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-se-disparan-las-denuncias-en-albacete-capital-por-no-respetar-el-estado-de-alarma/">CORONAVIRUS | Se disparan las denuncias en Albacete capital por no respetar el Estado de Alarma</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-castilla-la-mancha-habilitara-dos-residencias-de-mayores-en-albacete-para-casos-positivos-y-negativos/" title="Enlace permanente a CORONAVIRUS | Castilla-La Mancha habilitará dos residencias de mayores en Albacete para casos positivos y negativos" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/RESIDENCIA_ALAMOS_PEÑAS_DE_SAN_PEDRO_NOTICIA_ALBACETE-48-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="residencia Peñas de San Pedro noticias" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-castilla-la-mancha-habilitara-dos-residencias-de-mayores-en-albacete-para-casos-positivos-y-negativos/">CORONAVIRUS | Castilla-La Mancha habilitará dos residencias de mayores en Albacete para casos positivos y negativos</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
				</ul>
		<div class="clear"></div>
	</div></div><!-- .widget /-->		</div>
	
			<div id="footer-second" class="footer-widgets-box">
			<div id="categort-posts-widget-11" class="footer-widget categort-posts"><div class="footer-widget-top"><h4>ÚLTIMA HORA PROVINCIA		</h4></div>
						<div class="footer-widget-container">				<ul>
					<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-empresarios-del-calzado-de-almansa-a-disposicion-para-fabricar-material-de-proteccion-para-el-personal-sanitario/" title="Enlace permanente a CORONAVIRUS | Empresarios del calzado de Almansa, a disposición para fabricar material de protección para el personal sanitario" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2018/12/rosello-alcalde-almansa-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-empresarios-del-calzado-de-almansa-a-disposicion-para-fabricar-material-de-proteccion-para-el-personal-sanitario/">CORONAVIRUS | Empresarios del calzado de Almansa, a disposición para fabricar material de protección para el personal sanitario</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-informacion-importante-para-los-vecinos-de-la-provincia-de-albacete-a-la-hora-de-tirar-la-basura/" title="Enlace permanente a CORONAVIRUS | Información importante para los vecinos de la provincia de Albacete a la hora de tirar la basura" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/coronavirus-1-2-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="Noticias provincia Albacete" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-informacion-importante-para-los-vecinos-de-la-provincia-de-albacete-a-la-hora-de-tirar-la-basura/">CORONAVIRUS | Información importante para los vecinos de la provincia de Albacete a la hora de tirar la basura</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/ultima-hora-asi-se-prepara-el-hospital-de-hellin-ante-el-pico-del-coronavirus/" title="Enlace permanente a ÚLTIMA HORA | Así se prepara el Hospital de Hellín ante el pico del coronavirus" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/FOTO-SESCAM.-HELLIN.-PLAN-CONTINGENCIA-2-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="Noticias Hellin" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/ultima-hora-asi-se-prepara-el-hospital-de-hellin-ante-el-pico-del-coronavirus/">ÚLTIMA HORA | Así se prepara el Hospital de Hellín ante el pico del coronavirus</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/los-agricultores-y-ganaderos-de-la-provincia-de-albacete-reciben-un-importante-pago/" title="Enlace permanente a Los agricultores y ganaderos de la provincia de Albacete reciben un importante pago" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/campo-agricultura-agricultor-oliva-aceituna-tractor-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/los-agricultores-y-ganaderos-de-la-provincia-de-albacete-reciben-un-importante-pago/">Los agricultores y ganaderos de la provincia de Albacete reciben un importante pago</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/19/coronavirus-tractores-ayudan-a-desinfectar-las-calles-de-villarrobledo/" title="Enlace permanente a CORONAVIRUS | Tractores ayudan a desinfectar las calles de Villarrobledo" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/ETdj3lUWsAA81sK-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="Noticias Villarrobledo" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/19/coronavirus-tractores-ayudan-a-desinfectar-las-calles-de-villarrobledo/">CORONAVIRUS | Tractores ayudan a desinfectar las calles de Villarrobledo</a></h3>
	 <span class="date"><span class="tie-date">19 marzo, 2020</span></span>
</li>
				</ul>
		<div class="clear"></div>
	</div></div><!-- .widget /-->		</div><!-- #second .widget-area -->
	

			<div id="footer-third" class="footer-widgets-box">
			<div id="categort-posts-widget-12" class="footer-widget categort-posts"><div class="footer-widget-top"><h4>ÚLTIMA HORA C-LM		</h4></div>
						<div class="footer-widget-container">				<ul>
					<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-1-400-casos-positivos-y-84-muertes-en-castilla-la-mancha/" title="Enlace permanente a CORONAVIRUS | 1.400 casos positivos y 84 muertes en Castilla-La Mancha" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/coronavirus-2-4-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="Noticias Albacete" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-1-400-casos-positivos-y-84-muertes-en-castilla-la-mancha/">CORONAVIRUS | 1.400 casos positivos y 84 muertes en Castilla-La Mancha</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-aumentan-el-numero-de-personas-que-atienden-las-llamadas-de-1-1-2-en-castilla-la-mancha/" title="Enlace permanente a CORONAVIRUS | Aumentan el número de personas que atienden las llamadas de 1-1-2 en Castilla-La Mancha" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/telefono-112-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="Noticias Castilla-La Mancha" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-aumentan-el-numero-de-personas-que-atienden-las-llamadas-de-1-1-2-en-castilla-la-mancha/">CORONAVIRUS | Aumentan el número de personas que atienden las llamadas de 1-1-2 en Castilla-La Mancha</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-gobierno-de-castilla-la-mancha-pone-a-geacam-al-servicio-de-los-pueblos-de-la-region/" title="Enlace permanente a CORONAVIRUS | El Gobierno de Castilla-La Mancha pone a Geacam al servicio de los pueblos de la región" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2018/07/geacam-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-gobierno-de-castilla-la-mancha-pone-a-geacam-al-servicio-de-los-pueblos-de-la-region/">CORONAVIRUS | El Gobierno de Castilla-La Mancha pone a Geacam al servicio de los pueblos de la región</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-garcia-page-trasladara-a-pedro-sanchez-la-necesidad-de-material-de-proteccion/" title="Enlace permanente a CORONAVIRUS | García-Page trasladará a Pedro Sánchez la necesidad de material de protección" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/page-tierraseca-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="Noticias Castilla-la Mancha" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-garcia-page-trasladara-a-pedro-sanchez-la-necesidad-de-material-de-proteccion/">CORONAVIRUS | García-Page trasladará a Pedro Sánchez la necesidad de material de protección</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/herido-el-conductor-de-un-camion-tras-volcar-en-castilla-la-mancha/" title="Enlace permanente a Herido el conductor de un camión tras volcar en Castilla-La Mancha" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/AMBULANCIA_SVB_SESCAM_ARCHIVO_ALBACETE-22-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="noticias castilla la mancha albacete accidente suceso sanidad" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/herido-el-conductor-de-un-camion-tras-volcar-en-castilla-la-mancha/">Herido el conductor de un camión tras volcar en Castilla-La Mancha</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
				</ul>
		<div class="clear"></div>
	</div></div><!-- .widget /-->		</div><!-- #third .widget-area -->
	
	
	</div><!-- #footer-widget-area -->
	<div class="clear"></div>
</footer><!-- .Footer /-->
	<div class="clear"></div>
	<div class="footer-bottom fade-in animated4">
		<div class="container">
					<div class="social-icons icon_flat">
		<a class="ttip" title="Rss" href="https://www.eldigitaldealbacete.com/feed/" target="_blank"><i class="tieicon-rss"></i></a><a class="ttip" title="Facebook" href="https://www.facebook.com/ElDigitalDeAlbacete" target="_blank"><i class="tieicon-facebook"></i></a><a class="ttip" title="Twitter" href="https://twitter.com/ElDigitalAB" target="_blank"><i class="tieicon-twitter"></i></a><a class="ttip" title="Youtube" href="https://www.youtube.com/user/ElDigitaldeAlbacete" target="_blank"><i class="tieicon-youtube"></i></a><a class="ttip" title="instagram" href="https://www.instagram.com/eldigitaldealbacete/" target="_blank"><i class="tieicon-instagram"></i></a>	</div>

			<div class="alignleft">
			<a href="https://www.eldigitaldealbacete.com/aviso-legal/">Aviso Legal </a> © Copyright 2017, <a href="mailto:prensa@eldigitaldealbacete.com?Subject=Comunicación Web">El Digital de Albacete. Publicación auditada por OJD</a></br>
El Digital de Albacete y su logotipo son marcas registradas ante la OEPM. 2020 			</div>
		</div><!-- .Container -->
	</div><!-- .Footer bottom -->

</div><!-- .Wrapper -->
	<div id="topcontrol" class="tieicon-up-open" title="Ir Hacia Arriba"></div>
<div id="fb-root"></div>
<script src="//platform.twitter.com/oct.js" type="text/javascript"></script>
<script type="text/javascript">
twttr.conversion.trackPid('l5c15');</script>
<noscript>
<img class="lazy" height="1" width="1" style="display:none;" alt="" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://analytics.twitter.com/i/adsct?txn_id=l5c15&p_id=Twitter" />
<img class="lazy" height="1" width="1" style="display:none;" alt="" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="//t.co/i/adsct?txn_id=l5c15&p_id=Twitter" /></noscript>	    
    		<script type="text/javascript">
            var clientWidth	=	window.screen.width;
            if(clientWidth >= 1024){
                document.write('<div id="divAdRight" style="position: absolute; top: 0px; width:100px; height:500px; overflow:hidden;"> <a href="https://blog.globalcaja.es/para-evitar-la-propagacion-del-coronavirus-quedateencasa/" target="_blank"><img src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/porellos_eldigitaldealbacete_100x500.jpg"  width ="100" alt="" /></a></div><div id="divAdLeft" style="position: absolute; top: 0px; width:100px; height:500px; overflow:hidden;"><a href="https://blog.globalcaja.es/para-evitar-la-propagacion-del-coronavirus-quedateencasa/" target="_blank"><img src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/porellos_eldigitaldealbacete_100x500.jpg"  width ="100" alt="" /></a></div>');	
                
                var MainContentW = 1200;
                var LeftBannerW = 100;
                var RightBannerW = 100;
                var LeftAdjust = 10;
                var RightAdjust = 10;
                var TopAdjust = 80;
                ShowAdDiv();
                window.onresize=ShowAdDiv; 
            }
        </script>
        
<link rel='stylesheet' id='wp_pro_add_style-css'  href='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/templates/css/wppas.min.css?ver=5.3.0' type='text/css' media='all' />
<link rel='stylesheet' id='wppas_php_style-css'  href='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/templates/css/wppas_custom_css.css?ver=5.3.2' type='text/css' media='all' />
<style id='wppas_php_style-inline-css' type='text/css'>

			/* ----------------------------------------------------------------
			 * WP PRO ADVERTISING SYSTEM - ADZONES
			 * ---------------------------------------------------------------- */
			.wppaszone img {
				max-width: 100%;
				height:auto;
			}
			.wppaszone {overflow:hidden; visibility: visible !important; display: inherit !important; }
			.pas_fly_in .wppaszone {visibility: hidden !important; }
			.pas_fly_in.showing .wppaszone {visibility: visible !important; }
			
			.wppasrotate, .wppaszone li { margin: 0; padding:0; list-style: none; }
			.rotating_paszone > .pasli { visibility:hidden; }
			.wppaszone .jshowoff .wppasrotate .pasli { visibility: inherit; }
		
</style>
<script type='text/javascript'>
/* <![CDATA[ */
var adsforwp_obj = {"ajax_url":"https:\/\/www.eldigitaldealbacete.com\/wp-admin\/admin-ajax.php","adsforwp_front_nonce":"7d08f2b7ed"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.eldigitaldealbacete.com/wp-content/plugins/ads-for-wp/public/assets/js/ads-front.min.js?ver=1.9.15.3'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var adsforwp_browser_obj = [];
/* ]]> */
</script>
<script type='text/javascript' src='https://www.eldigitaldealbacete.com/wp-content/plugins/ads-for-wp/public/assets/js/ads-frontend.min.js?ver=1.9.15.3'></script>
<script type='text/javascript' src='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-includes/js/jquery/ui/core.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-includes/js/jquery/ui/effect.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-includes/js/jquery/ui/effect-shake.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/public/assets/js/vbc/jquery-ui-effects.min.js?ver=5.3.0'></script>
<script type='text/javascript' src='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/public/assets/js/vbc/postscribe.min.js?ver=5.3.0'></script>
<script type='text/javascript' src='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/public/assets/js/dom-to-image.js?ver=5.3.0'></script>
<script type='text/javascript' src='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/public/assets/js/vbc/jquery.wppas.vbc.min.js?ver=5.3.0'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var tie = {"go_to":"Ir a...","ajaxurl":"https:\/\/www.eldigitaldealbacete.com\/wp-admin\/admin-ajax.php","your_rating":"Su Valoraci\u00f3n:","is_singular":"","reading_indicator":""};
/* ]]> */
</script>
<script type='text/javascript' src='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/themes/jarida/js/tie-scripts.js?ver=5.3.2'></script>
<script type='text/javascript' src='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/themes/jarida-child/js/ga_gallery.js?ver=1.2'></script>
<script type='text/javascript' src='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-includes/js/wp-embed.min.js?ver=5.3.2'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wppas_ajax_script = {"ajaxurl":"https:\/\/www.eldigitaldealbacete.com\/wp-admin\/admin-ajax.php"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/templates/js/wppas.min.js?ver=5.3.2'></script>
<script type="text/javascript" id="slb_context">/* <![CDATA[ */if ( !!window.jQuery ) {(function(\$){\$(document).ready(function(){if ( !!window.SLB ) { {\$.extend(SLB, {"context":["public","user_guest"]});} }})})(jQuery);}/* ]]> */</script>
<div  class="paszone_container paszone-container-534331   " id="paszonecont_534331" style="overflow:hidden;    " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-534331 " id="534331" style="overflow:hidden;  width:100%; height:auto; display:inline-block;   "><div class="wppasrotate   paszoneholder-534331" style="width:100%; height:100%;" ></div></div></div><script>document.addEventListener("DOMContentLoaded",function() {if (typeof LazyLoad !== "undefined") {window.w3tc_lazyload=new LazyLoad(window.lazyLoadOptions)}})</script></body>
</html>

<!--
Performance optimized by W3 Total Cache. Learn more: https://www.w3-edge.com/products/

Page Caching using disk: enhanced (Requested URI is rejected) 
Red de Entrega de Contenido vía cdn.oondeo.es/www.eldigitaldealbacete.com
Lazy Loading

Served from: www.eldigitaldealbacete.com @ 2020-03-20 18:44:42 by W3 Total Cache
-->''';