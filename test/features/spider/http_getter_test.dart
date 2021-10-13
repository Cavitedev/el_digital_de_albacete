import 'package:el_digital_de_albacete/core/error/exceptions.dart';
import 'package:el_digital_de_albacete/features/news/spider/http_getter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
class MockHttpClient extends Mock implements http.Client{}

void main(){
  httpGetterImpl httpGetter;
  MockHttpClient mockHttpClient;
  String url = "https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/";
  String html = '''<!DOCTYPE html>
<html lang="es" prefix="og: http://ogp.me/ns#">
<head><script>window.w3tc_lazyload=1,window.lazyLoadOptions={elements_selector:".lazy",callback_loaded:function(t){var e;try{e=new CustomEvent("w3tc_lazyload_loaded",{detail:{e:t}})}catch(a){(e=document.createEvent("CustomEvent")).initCustomEvent("w3tc_lazyload_loaded",!1,!1,{e:t})}window.dispatchEvent(e)}}</script><style>img.lazy{min-height:1px}</style><script async src="https://www.eldigitaldealbacete.com/wp-content/plugins/w3-total-cache/pub/js/lazyload.min.js"></script>
<meta charset="UTF-8" />
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="pingback" href="https://www.eldigitaldealbacete.com/xmlrpc.php" />
<title>CORONAVIRUS | El Ayuntamiento garantiza la atención integral a las mujeres víctimas de la violencia de género en Albacete durante la crisis del CoVid-19 - El Digital de Albacete</title>

<!-- Ads on this site are served by WP PRO Advertising System - All In One Ad Manager v5.3.0 - wordpress-advertising.tunasite.com -->
<!-- / WP PRO Advertising System - All In One Ad Manager. -->


<!-- This site is optimized with the Yoast SEO Premium plugin v13.3 - https://yoast.com/wordpress/plugins/seo/ -->
<meta name="robots" content="max-snippet:-1, max-image-preview:large, max-video-preview:-1"/>
<link rel="canonical" href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" />
<meta property="og:locale" content="es_ES" />
<meta property="og:type" content="article" />
<meta property="og:title" content="CORONAVIRUS | El Ayuntamiento garantiza la atención integral a las mujeres víctimas de la violencia de género en Albacete durante la crisis del CoVid-19 - El Digital de Albacete" />
<meta property="og:description" content="Whatsapp /Redacción/ El Ayuntamiento de Albacete, a través del Centro de la Mujer y de los recursos de acogida, cofinanciados por el Instituto de la Mujer de Castilla-La Mancha, mantiene la atención a las mujeres que son víctimas de la violencia de género también durante la cuarentena decretada por la pandemia del CoVid-19. Las primeras ..." />
<meta property="og:url" content="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" />
<meta property="og:site_name" content="El Digital de Albacete" />
<meta property="article:publisher" content="https://www.facebook.com/ElDigitalDeAlbacete" />
<meta property="article:section" content="Albacete" />
<meta property="article:published_time" content="2020-03-20T09:00:03+00:00" />
<meta property="article:modified_time" content="2020-03-20T11:29:52+00:00" />
<meta property="og:updated_time" content="2020-03-20T11:29:52+00:00" />
<meta property="og:image" content="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Centro-de-la-Mujer-2.jpg" />
<meta property="og:image:secure_url" content="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Centro-de-la-Mujer-2.jpg" />
<meta property="og:image:width" content="1500" />
<meta property="og:image:height" content="846" />
<!-- / Yoast SEO Premium plugin. -->

<link rel="amphtml" href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/amp/" /><meta name="generator" content="AMP for WP 1.0.34"/><link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel='dns-prefetch' href='//s.w.org' />
<link rel="alternate" type="application/rss+xml" title="El Digital de Albacete &raquo; Feed" href="https://www.eldigitaldealbacete.com/feed/" />
<link rel="alternate" type="application/rss+xml" title="El Digital de Albacete &raquo; Feed de los comentarios" href="https://www.eldigitaldealbacete.com/comments/feed/" />
<link rel="alternate" type="application/rss+xml" title="El Digital de Albacete &raquo; Comentario CORONAVIRUS | El Ayuntamiento garantiza la atención integral a las mujeres víctimas de la violencia de género en Albacete durante la crisis del CoVid-19 del feed" href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/feed/" />
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
var wppas_vbc_upload = {"ajaxurl":"https:\/\/www.eldigitaldealbacete.com\/wp-admin\/admin-ajax.php","nonce":"aaf2664d19","remove":"0861eb30d2","number":"1","upload_enabled":"1","confirmMsg":"Are you sure you want to delete this?","plupload":{"runtimes":"html5,flash,html4","browse_button":"wppas-vbc-uploader","container":"wppas-vbc-upload-container","file_data_name":"wppas_vbc_upload_file","max_file_size":"100000000b","url":"https:\/\/www.eldigitaldealbacete.com\/wp-admin\/admin-ajax.php?action=wppas_vbc_upload&nonce=ea36aa457c","flash_swf_url":"https:\/\/www.eldigitaldealbacete.com\/wp-includes\/js\/plupload\/plupload.flash.swf","filters":[{"title":"Archivos permitidos","extensions":"jpg,gif,png"}],"multipart":true,"urlstream_upload":true,"multipart_params":{"upload_folder":""}}};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/public/assets/js/vbc/AjaxUpload.js?ver=5.3.2'></script>
<script type='text/javascript' src='https://www.eldigitaldealbacete.com/wp-content/plugins/whatsapp-button-es/js/whatsapp-button.js?ver=5.3.2'></script>
<script type='text/javascript' src='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/templates/js/advertising.js?ver=5.3.2'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wppas_ajax_script = {"ajaxurl":"https:\/\/www.eldigitaldealbacete.com\/wp-admin\/admin-ajax.php"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/templates/js/wppas.min.js?ver=5.3.2'></script>
<link rel='https://api.w.org/' href='https://www.eldigitaldealbacete.com/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://www.eldigitaldealbacete.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 5.3.2" />
<link rel='shortlink' href='https://www.eldigitaldealbacete.com/?p=546895' />
<link rel="alternate" type="application/json+oembed" href="https://www.eldigitaldealbacete.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.eldigitaldealbacete.com%2F2020%2F03%2F20%2Fcoronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://www.eldigitaldealbacete.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.eldigitaldealbacete.com%2F2020%2F03%2F20%2Fcoronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19%2F&#038;format=xml" />
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
[{"@context":"https:\/\/schema.org","@graph":[{"@type":"NewsMediaOrganization","@id":"https:\/\/www.eldigitaldealbacete.com#Organization","name":"El Digital de Albacete","url":"https:\/\/www.eldigitaldealbacete.com","sameAs":["https:\/\/www.facebook.com\/ElDigitalDeAlbacete","https:\/\/twitter.com\/ElDigitalAB","https:\/\/www.youtube.com\/user\/ElDigitaldeAlbacete","https:\/\/www.instagram.com\/eldigitaldealbacete\/"],"logo":{"@type":"ImageObject","url":"https:\/\/www.eldigitaldealbacete.com\/wp-content\/uploads\/2020\/02\/logo-cuadrado-el-digital-de-albacete.jpg","width":"560","height":"560"},"contactPoint":{"@type":"ContactPoint","contactType":"customer support","telephone":"+34967257420","url":"https:\/\/www.eldigitaldealbacete.com\/contacto\/"}},{"@type":"WebSite","@id":"https:\/\/www.eldigitaldealbacete.com#website","headline":"El Digital de Albacete","name":"El Digital de Albacete","description":"Peri\u00f3dico de Noticias de Albacete","url":"https:\/\/www.eldigitaldealbacete.com","publisher":{"@id":"https:\/\/www.eldigitaldealbacete.com#Organization"}},{"@context":"https:\/\/schema.org","@type":"WebPage","@id":"https:\/\/www.eldigitaldealbacete.com\/2020\/03\/20\/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19\/#webpage","name":"CORONAVIRUS | El Ayuntamiento garantiza la atenci\u00f3n integral a las mujeres v\u00edctimas de la violencia de g ...","url":"https:\/\/www.eldigitaldealbacete.com\/2020\/03\/20\/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19\/","inLanguage":"es","description":"\/Redacci\u00f3n\/ El Ayuntamiento de Albacete, a trav\u00e9s del Centro de la Mujer y de los recursos de acogida, cofinanciados por el Instituto de la Mujer de Castilla-La Mancha, mantiene la atenci\u00f3n a las mujeres que son v\u00edctimas de la violencia de g\u00e9nero tambi\u00e9n durante la cuarentena decretada por la pandemia del CoVid-19. Las primeras medidas","primaryImageOfPage":{"@id":"https:\/\/www.eldigitaldealbacete.com\/2020\/03\/20\/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19\/#primaryimage"},"mainContentOfPage":[[{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Portada","url":"https:\/\/www.eldigitaldealbacete.com"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Albacete","url":"https:\/\/www.eldigitaldealbacete.com\/noticias-albacete\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Provincia","url":"https:\/\/www.eldigitaldealbacete.com\/noticias-provincia-albacete\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Almansa","url":"https:\/\/www.eldigitaldealbacete.com\/noticias-almansa\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Hell\u00edn","url":"https:\/\/www.eldigitaldealbacete.com\/noticias-hellin\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Villarrobledo","url":"https:\/\/www.eldigitaldealbacete.com\/noticias-villarrobledo\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"La Roda","url":"https:\/\/www.eldigitaldealbacete.com\/noticias-laroda\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Resto provincia","url":"https:\/\/www.eldigitaldealbacete.com\/noticias-resto-provincia-albacete\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Castilla-La Mancha","url":"https:\/\/www.eldigitaldealbacete.com\/castilla-la-mancha\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Albacete Balompi\u00e9","url":"https:\/\/www.eldigitaldealbacete.com\/noticias-albacete-balompie\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Deportes","url":"https:\/\/www.eldigitaldealbacete.com\/noticias-deporte-albacete\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Agricultura","url":"https:\/\/www.eldigitaldealbacete.com\/noticias-agricultura-casltilla-la-macha-albacete\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Justicia","url":"https:\/\/www.eldigitaldealbacete.com\/justicia-2\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Sanidad y Salud","url":"https:\/\/www.eldigitaldealbacete.com\/noticias-sanidad-albacete\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Educaci\u00f3n","url":"https:\/\/www.eldigitaldealbacete.com\/noticias-educacion-albacete\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Econom\u00eda","url":"https:\/\/www.eldigitaldealbacete.com\/economia-2\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Cultura","url":"https:\/\/www.eldigitaldealbacete.com\/noticias-cultura-albacete\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Toros","url":"https:\/\/www.eldigitaldealbacete.com\/noticias-toros-albacete\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"V\u00eddeos","url":"https:\/\/www.eldigitaldealbacete.com\/videos\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Modesto Colorado","url":"https:\/\/www.eldigitaldealbacete.com\/modesto-colorado\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Liga Globalcaja Benjam\u00edn F\u00fatbol 8","url":"https:\/\/www.eldigitaldealbacete.com\/liga-globalcaja-benjamin-futbol-8\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Circuito Baloncesto Benjam\u00edn Globalcaja 2020","url":"https:\/\/www.eldigitaldealbacete.com\/circuito-baloncesto-benjamin-globalcaja-2020\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Recibe gratis nuestro bolet\u00edn diario","url":"https:\/\/www.eldigitaldealbacete.com\/recibe-nuestro-boletin-diario\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Buz\u00f3n Ciudadano","url":"https:\/\/www.eldigitaldealbacete.com\/buzon-ciudadano\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","@id":"https:\/\/www.eldigitaldealbacete.com\/#menu principal","name":"Contacto","url":"https:\/\/www.eldigitaldealbacete.com\/contacto\/"}]],"isPartOf":{"@id":"https:\/\/www.eldigitaldealbacete.com#website"},"breadcrumb":{"@id":"https:\/\/www.eldigitaldealbacete.com\/2020\/03\/20\/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19\/#breadcrumb"}},{"@type":"BreadcrumbList","@id":"https:\/\/www.eldigitaldealbacete.com\/2020\/03\/20\/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19\/#breadcrumb","itemListElement":[{"@type":"ListItem","position":1,"item":{"@id":"https:\/\/www.eldigitaldealbacete.com","name":"El Digital de Albacete"}},{"@type":"ListItem","position":2,"item":{"@id":"https:\/\/www.eldigitaldealbacete.com\/noticias-albacete\/","name":"Albacete"}},{"@type":"ListItem","position":3,"item":{"@id":"https:\/\/www.eldigitaldealbacete.com\/2020\/03\/20\/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19\/","name":"CORONAVIRUS | El Ayuntamiento garantiza la atenci\u00f3n integral a las mujeres v\u00edctimas de la violencia de g ..."}}]},{"@type":"NewsArticle","@id":"https:\/\/www.eldigitaldealbacete.com\/2020\/03\/20\/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19\/#newsarticle","url":"https:\/\/www.eldigitaldealbacete.com\/2020\/03\/20\/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19\/","headline":"CORONAVIRUS | El Ayuntamiento garantiza la atenci\u00f3n integral a las mujeres v\u00edctimas de la violencia de g ...","mainEntityOfPage":"https:\/\/www.eldigitaldealbacete.com\/2020\/03\/20\/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19\/#webpage","datePublished":"2020-03-20T10:00:03+01:00","dateModified":"2020-03-20T12:29:52+01:00","description":"\/Redacci\u00f3n\/ El Ayuntamiento de Albacete, a trav\u00e9s del Centro de la Mujer y de los recursos de acogida, cofinanciados por el Instituto de la Mujer de Castilla-La Mancha, mantiene la atenci\u00f3n a las mujeres que son v\u00edctimas de la violencia de g\u00e9nero tambi\u00e9n durante la cuarentena decretada por la pandemia del CoVid-19. Las primeras medidas","articleSection":"Albacete","articleBody":"\/Redacci\u00f3n\/\r\nEl Ayuntamiento de Albacete, a trav\u00e9s del Centro de la Mujer y de los recursos de acogida, cofinanciados por el Instituto de la Mujer de Castilla-La Mancha, mantiene la atenci\u00f3n a las mujeres que son v\u00edctimas de la violencia de g\u00e9nero tambi\u00e9n durante la cuarentena decretada por la pandemia del CoVid-19.\r\nLas primeras medidas tomadas en el Ayuntamiento ya fijaban como un servicio esencial la atenci\u00f3n a las v\u00edctimas, que se realiza a trav\u00e9s de los recursos de acogida que tenemos en nuestra ciudad, y de esa forma, tanto el CAIVG (Centro de Atenci\u00f3n Integral a V\u00edctimas de Violencia de G\u00e9nero), como el CUR (Centro de Urgencias), han permanecido en funcionamiento prestando atenci\u00f3n a las mujeres y menores que precisan de recursos de acogida.\u00a0\r\nEl Ayuntamiento trabaja en una doble l\u00ednea, por un lado, garantizar la atenci\u00f3n a las v\u00edctimas, y, de otra parte, asegurar la prevenci\u00f3n del contagio del CoVid-19, tanto de las usuarias y sus hijos e hijas, como del personal municipal que presta sus servicios en los recursos. Por ello, se ha aplicado una bater\u00eda de medidas de prevenci\u00f3n y cuarentena ante nuevos ingresos, mejora de la limpieza y limitaci\u00f3n de uso de los espacios comunes de los recursos.\u00a0\r\nPor otro lado, en el Centro de la Mujer se han acordado servicios m\u00ednimos y un protocolo de teleasistencia y se ha restringido la atenci\u00f3n \u00fanicamente a mujeres v\u00edctimas de violencia de g\u00e9nero que precisen de asistencia psicol\u00f3gica, jur\u00eddica o social de forma urgente. De esta forma, las mujeres pueden llamar al tel\u00e9fono del centro de la mujer, 967 24 69 04 y su llamada es atendida por el personal de administraci\u00f3n del centro, desde casa, quien, en atenci\u00f3n a la demanda de la mujer, la pondr\u00e1 en contacto con profesionales del \u00e1mbito de psicolog\u00eda, el derecho o la atenci\u00f3n social.\r\nPor su parte, las profesionales atender\u00e1n a la mujer de forma telef\u00f3nica siempre que sea posible, salvo que se precise la tramitaci\u00f3n administrativa a trav\u00e9s del programa Atempro, solicitud de cambio de cerradura o que la mujer necesite del dispositivo de traducci\u00f3n. En el caso de que la atenci\u00f3n tenga que ser presencial, se guardar\u00e1n las medidas recomendadas como mantener la distancia de un metro y medio en la atenci\u00f3n, ventilaci\u00f3n de los espacios, medidas de higiene de manos y otros elementos de protecci\u00f3n personal para las profesionales, adem\u00e1s, se ha llevado a cabo una desinfecci\u00f3n del Centro y la empresa responsable del servicio de limpieza, efectuar\u00e1 una desinfecci\u00f3n diaria y exhaustiva del mismo.\r\nPara el concejal del \u00e1rea, Manu Mart\u00ednez constituye \u201cuna prioridad municipal mantener la asistencia a las mujeres y menores v\u00edctimas de la violencia de g\u00e9nero, m\u00e1s si cabe en estos d\u00edas en los que el confinamiento en los hogares puede provocar mayores situaciones de indefensi\u00f3n, adem\u00e1s, en nuestra ocupaci\u00f3n diaria se encuentra tambi\u00e9n la atenci\u00f3n a las trabajadoras de los recursos, quienes est\u00e1n dando lo mejor de ellas mismas en esta dura situaci\u00f3n y a las que, no me cabe duda, la sociedad les est\u00e1 profundamente agradecida\u201d.\u00a0\r\n&nbsp;","keywords":"","name":"CORONAVIRUS | El Ayuntamiento garantiza la atenci\u00f3n integral a las mujeres v\u00edctimas de la violencia de g ...","thumbnailUrl":"https:\/\/www.eldigitaldealbacete.com\/wp-content\/uploads\/2020\/03\/Centro-de-la-Mujer-2-184x104.jpg","wordCount":"499","timeRequired":"133","mainEntity":{"@type":"WebPage","@id":"https:\/\/www.eldigitaldealbacete.com\/2020\/03\/20\/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19\/"},"author":{"@type":"Person","name":"El Digital de Albacete","description":"","url":"","image":{"@type":"ImageObject","url":"https:\/\/secure.gravatar.com\/avatar\/6d95d16223e6fdf14ae21e93ce679dac?s=96&d=mm&r=g","height":96,"width":96}},"publisher":{"@id":"https:\/\/www.eldigitaldealbacete.com#Organization"},"image":[{"@type":"ImageObject","@id":"https:\/\/www.eldigitaldealbacete.com\/2020\/03\/20\/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19\/#primaryimage","url":"https:\/\/www.eldigitaldealbacete.com\/wp-content\/uploads\/2020\/03\/Centro-de-la-Mujer-2.jpg","width":"1500","height":"846"},{"@type":"ImageObject","url":"https:\/\/www.eldigitaldealbacete.com\/wp-content\/uploads\/2020\/03\/Centro-de-la-Mujer-2-1200x900.jpg","width":"1200","height":"900"},{"@type":"ImageObject","url":"https:\/\/www.eldigitaldealbacete.com\/wp-content\/uploads\/2020\/03\/Centro-de-la-Mujer-2-1200x675.jpg","width":"1200","height":"675"}],"isPartOf":{"@id":"https:\/\/www.eldigitaldealbacete.com\/2020\/03\/20\/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19\/#webpage"}}]}]
</script>

<link rel="icon" href="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/cropped-12118986_711214355646438_7712997827358759636_n-32x32.png" sizes="32x32" />
<link rel="icon" href="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/cropped-12118986_711214355646438_7712997827358759636_n-192x192.png" sizes="192x192" />
<link rel="apple-touch-icon-precomposed" href="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/cropped-12118986_711214355646438_7712997827358759636_n-180x180.png" />
<meta name="msapplication-TileImage" content="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/cropped-12118986_711214355646438_7712997827358759636_n-270x270.png" />
</head>
<body id="top" class="post-template-default single single-post postid-546895 single-format-standard">
	<div class="background-cover"></div>
	<div class="wrapper">
				<div class="top-nav fade-in animated1 ">
			<div class="container">
				<div class="search-block">
					<form method="get" id="searchform" action="https://www.eldigitaldealbacete.com/">
						<button class="search-button" type="submit" value=""></button>
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
			<div class="e3lan-top">					<div  class="paszone_container paszone-container-536108   " id="paszonecont_536108" style="overflow:hidden; max-width:px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-536108 " id="536108" style="overflow:hidden; max-width:px; max-height:px;  "><div class="wppasrotate   paszoneholder-536108" style="" ><div class="pasli pasli-536111 "  data-duration="5000" bid="536111" aid="536108"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NTM2MTEx&amp;pasZONE=NTM2MTA4" target="_blank" ><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/porellos_eldigitaldecr_1200x250.jpg?pas=15896875752003201130" alt="GLOBALCAJA TOP" border="0"  /></a></div></div></div></div>
<a href="https://www.eldigitaldealbacete.com/2020/03/13/coronavirus-declaracion-institucional-del-alcalde-de-albacete-tras-la-proclamacion-del-estado-de-alarma-por-parte-del-gobierno/"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201200%20250'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Medidas-1200.gif" border=0 width=1200 height=250></a>
				</div>			<div class="clear"></div>
		</div>
									<nav id="main-nav" class="fade-in animated2">
				<div class="container">
				<div class="main-menu"><ul id="menu-menu-principal" class="menu"><li id="menu-item-14" class="menu-item  menu-item-type-custom  menu-item-object-custom  menu-item-home"><a href="https://www.eldigitaldealbacete.com">Portada</a></li>
<li id="menu-item-106942" class="menu-item  menu-item-type-taxonomy  menu-item-object-category  current-post-ancestor  current-menu-parent  current-post-parent"><a href="https://www.eldigitaldealbacete.com/noticias-albacete/">Albacete</a></li>
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
<li id="menu-item-48992" class="menu-item  menu-item-type-taxonomy  menu-item-object-category"><a href="https://www.eldigitaldealbacete.com/economia-2/">Economía</a></li>
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
			<div class="textwidget"><div  class="paszone_container paszone-container-542827   " id="paszonecont_542827" style="overflow:hidden;    " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-542827 " id="542827" style="overflow:hidden;  width:100%; height:auto; display:inline-block;   "><div class="wppasrotate   paszoneholder-542827" style="" ><div class="pasli pasli-542828 "  data-duration="5000" bid="542828" aid="542827"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NTQyODI4&amp;pasZONE=NTQyODI3" target="_blank" rel="noopener noreferrer"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/BANNER-DIGITAL-MINI-3-puertas.DEF_.gif?pas=18203445052003201130" alt="ALBAMOCION" border="0"  /></a></div></div></div></div>


<a href="https://sanidad.castillalamancha.es/ciudadanos/enfermedades-infecciosas/coronavirus"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/coronavirus-clm-Síntomas-980x90-1.gif" /></a>
<a href="https://sanidad.castillalamancha.es/ciudadanos/enfermedades-infecciosas/coronavirus"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/coronavirus-clm-Recomendaciones-980x90-1.gif" /></a></div>
		</div></center><!-- .widget /--><div class="content-wrap">
	<div class="content">
		
		
		
		<div class="e3lan-post">					
<div id="divVideoStepAdTop" class="divVideoStep"></div>
<script type='text/javascript'>
(function(w,d) { 
 var i=w.invibes=w.invibes||{}; 
 i.uc=1;
 i.prod=2697;
 var s=d.createElement('script');
 s.type='text/javascript';
 s.async=true;
 s.src='//k.a14net.com/GetLink';
 d.head.appendChild(s); 
})(window,document);
 </script>
				</div>
		<article id="the-post" class="post-listing post-546895 post type-post status-publish format-standard has-post-thumbnail hentry category-noticias-albacete">
					<div class="single-post-thumb">
			 <img width="620" height="330" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20620%20330'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Centro-de-la-Mujer-2-620x330.jpg" class="attachment-slider size-slider wp-post-image lazy" alt="Noticias Albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Centro-de-la-Mujer-2-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Centro-de-la-Mujer-2-300x160.jpg 300w" data-sizes="(max-width: 620px) 100vw, 620px" />		</div>
		

			<div class="post-inner">
				<h1 class="name post-title entry-title" itemprop="itemReviewed"  itemtype="http://schema.org/Thing"><span >CORONAVIRUS | El Ayuntamiento garantiza la atención integral a las mujeres víctimas de la violencia de género en Albacete durante la crisis del CoVid-19</span></h1>

						
<p class="post-meta">
	
	<span class="post-cats">en <a href="https://www.eldigitaldealbacete.com/noticias-albacete/" rel="category tag">Albacete</a></span>
	
		
	 <span class="tie-date">20 marzo, 2020</span>	
</p>
<div class="clear"></div>
				<div class="entry">
					
					<div class="whatsapp" style="margin:10px 0 10px 0;"><a href="whatsapp://send" data-text="CORONAVIRUS | El Ayuntamiento garantiza la atención integral a las mujeres víctimas de la violencia de género en Albacete durante la crisis del CoVid-19" data-href="" class="wa_btn wa_btn_l" style="display:none">Whatsapp</a></div><div class='code-block code-block-4' style='margin: 8px auto; text-align: center; display: block; clear: both;'>
<div  class="paszone_container paszone-container-182997   " id="paszonecont_182997" style="overflow:hidden;  text-align:center;  " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-182997 " id="182997" style="overflow:hidden;  width:100%; height:auto;  text-align:center; "><div class="wppasrotate   paszoneholder-182997" style="" ><div class="pasli pasli-168174 "  data-duration="5000" bid="168174" aid="182997"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=MTY4MTc0&amp;pasZONE=MTgyOTk3" target="_blank" ><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/600x250_DMA_AUTOALBA_YARIS.gif?pas=16709097312003201130" alt="TOyota" border="0"  /></a></div></div></div></div></div>
<p><span id="more-546895"></span></p>
<p style="text-align: justify;"><em>/Redacción/</em></p>
<p style="text-align: justify;"><strong>El Ayuntamiento de Albacete, a través del Centro de la Mujer y de los recursos de acogida, cofinanciados por el Instituto de la Mujer de Castilla-La Mancha, mantiene la atención a las mujeres que son víctimas de la violencia de género también durante la cuarentena decretada por la pandemia del CoVid-19.</strong></p><div class='code-block code-block-1' style='margin: 8px auto; text-align: center; display: block; clear: both;'>
<div  class="paszone_container paszone-container-135953   " id="paszonecont_135953" style="overflow:hidden; max-width:px; margin: 0 auto; text-align:center;  " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-135953 " id="135953" style="overflow:hidden; max-width:px; max-height:px; margin: 0 auto; text-align:center; "><div class="wppasrotate   paszoneholder-135953" style="" ><div class="pasli pasli-461064 "  data-duration="5000" bid="461064" aid="135953"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NDYxMDY0&amp;pasZONE=MTM1OTUz" target="_blank" ><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/banner-albaluz-imaginalia.gif?pas=578907532003201130" alt="albaluz" border="0"  /></a></div></div></div></div></div>

<p style="text-align: justify;">Las primeras medidas tomadas en el Ayuntamiento ya fijaban como un servicio esencial la atención a las víctimas, que se realiza a través de los recursos de acogida que tenemos en nuestra ciudad, y de esa forma, tanto el CAIVG (Centro de Atención Integral a Víctimas de Violencia de Género), como el CUR (Centro de Urgencias), han permanecido en funcionamiento prestando atención a las mujeres y menores que precisan de recursos de acogida.<span class="Apple-converted-space"> </span></p><div class='code-block code-block-2' style='margin: 8px 0; clear: both;'>
<div  class="paszone_container paszone-container-135810   " id="paszonecont_135810" style="overflow:hidden; max-width:620px; margin: 0 auto; text-align:center;  " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-135810 " id="135810" style="overflow:hidden; max-width:620px; max-height:620px; margin: 0 auto; text-align:center; "><div class="wppasrotate   paszoneholder-135810" style="" ><div class="pasli pasli-534330 "  data-duration="5000" bid="534330" aid="135810"><div id="ads_964YGFK24YSK"></div>
<script defer="" language="javascript" type="text/javascript">
(function(){
var newscript= document.createElement('script');
newscript.type = 'text/javascript';
newscript.async = true;
lz_elem = (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]);
lz_elem.appendChild(newscript);
newscript.onload = function(ev){
var lz_url="https://play.sunmediaads.com/red/zone.php?code=964YGFK24YSK&a=&pubid=&lgid="+((new Date()).getTime() % 2147483648) + Math.random();
var lz_target = "ads_964YGFK24YSK";
var lz_sync_mode=false;
lz_loadads(lz_url ,lz_target,lz_sync_mode);
}
newscript.src= "https://img.sunmediaads.com/ads/lz_loader.js?ver=1.4";
})();
</script></div></div></div></div></div>

<p style="text-align: justify;">El Ayuntamiento trabaja en una doble línea, por un lado, garantizar la atención a las víctimas, y, de otra parte, asegurar la prevención del contagio del CoVid-19, tanto de las usuarias y sus hijos e hijas, como del personal municipal que presta sus servicios en los recursos. Por ello, se ha aplicado una batería de medidas de prevención y cuarentena ante nuevos ingresos, mejora de la limpieza y limitación de uso de los espacios comunes de los recursos.<span class="Apple-converted-space"> </span></p>
<p style="text-align: justify;">Por otro lado, en el Centro de la Mujer se han acordado servicios mínimos y un protocolo de teleasistencia y se ha restringido la atención únicamente a mujeres víctimas de violencia de género que precisen de asistencia psicológica, jurídica o social de forma urgente. De esta forma, las mujeres pueden llamar al teléfono del centro de la mujer, 967 24 69 04 y su llamada es atendida por el personal de administración del centro, desde casa, quien, en atención a la demanda de la mujer, la pondrá en contacto con profesionales del ámbito de psicología, el derecho o la atención social.</p><div class='code-block code-block-3' style='margin: 8px 0; clear: both;'>
<div  class="paszone_container paszone-container-485465   " id="paszonecont_485465" style="overflow:hidden; max-width:620px; margin: 0 auto; text-align:center;  " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-485465 " id="485465" style="overflow:hidden; max-width:620px; max-height:620px; margin: 0 auto; text-align:center; "><div class="wppasrotate   paszoneholder-485465" style="" ><div class="pasli pasli-135800 "  data-duration="5000" bid="135800" aid="485465"><script defer id="videoo-library" data-id="f8765b5a105057a9b8249290013e2b26457934dcf029381817949a82c1d6f2c0" src="https://static.videoo.tv/f8765b5a105057a9b8249290013e2b26457934dcf029381817949a82c1d6f2c0.js"></script></div></div></div></div></div>

<p style="text-align: justify;">Por su parte, las profesionales atenderán a la mujer de forma telefónica siempre que sea posible, salvo que se precise la tramitación administrativa a través del programa Atempro, solicitud de cambio de cerradura o que la mujer necesite del dispositivo de traducción. En el caso de que la atención tenga que ser presencial, se guardarán las medidas recomendadas como mantener la distancia de un metro y medio en la atención, ventilación de los espacios, medidas de higiene de manos y otros elementos de protección personal para las profesionales, además, se ha llevado a cabo una desinfección del Centro y la empresa responsable del servicio de limpieza, efectuará una desinfección diaria y exhaustiva del mismo.</p>
<p style="text-align: justify;">Para el concejal del área, Manu Martínez constituye “una prioridad municipal mantener la asistencia a las mujeres y menores víctimas de la violencia de género, más si cabe en estos días en los que el confinamiento en los hogares puede provocar mayores situaciones de indefensión, además, en nuestra ocupación diaria se encuentra también la atención a las trabajadoras de los recursos, quienes están dando lo mejor de ellas mismas en esta dura situación y a las que, no me cabe duda, la sociedad les está profundamente agradecida”.<span class="Apple-converted-space"> </span></p>
<p>&nbsp;</p>
</p>					
                    <div class="e3lan-post">					<div  class="paszone_container paszone-container-185539   " id="paszonecont_185539" style="overflow:hidden;  text-align:center;  " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-185539 " id="185539" style="overflow:hidden;  width:100%; height:auto;  text-align:center; "><div class="wppasrotate   paszoneholder-185539" style="" ><div class="pasli pasli-185540 "  data-duration="5000" bid="185540" aid="185539"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/BANNER-LAUREANO-ZAFRILLA.jpg?pas=4602455132003201130" alt="Mapfre" border="0"  /></div></div></div></div>

<div  class="paszone_container paszone-container-294777   " id="paszonecont_294777" style="overflow:hidden;    " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-294777 " id="294777" style="overflow:hidden;  width:100%; height:auto; display:inline-block;   "><div class="wppasrotate   paszoneholder-294777" style="" ><div class="pasli pasli-200756 "  data-duration="5000" bid="200756" aid="294777"><!-- www.eldigitaldealbacete.com/native -->
<div class="addoor-widget" id="addoor-widget-444"></div>
<script type="text/javascript" src="https://pubtags.addoor.net/lib/contags/contags.js"></script>
</div></div></div></div>				</div>	
                    
					
					
									</div><!-- .entry /-->
								<span style="display:none" class="updated">2020-03-20</span>
								<div style="display:none" class="vcard author"   ><strong class="fn" ><a href="https://www.eldigitaldealbacete.com/author/aris-comunicacion/" title="Entradas de El Digital de Albacete" rel="author">El Digital de Albacete</a></strong></div>
				<div class="share-post">
	<script>
	window.___gcfg = {lang: 'en-US'};
	(function(w, d, s) {
	  function go(){
		var js, fjs = d.getElementsByTagName(s)[0], load = function(url, id) {
		  if (d.getElementById(id)) {return;}
		  js = d.createElement(s); js.src = url; js.id = id;
		  fjs.parentNode.insertBefore(js, fjs);
		};
		load('//connect.facebook.net/en/all.js#xfbml=1', 'fbjssdk');
		load('https://apis.google.com/js/plusone.js', 'gplus1js');
		load('//platform.twitter.com/widgets.js', 'tweetjs');
	  }
	  if (w.addEventListener) { w.addEventListener("load", go, false); }
	  else if (w.attachEvent) { w.attachEvent("onload",go); }
	}(window, document, 'script'));
	</script>
	<ul>
			<li><a href="https://twitter.com/share" class="twitter-share-button" data-url="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" data-text="CORONAVIRUS | El Ayuntamiento garantiza la atención integral a las mujeres víctimas de la violencia de género en Albacete durante la crisis del CoVid-19" data-via="Eldigitalab" data-lang="en">tweet</a></li>
				<li>
			<div class="fb-like" data-href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" data-send="false" data-layout="button_count" data-width="90" data-show-faces="false"></div>
		</li>
				<li style="width:80px;"><div class="g-plusone" data-size="medium" data-href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/"></div>
		</li>
				<li><su:badge layout="2" location="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/"></su:badge>
			<script type="text/javascript">
				(function() {
					var li = document.createElement('script'); li.type = 'text/javascript'; li.async = true;
					li.src = ('https:' == document.location.protocol ? 'https:' : 'http:') + '//platform.stumbleupon.com/1/widgets.js';
					var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(li, s);
				})();
			</script>
		</li>
				<li><script src="https://platform.linkedin.com/in.js" type="text/javascript"></script><script type="IN/Share" data-url="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" data-counter="right"></script></li>
				<li style="width:80px;"><script type="text/javascript" src="https://assets.pinterest.com/js/pinit.js"></script><a href="https://pinterest.com/pin/create/button/?url=https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/&amp;media=https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Centro-de-la-Mujer-2-620x330.jpg" class="pin-it-button" count-layout="horizontal"><img class="lazy" border="0" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://assets.pinterest.com/images/PinExt.png" title="Pin It" /></a></li>
		</ul>
	<div class="clear"></div>
</div> <!-- .share-post -->

			</div><!-- .post-inner -->
		</article><!-- .post-listing -->
		



				<div class="post-navigation">
			<div class="post-previous"><a href="https://www.eldigitaldealbacete.com/2020/03/20/entran-en-vigor-las-medidas-extraordinarias-economico-financieras-y-de-refuerzo-de-medios-de-la-junta546825/" rel="prev"><span>Anterior:</span> Entran en vigor las medidas extraordinarias económico-financieras y de refuerzo de medios de la Junta</a></div>
			<div class="post-next"><a href="https://www.eldigitaldealbacete.com/2020/03/20/ultima-hora-asi-se-prepara-el-hospital-de-hellin-ante-el-pico-del-coronavirus/" rel="next"><span>Siguiente:</span> ÚLTIMA HORA | Así se prepara el Hospital de Hellín ante el pico del coronavirus</a></div>
		</div><!-- .post-navigation -->
		
		
			<section id="related_posts">
		<div class="block-head">
			<h3>Más noticias que te pueden interesar</h3><div class="stripe-line"></div>
		</div>
		<div class="post-listing">
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/20/ultima-hora-mas-de-300-infectados-por-coronavirus-y-28-muertos-en-albacete/" title="Enlace permanente a ÚLTIMA HORA | Más de 300 infectados por coronavirus y 28 muertos en Albacete" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/HOSPITAL_GENERAL_UNIVERSITARIO_DE_ALBACETEARCHIVO_ALBACETE-43-300x160.jpg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="noticias albacete sanidad coronavirus" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/HOSPITAL_GENERAL_UNIVERSITARIO_DE_ALBACETEARCHIVO_ALBACETE-43-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/HOSPITAL_GENERAL_UNIVERSITARIO_DE_ALBACETEARCHIVO_ALBACETE-43-620x330.jpg 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/ultima-hora-mas-de-300-infectados-por-coronavirus-y-28-muertos-en-albacete/" title="Enlace permanente a ÚLTIMA HORA | Más de 300 infectados por coronavirus y 28 muertos en Albacete" rel="bookmark">ÚLTIMA HORA | Más de 300 infectados por coronavirus y 28 muertos en Albacete</a></h3>
				<p class="post-meta"><span class="tie-date">20 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-ponen-en-marcha-en-albacete-una-cadena-para-confeccionar-mascarillas/" title="Enlace permanente a CORONAVIRUS | Ponen en marcha en Albacete una cadena para confeccionar mascarillas" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/80a9fa11-9fb8-4945-8a7d-511616dfa452-300x160.jpg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="Noticias Albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/80a9fa11-9fb8-4945-8a7d-511616dfa452-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/80a9fa11-9fb8-4945-8a7d-511616dfa452-620x330.jpg 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-ponen-en-marcha-en-albacete-una-cadena-para-confeccionar-mascarillas/" title="Enlace permanente a CORONAVIRUS | Ponen en marcha en Albacete una cadena para confeccionar mascarillas" rel="bookmark">CORONAVIRUS | Ponen en marcha en Albacete una cadena para confeccionar mascarillas</a></h3>
				<p class="post-meta"><span class="tie-date">20 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/20/entran-en-vigor-las-medidas-extraordinarias-economico-financieras-y-de-refuerzo-de-medios-de-la-junta546825/" title="Enlace permanente a Entran en vigor las medidas extraordinarias económico-financieras y de refuerzo de medios de la Junta" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/consejo-gobierno-castilla-la-mancha-paracetamol-300x160.jpg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="noticias castilla la mancha" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/consejo-gobierno-castilla-la-mancha-paracetamol-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/consejo-gobierno-castilla-la-mancha-paracetamol-620x330.jpg 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/entran-en-vigor-las-medidas-extraordinarias-economico-financieras-y-de-refuerzo-de-medios-de-la-junta546825/" title="Enlace permanente a Entran en vigor las medidas extraordinarias económico-financieras y de refuerzo de medios de la Junta" rel="bookmark">Entran en vigor las medidas extraordinarias económico-financieras y de refuerzo de medios de la Junta</a></h3>
				<p class="post-meta"><span class="tie-date">20 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/20/la-iniciativa-de-boom-para-apoyar-la-investigacion-del-coronavirus/" title="Enlace permanente a La iniciativa de ¡Boom! para apoyar la investigación del coronavirus" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/boom-dispersos-300x160.jpg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="noticias boom antena 3" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/boom-dispersos-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/boom-dispersos-620x330.jpg 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/la-iniciativa-de-boom-para-apoyar-la-investigacion-del-coronavirus/" title="Enlace permanente a La iniciativa de ¡Boom! para apoyar la investigación del coronavirus" rel="bookmark">La iniciativa de ¡Boom! para apoyar la investigación del coronavirus</a></h3>
				<p class="post-meta"><span class="tie-date">20 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/20/detenido-en-albacete-en-pleno-estado-de-alarma/" title="Enlace permanente a Detenido en Albacete en pleno Estado de Alarma" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/policia-local-nacional-300x160.jpg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="Noticias Albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/policia-local-nacional-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/policia-local-nacional-620x330.jpg 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/detenido-en-albacete-en-pleno-estado-de-alarma/" title="Enlace permanente a Detenido en Albacete en pleno Estado de Alarma" rel="bookmark">Detenido en Albacete en pleno Estado de Alarma</a></h3>
				<p class="post-meta"><span class="tie-date">20 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/20/video-un-sanitario-albaceteno-muestra-como-hay-que-quitarse-los-guantes-de-manera-correcta-para-evitar-contagiarse-de-coronavirus/" title="Enlace permanente a VÍDEO | Un sanitario albaceteño muestra cómo hay que quitarse los guantes de manera correcta para evitar contagiarse de Coronavirus" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/guantes-coronavirus-300x160.jpg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="Noticias Albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/guantes-coronavirus-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/guantes-coronavirus-620x330.jpg 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/video-un-sanitario-albaceteno-muestra-como-hay-que-quitarse-los-guantes-de-manera-correcta-para-evitar-contagiarse-de-coronavirus/" title="Enlace permanente a VÍDEO | Un sanitario albaceteño muestra cómo hay que quitarse los guantes de manera correcta para evitar contagiarse de Coronavirus" rel="bookmark">VÍDEO | Un sanitario albaceteño muestra cómo hay que quitarse los guantes de manera correcta para evitar contagiarse de Coronavirus</a></h3>
				<p class="post-meta"><span class="tie-date">20 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-luz-verde-a-que-la-policia-local-de-albacete-cuente-con-mas-efectivos-para-luchar-contra-el-covid19/" title="Enlace permanente a CORONAVIRUS | Luz verde a que la Policía Local de Albacete cuente con más efectivos para luchar contra el covid19" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/policia-local-300x160.jpg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/policia-local-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/policia-local-370x197.jpg 370w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/policia-local-184x98.jpg 184w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/policia-local.jpg 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-luz-verde-a-que-la-policia-local-de-albacete-cuente-con-mas-efectivos-para-luchar-contra-el-covid19/" title="Enlace permanente a CORONAVIRUS | Luz verde a que la Policía Local de Albacete cuente con más efectivos para luchar contra el covid19" rel="bookmark">CORONAVIRUS | Luz verde a que la Policía Local de Albacete cuente con más efectivos para luchar contra el covid19</a></h3>
				<p class="post-meta"><span class="tie-date">20 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-informacion-importante-para-la-limpieza-de-las-casas/" title="Enlace permanente a CORONAVIRUS | Información importante para la limpieza de las casas" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/coronavirus-6-300x160.jpg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="Noticias Albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/coronavirus-6-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/coronavirus-6-620x330.jpg 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-informacion-importante-para-la-limpieza-de-las-casas/" title="Enlace permanente a CORONAVIRUS | Información importante para la limpieza de las casas" rel="bookmark">CORONAVIRUS | Información importante para la limpieza de las casas</a></h3>
				<p class="post-meta"><span class="tie-date">20 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/20/marlaska-avisa-solo-se-permiten-ya-desplazamientos-esenciales-y-en-breve-bajara-la-curva-de-contagios/" title="Enlace permanente a Marlaska avisa: sólo se permiten ya desplazamientos esenciales y &#8220;en breve&#8221; bajará la curva de contagios" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/marlaska-coronavirus-300x160.jpg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="noticias albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/marlaska-coronavirus-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/marlaska-coronavirus-620x330.jpg 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/marlaska-avisa-solo-se-permiten-ya-desplazamientos-esenciales-y-en-breve-bajara-la-curva-de-contagios/" title="Enlace permanente a Marlaska avisa: sólo se permiten ya desplazamientos esenciales y &#8220;en breve&#8221; bajará la curva de contagios" rel="bookmark">Marlaska avisa: sólo se permiten ya desplazamientos esenciales y &#8220;en breve&#8221; bajará la curva de contagios</a></h3>
				<p class="post-meta"><span class="tie-date">20 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/20/el-sector-de-la-limpieza-pide-epis-para-contener-el-contagio-y-la-no-suspension-de-los-contratos-publicos/" title="Enlace permanente a El sector de la limpieza pide EPI&#8217;s para contener el contagio y la no suspensión de los contratos públicos" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2017/09/REPORTAJE_SERVICIO_LIMPIEZA_FERIA_2017_NOTICIA_ALBACETE-24-300x160.jpg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="noticias albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2017/09/REPORTAJE_SERVICIO_LIMPIEZA_FERIA_2017_NOTICIA_ALBACETE-24-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2017/09/REPORTAJE_SERVICIO_LIMPIEZA_FERIA_2017_NOTICIA_ALBACETE-24-768x407.jpg 768w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2017/09/REPORTAJE_SERVICIO_LIMPIEZA_FERIA_2017_NOTICIA_ALBACETE-24-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2017/09/REPORTAJE_SERVICIO_LIMPIEZA_FERIA_2017_NOTICIA_ALBACETE-24.jpg 1200w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/el-sector-de-la-limpieza-pide-epis-para-contener-el-contagio-y-la-no-suspension-de-los-contratos-publicos/" title="Enlace permanente a El sector de la limpieza pide EPI&#8217;s para contener el contagio y la no suspensión de los contratos públicos" rel="bookmark">El sector de la limpieza pide EPI&#8217;s para contener el contagio y la no suspensión de los contratos públicos</a></h3>
				<p class="post-meta"><span class="tie-date">20 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/20/cepyme-cifra-en-300-000-empleos-los-que-se-perderan-en-2020-si-la-crisis-del-coronavirus-dura-un-mes/" title="Enlace permanente a Cepyme cifra en 300.000 empleos los que se perderán en 2020 si la crisis del coronavirus dura un mes" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/presidente-cepyme_gerardo-300x160.jpg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="noticias albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/presidente-cepyme_gerardo-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/presidente-cepyme_gerardo-620x330.jpg 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/cepyme-cifra-en-300-000-empleos-los-que-se-perderan-en-2020-si-la-crisis-del-coronavirus-dura-un-mes/" title="Enlace permanente a Cepyme cifra en 300.000 empleos los que se perderán en 2020 si la crisis del coronavirus dura un mes" rel="bookmark">Cepyme cifra en 300.000 empleos los que se perderán en 2020 si la crisis del coronavirus dura un mes</a></h3>
				<p class="post-meta"><span class="tie-date">20 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/20/muere-el-periodista-deportivo-chema-candela-por-coronavirus/" title="Enlace permanente a Muere el periodista deportivo Chema Candela por coronavirus" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/photo_2020-03-20-08.16.42-e1584688648899-300x160.jpeg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="noticias deportes coronavirus" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/photo_2020-03-20-08.16.42-e1584688648899-300x160.jpeg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/photo_2020-03-20-08.16.42-e1584688648899-620x330.jpeg 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/muere-el-periodista-deportivo-chema-candela-por-coronavirus/" title="Enlace permanente a Muere el periodista deportivo Chema Candela por coronavirus" rel="bookmark">Muere el periodista deportivo Chema Candela por coronavirus</a></h3>
				<p class="post-meta"><span class="tie-date">20 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/20/un-estudio-en-2007-advirtio-de-que-los-coronavirus-de-murcielagos-eran-una-bomba-de-relojeria-en-china/" title="Enlace permanente a Un estudio en 2007 advirtió de que los coronavirus de murciélagos eran una &#8220;bomba de relojería&#8221; en China" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/murciélago-300x160.jpg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="noticias albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/murciélago-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/murciélago-620x330.jpg 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/un-estudio-en-2007-advirtio-de-que-los-coronavirus-de-murcielagos-eran-una-bomba-de-relojeria-en-china/" title="Enlace permanente a Un estudio en 2007 advirtió de que los coronavirus de murciélagos eran una &#8220;bomba de relojería&#8221; en China" rel="bookmark">Un estudio en 2007 advirtió de que los coronavirus de murciélagos eran una &#8220;bomba de relojería&#8221; en China</a></h3>
				<p class="post-meta"><span class="tie-date">20 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/20/que-paso-un-20-de-marzo/" title="Enlace permanente a ¿Qué pasó un 20 de marzo?" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/01/RELOJ_ARCHIVO_ALBACETE-12-300x160.jpg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/01/RELOJ_ARCHIVO_ALBACETE-12-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/01/RELOJ_ARCHIVO_ALBACETE-12-620x330.jpg 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/que-paso-un-20-de-marzo/" title="Enlace permanente a ¿Qué pasó un 20 de marzo?" rel="bookmark">¿Qué pasó un 20 de marzo?</a></h3>
				<p class="post-meta"><span class="tie-date">20 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/19/coronavirus-sanidad-valora-abrir-la-residencia-de-penas-de-san-pedro-como-soporte/" title="Enlace permanente a CORONAVIRUS | Sanidad valora abrir la Residencia de Peñas de San Pedro como soporte a la atención ante el COVID-19" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/RESIDENCIA_ALAMOS_PEÑAS_DE_SAN_PEDRO_NOTICIA_ALBACETE-36-300x160.jpg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="residencia Peñas de San Pedro noticias" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/RESIDENCIA_ALAMOS_PEÑAS_DE_SAN_PEDRO_NOTICIA_ALBACETE-36-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/RESIDENCIA_ALAMOS_PEÑAS_DE_SAN_PEDRO_NOTICIA_ALBACETE-36-620x330.jpg 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/19/coronavirus-sanidad-valora-abrir-la-residencia-de-penas-de-san-pedro-como-soporte/" title="Enlace permanente a CORONAVIRUS | Sanidad valora abrir la Residencia de Peñas de San Pedro como soporte a la atención ante el COVID-19" rel="bookmark">CORONAVIRUS | Sanidad valora abrir la Residencia de Peñas de San Pedro como soporte a la atención ante el COVID-19</a></h3>
				<p class="post-meta"><span class="tie-date">19 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/19/coronavirus-video-de-los-heroes-con-pijama-blanco-de-urgencias-del-hospital-de-albacete/" title="Enlace permanente a CORONAVIRUS | Vídeo de los &#8220;héroes con pijama blanco&#8221; de Urgencias del Hospital de Albacete" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Captura-de-pantalla-2020-03-19-a-las-17.29.32-300x160.png" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="Noticias Albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Captura-de-pantalla-2020-03-19-a-las-17.29.32-300x160.png 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Captura-de-pantalla-2020-03-19-a-las-17.29.32-620x330.png 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/19/coronavirus-video-de-los-heroes-con-pijama-blanco-de-urgencias-del-hospital-de-albacete/" title="Enlace permanente a CORONAVIRUS | Vídeo de los &#8220;héroes con pijama blanco&#8221; de Urgencias del Hospital de Albacete" rel="bookmark">CORONAVIRUS | Vídeo de los &#8220;héroes con pijama blanco&#8221; de Urgencias del Hospital de Albacete</a></h3>
				<p class="post-meta"><span class="tie-date">19 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/19/la-policia-nacional-vigilara-en-las-estaciones-de-tren-que-solo-se-viaje-por-las-causas-permitidas/" title="Enlace permanente a La Policía Nacional vigilará en las estaciones de tren que sólo se viaje por las causas permitidas" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2017/10/ESTACION_TREN_VIALIA_ESTACION_LOS_LLANOS_ALBACETE-03-300x160.jpg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="noticias albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2017/10/ESTACION_TREN_VIALIA_ESTACION_LOS_LLANOS_ALBACETE-03-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2017/10/ESTACION_TREN_VIALIA_ESTACION_LOS_LLANOS_ALBACETE-03-768x407.jpg 768w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2017/10/ESTACION_TREN_VIALIA_ESTACION_LOS_LLANOS_ALBACETE-03-620x330.jpg 620w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2017/10/ESTACION_TREN_VIALIA_ESTACION_LOS_LLANOS_ALBACETE-03.jpg 1200w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/19/la-policia-nacional-vigilara-en-las-estaciones-de-tren-que-solo-se-viaje-por-las-causas-permitidas/" title="Enlace permanente a La Policía Nacional vigilará en las estaciones de tren que sólo se viaje por las causas permitidas" rel="bookmark">La Policía Nacional vigilará en las estaciones de tren que sólo se viaje por las causas permitidas</a></h3>
				<p class="post-meta"><span class="tie-date">19 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/19/fiscalia-se-compromete-a-actuar-ante-las-muertes-de-ancianos-en-residencias/" title="Enlace permanente a Fiscalía se compromete a actuar ante las muertes de ancianos en residencias" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/RESIDENCIA_DE_MAYORES_NUÑEZ_DE_BALBOA_NOTICIA_ALBACETE-08-300x160.jpg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/RESIDENCIA_DE_MAYORES_NUÑEZ_DE_BALBOA_NOTICIA_ALBACETE-08-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/RESIDENCIA_DE_MAYORES_NUÑEZ_DE_BALBOA_NOTICIA_ALBACETE-08-620x330.jpg 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/19/fiscalia-se-compromete-a-actuar-ante-las-muertes-de-ancianos-en-residencias/" title="Enlace permanente a Fiscalía se compromete a actuar ante las muertes de ancianos en residencias" rel="bookmark">Fiscalía se compromete a actuar ante las muertes de ancianos en residencias</a></h3>
				<p class="post-meta"><span class="tie-date">19 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/19/ultima-hora-asi-ha-preparado-sanidad-el-hospital-de-albacete-y-el-perpetuo-socorro-ante-el-pico-del-coronavirus/" title="Enlace permanente a Así ha preparado Sanidad el Hospital de Albacete y el Perpetuo Socorro ante el pico del coronavirus" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/FOTO-SESCAM.-Reorganización-GAI-AB-3-300x160.jpeg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/FOTO-SESCAM.-Reorganización-GAI-AB-3-300x160.jpeg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/FOTO-SESCAM.-Reorganización-GAI-AB-3-620x330.jpeg 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/19/ultima-hora-asi-ha-preparado-sanidad-el-hospital-de-albacete-y-el-perpetuo-socorro-ante-el-pico-del-coronavirus/" title="Enlace permanente a Así ha preparado Sanidad el Hospital de Albacete y el Perpetuo Socorro ante el pico del coronavirus" rel="bookmark">Así ha preparado Sanidad el Hospital de Albacete y el Perpetuo Socorro ante el pico del coronavirus</a></h3>
				<p class="post-meta"><span class="tie-date">19 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/19/fotos-asi-estan-ahora-las-urgencias-del-hospital-de-albacete/" title="Enlace permanente a FOTOS | Así están ahora las Urgencias del Hospital de Albacete" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/IMAGE-2020-03-19-145106-300x160.jpg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="noticias albacete" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/IMAGE-2020-03-19-145106-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/IMAGE-2020-03-19-145106-620x330.jpg 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/19/fotos-asi-estan-ahora-las-urgencias-del-hospital-de-albacete/" title="Enlace permanente a FOTOS | Así están ahora las Urgencias del Hospital de Albacete" rel="bookmark">FOTOS | Así están ahora las Urgencias del Hospital de Albacete</a></h3>
				<p class="post-meta"><span class="tie-date">19 marzo, 2020</span></p>
			</div>
						<div class="related-item">
							
				<div class="post-thumbnail">
					<a href="https://www.eldigitaldealbacete.com/2020/03/19/la-uclm-pone-todas-sus-instalaciones-en-albacete-a-disposicion-de-sanidad/" title="Enlace permanente a La UCLM pone todas sus instalaciones en Albacete a disposición de Sanidad" rel="bookmark">
						<img width="300" height="160" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20160'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/03/FACULTAD_DE_MEDICINA_UCLM_ARCHIVO_ALBACETE-02-300x160.jpg" class="attachment-tie-large size-tie-large wp-post-image lazy" alt="noticias uclm" data-srcset="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/03/FACULTAD_DE_MEDICINA_UCLM_ARCHIVO_ALBACETE-02-300x160.jpg 300w, https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/03/FACULTAD_DE_MEDICINA_UCLM_ARCHIVO_ALBACETE-02-620x330.jpg 620w" data-sizes="(max-width: 300px) 100vw, 300px" />											</a>
				</div><!-- post-thumbnail /-->
							
				<h3><a href="https://www.eldigitaldealbacete.com/2020/03/19/la-uclm-pone-todas-sus-instalaciones-en-albacete-a-disposicion-de-sanidad/" title="Enlace permanente a La UCLM pone todas sus instalaciones en Albacete a disposición de Sanidad" rel="bookmark">La UCLM pone todas sus instalaciones en Albacete a disposición de Sanidad</a></h3>
				<p class="post-meta"><span class="tie-date">19 marzo, 2020</span></p>
			</div>
						<div class="clear"></div>
		</div>
	</section>
	
		
				<div id="comments">



	<div id="respond" class="comment-respond">
		<h3 id="reply-title" class="comment-reply-title">Comentar <small><a rel="nofollow" id="cancel-comment-reply-link" href="/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/#respond" style="display:none;">Eliminar comentario</a></small></h3><form action="https://www.eldigitaldealbacete.com/wp-comments-post.php" method="post" id="commentform" class="comment-form"><p class="comment-notes">Su dirección de correo electrónico no será publicada.Los campos necesarios están marcados <span class="required">*</span></p><p class="comment-form-comment"><label for="comment">Comentario</label> <textarea id="comment" name="comment" cols="45" rows="8" maxlength="65525" required="required"></textarea></p><p class="comment-form-author"><label for="author">Nombre</label> <span class="required">*</span><input id="author" name="author" type="text" value="" size="30" aria-required='true' /></p>
<p class="comment-form-email"><label for="email">Email</label> <span class="required">*</span><input id="email" name="email" type="text" value="" size="30" aria-required='true' /></p>
<p class="comment-form-url"><label for="url">Sitio Web</label><input id="url" name="url" type="text" value="" size="30" /></p>
<p class="comment-form-cookies-consent"><input id="wp-comment-cookies-consent" name="wp-comment-cookies-consent" type="checkbox" value="yes" /> <label for="wp-comment-cookies-consent">Guardar mi nombre, correo electrónico y sitio web en este navegador para la próxima vez que haga un comentario.</label></p>
<p class="cptch_block"><script class="cptch_to_remove">
				(function( timeout ) {
					setTimeout(
						function() {
							var notice = document.getElementById("cptch_time_limit_notice_59");
							if ( notice )
								notice.style.display = "block";
						},
						timeout
					);
				})(120000);
			</script>
			<span id="cptch_time_limit_notice_59" class="cptch_time_limit_notice cptch_to_remove">Límite de tiempo se agote. Por favor, recargar el CAPTCHA por favor.</span><span class="cptch_wrap cptch_recognition">
				<label class="cptch_label" for="cptch_input_59"><span class="cptch_images_wrap"><span class="cptch_span">nueve</span><span class="cptch_span">tres</span><span class="cptch_span">cuatro</span><span class="cptch_span">5</span><span class="cptch_span">cinco</span></span>
				<input id="cptch_input_59" class="cptch_input cptch_wp_comments" type="text" autocomplete="off" name="cptch_number" value="" maxlength="5" size="5" aria-required="true" required="required" style="margin-bottom:0;font-size: 12px;max-width:100%;" />
				<input type="hidden" name="cptch_result" value="8IU4iet1" /><input type="hidden" name="cptch_time" value="1584703822" />
					<input type="hidden" name="cptch_form" value="wp_comments" />
				</label><span class="cptch_reload_button_wrap hide-if-no-js">
					<noscript>
						<style type="text/css">
							.hide-if-no-js {
								display: none !important;
							}
						</style>
					</noscript>
					<span class="cptch_reload_button dashicons dashicons-update"></span>
				</span></span></p><p class="form-submit"><input name="submit" type="submit" id="submit" class="submit" value="Publicar Comentario" /> <input type='hidden' name='comment_post_ID' value='546895' id='comment_post_ID' />
<input type='hidden' name='comment_parent' id='comment_parent' value='0' />
</p></form>	</div><!-- #respond -->
	
</div><!-- #comments -->

	</div><!-- .content -->
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
			<div  class="paszone_container paszone-container-352618   " id="paszonecont_352618" style="overflow:hidden; max-width:160px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-352618 " id="352618" style="overflow:hidden; width:160px; height:620px;  "><div class="wppasrotate   paszoneholder-352618" style="" ><div class="pasli pasli-352607 "  data-duration="5000" bid="352607" aid="352618"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=MzUyNjA3&amp;pasZONE=MzUyNjE4" target="_blank" ><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/620x163.gif?pas=1229420562003201130" alt="hyunday" border="0"  /></a></div></div></div></div>			</div>
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
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/ultima-hora-mas-de-300-infectados-por-coronavirus-y-28-muertos-en-albacete/">ÚLTIMA HORA | Más de 300 infectados por coronavirus y 28 muertos en Albacete</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/los-casos-de-coronavirus-en-espana-rozan-los-20-000-y-se-superan-las-1-000-muertes/">Los casos de coronavirus en España rozan los 20.000 y se superan las 1.000 muertes</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-ponen-en-marcha-en-albacete-una-cadena-para-confeccionar-mascarillas/">CORONAVIRUS | Ponen en marcha en Albacete una cadena para confeccionar mascarillas</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/ultima-hora-asi-se-prepara-el-hospital-de-hellin-ante-el-pico-del-coronavirus/">ÚLTIMA HORA | Así se prepara el Hospital de Hellín ante el pico del coronavirus</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/">CORONAVIRUS | El Ayuntamiento garantiza la atención integral a las mujeres víctimas de la violencia de género en Albacete durante la crisis del CoVid-19</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/entran-en-vigor-las-medidas-extraordinarias-economico-financieras-y-de-refuerzo-de-medios-de-la-junta546825/">Entran en vigor las medidas extraordinarias económico-financieras y de refuerzo de medios de la Junta</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/herido-el-conductor-de-un-camion-tras-volcar-en-castilla-la-mancha/">Herido el conductor de un camión tras volcar en Castilla-La Mancha</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/se-entrega-un-hombre-tras-matar-a-su-pareja-delante-de-sus-hijos/">Se entrega un hombre tras matar a su pareja delante de sus hijos</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/la-iniciativa-de-boom-para-apoyar-la-investigacion-del-coronavirus/">La iniciativa de ¡Boom! para apoyar la investigación del coronavirus</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-un-estudio-desvela-el-elevado-porcentaje-de-madrilenos-que-huyeron-a-castilla-la-mancha-horas-antes-de-decretarse-el-estado-de-alarma/">CORONAVIRUS | Un estudio desvela el elevado porcentaje de &#8220;madrileños&#8221; que huyeron a Castilla-La Mancha horas antes de decretarse el Estado de Alarma</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-se-paso-3-pueblos-en-castilla-la-mancha-en-pleno-estado-de-alarma/">CORONAVIRUS | &#8220;Se pasó 3 pueblos&#8221; en Castilla-La Mancha en pleno Estado de Alarma</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/detenido-en-albacete-en-pleno-estado-de-alarma/">Detenido en Albacete en pleno Estado de Alarma</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/video-un-sanitario-albaceteno-muestra-como-hay-que-quitarse-los-guantes-de-manera-correcta-para-evitar-contagiarse-de-coronavirus/">VÍDEO | Un sanitario albaceteño muestra cómo hay que quitarse los guantes de manera correcta para evitar contagiarse de Coronavirus</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-luz-verde-a-que-la-policia-local-de-albacete-cuente-con-mas-efectivos-para-luchar-contra-el-covid19/">CORONAVIRUS | Luz verde a que la Policía Local de Albacete cuente con más efectivos para luchar contra el covid19</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/fotos-asi-fabrican-mascarillas-contra-el-coronavirus-en-castilla-la-mancha/">FOTOS | Así fabrican mascarillas contra el Coronavirus en Castilla-La Mancha</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/los-agricultores-y-ganaderos-de-la-provincia-de-albacete-reciben-un-importante-pago/">Los agricultores y ganaderos de la provincia de Albacete reciben un importante pago</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-informacion-importante-para-la-limpieza-de-las-casas/">CORONAVIRUS | Información importante para la limpieza de las casas</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/marlaska-avisa-solo-se-permiten-ya-desplazamientos-esenciales-y-en-breve-bajara-la-curva-de-contagios/">Marlaska avisa: sólo se permiten ya desplazamientos esenciales y &#8220;en breve&#8221; bajará la curva de contagios</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/el-sector-de-la-limpieza-pide-epis-para-contener-el-contagio-y-la-no-suspension-de-los-contratos-publicos/">El sector de la limpieza pide EPI&#8217;s para contener el contagio y la no suspensión de los contratos públicos</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/cepyme-cifra-en-300-000-empleos-los-que-se-perderan-en-2020-si-la-crisis-del-coronavirus-dura-un-mes/">Cepyme cifra en 300.000 empleos los que se perderán en 2020 si la crisis del coronavirus dura un mes</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/muere-el-periodista-deportivo-chema-candela-por-coronavirus/">Muere el periodista deportivo Chema Candela por coronavirus</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/un-estudio-en-2007-advirtio-de-que-los-coronavirus-de-murcielagos-eran-una-bomba-de-relojeria-en-china/">Un estudio en 2007 advirtió de que los coronavirus de murciélagos eran una &#8220;bomba de relojería&#8221; en China</a></h3>
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
						<div class="widget-container">			<div class="textwidget"><div  class="paszone_container paszone-container-545848   " id="paszonecont_545848" style="overflow:hidden; max-width:300px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-545848 " id="545848" style="overflow:hidden; width:300px; height:250px;  "><div class="wppasrotate   paszoneholder-545848" style="" ><div class="pasli pasli-545844 "  data-duration="5000" bid="545844" aid="545848"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NTQ1ODQ0&amp;pasZONE=NTQ1ODQ4" target="_blank" rel="noopener noreferrer"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/coronavirus-clm-Recomendaciones-300x250-1.gif?pas=2816349752003201130" alt="coronavirus junta 1" border="0"  /></a></div></div></div></div>
</div>
		</div></div><!-- .widget /--><div id="text-681" class="widget widget_text"><div class="widget-top"><h4> </h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><div  class="paszone_container paszone-container-455617   " id="paszonecont_455617" style="overflow:hidden; max-width:300px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-455617 " id="455617" style="overflow:hidden; width:300px; height:300px;  "><div class="wppasrotate   paszoneholder-455617" style="" ><div class="pasli pasli-464217 "  data-duration="5000" bid="464217" aid="455617"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NDY0MjE3&amp;pasZONE=NDU1NjE3" target="_blank" rel="noopener noreferrer"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/GENERICO-MARZO.gif?pas=14004456972003201130" alt="CONACO" border="0"  /></a></div></div></div></div>
</div>
		</div></div><!-- .widget /--><div id="text-741" class="widget widget_text"><div class="widget-top"><h4> </h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><p><a href="https://www.eldigitaldealbacete.com/2020/03/13/coronavirus-declaracion-institucional-del-alcalde-de-albacete-tras-la-proclamacion-del-estado-de-alarma-por-parte-del-gobierno/"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Gif-medidas-300.gif" /></a></p>
</div>
		</div></div><!-- .widget /--><div id="text-684" class="widget widget_text"><div class="widget-top"><h4> </h4><div class="stripe-line"></div></div>
						<div class="widget-container">			<div class="textwidget"><div  class="paszone_container paszone-container-464220   " id="paszonecont_464220" style="overflow:hidden; max-width:300px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-464220 " id="464220" style="overflow:hidden; width:300px; height:300px;  "><div class="wppasrotate   paszoneholder-464220" style="" ><div class="pasli pasli-463236 "  data-duration="5000" bid="463236" aid="464220"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NDYzMjM2&amp;pasZONE=NDY0MjIw" target="_blank" rel="noopener noreferrer"><img class="lazy" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201%201'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/ANBELOSORAL_banner.gif?pas=6246835172003201130" alt="ANBELO SOLAR" border="0"  /></a></div></div></div></div>
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
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/ultima-hora-mas-de-300-infectados-por-coronavirus-y-28-muertos-en-albacete/" title="Enlace permanente a ÚLTIMA HORA | Más de 300 infectados por coronavirus y 28 muertos en Albacete" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/HOSPITAL_GENERAL_UNIVERSITARIO_DE_ALBACETEARCHIVO_ALBACETE-43-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="noticias albacete sanidad coronavirus" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/ultima-hora-mas-de-300-infectados-por-coronavirus-y-28-muertos-en-albacete/">ÚLTIMA HORA | Más de 300 infectados por coronavirus y 28 muertos en Albacete</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-ponen-en-marcha-en-albacete-una-cadena-para-confeccionar-mascarillas/" title="Enlace permanente a CORONAVIRUS | Ponen en marcha en Albacete una cadena para confeccionar mascarillas" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/80a9fa11-9fb8-4945-8a7d-511616dfa452-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="Noticias Albacete" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-ponen-en-marcha-en-albacete-una-cadena-para-confeccionar-mascarillas/">CORONAVIRUS | Ponen en marcha en Albacete una cadena para confeccionar mascarillas</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" title="Enlace permanente a CORONAVIRUS | El Ayuntamiento garantiza la atención integral a las mujeres víctimas de la violencia de género en Albacete durante la crisis del CoVid-19" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Centro-de-la-Mujer-2-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="Noticias Albacete" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/">CORONAVIRUS | El Ayuntamiento garantiza la atención integral a las mujeres víctimas de la violencia de género en Albacete durante la crisis del CoVid-19</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/entran-en-vigor-las-medidas-extraordinarias-economico-financieras-y-de-refuerzo-de-medios-de-la-junta546825/" title="Enlace permanente a Entran en vigor las medidas extraordinarias económico-financieras y de refuerzo de medios de la Junta" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/consejo-gobierno-castilla-la-mancha-paracetamol-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="noticias castilla la mancha" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/entran-en-vigor-las-medidas-extraordinarias-economico-financieras-y-de-refuerzo-de-medios-de-la-junta546825/">Entran en vigor las medidas extraordinarias económico-financieras y de refuerzo de medios de la Junta</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/la-iniciativa-de-boom-para-apoyar-la-investigacion-del-coronavirus/" title="Enlace permanente a La iniciativa de ¡Boom! para apoyar la investigación del coronavirus" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/boom-dispersos-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="noticias boom antena 3" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/la-iniciativa-de-boom-para-apoyar-la-investigacion-del-coronavirus/">La iniciativa de ¡Boom! para apoyar la investigación del coronavirus</a></h3>
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
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/19/video-los-tambores-de-hellin-redoblan-en-los-balcones/" title="Enlace permanente a VIDEO | Los tambores de Hellín redoblan en los balcones" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2018/03/SEMANA_SANTA_HELLIN_TAMBORADA_PROCESION_TAMBOR_MEDINACELI_NOTICIA_ALBACETE-84-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/19/video-los-tambores-de-hellin-redoblan-en-los-balcones/">VIDEO | Los tambores de Hellín redoblan en los balcones</a></h3>
	 <span class="date"><span class="tie-date">19 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/19/coronavirus-molinicos-se-resiste-a-no-interpretar-su-himno-el-dia-de-su-patron/" title="Enlace permanente a CORONAVIRUS | Molinicos se resiste a no interpretar su himno el día de su patrón" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2018/11/Molinicos-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="Noticias Albacete" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/19/coronavirus-molinicos-se-resiste-a-no-interpretar-su-himno-el-dia-de-su-patron/">CORONAVIRUS | Molinicos se resiste a no interpretar su himno el día de su patrón</a></h3>
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
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/herido-el-conductor-de-un-camion-tras-volcar-en-castilla-la-mancha/" title="Enlace permanente a Herido el conductor de un camión tras volcar en Castilla-La Mancha" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/AMBULANCIA_SVB_SESCAM_ARCHIVO_ALBACETE-22-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="noticias castilla la mancha albacete accidente suceso sanidad" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/herido-el-conductor-de-un-camion-tras-volcar-en-castilla-la-mancha/">Herido el conductor de un camión tras volcar en Castilla-La Mancha</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-un-estudio-desvela-el-elevado-porcentaje-de-madrilenos-que-huyeron-a-castilla-la-mancha-horas-antes-de-decretarse-el-estado-de-alarma/" title="Enlace permanente a CORONAVIRUS | Un estudio desvela el elevado porcentaje de &#8220;madrileños&#8221; que huyeron a Castilla-La Mancha horas antes de decretarse el Estado de Alarma" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/09/CARRETERAS_TRÁFICO_AUTOVÍA_ARCHIVO_ALBACETE-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-un-estudio-desvela-el-elevado-porcentaje-de-madrilenos-que-huyeron-a-castilla-la-mancha-horas-antes-de-decretarse-el-estado-de-alarma/">CORONAVIRUS | Un estudio desvela el elevado porcentaje de &#8220;madrileños&#8221; que huyeron a Castilla-La Mancha horas antes de decretarse el Estado de Alarma</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-se-paso-3-pueblos-en-castilla-la-mancha-en-pleno-estado-de-alarma/" title="Enlace permanente a CORONAVIRUS | &#8220;Se pasó 3 pueblos&#8221; en Castilla-La Mancha en pleno Estado de Alarma" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Policia-local-ciudad-real.-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="Noticias Castilla-La Mancha" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-se-paso-3-pueblos-en-castilla-la-mancha-en-pleno-estado-de-alarma/">CORONAVIRUS | &#8220;Se pasó 3 pueblos&#8221; en Castilla-La Mancha en pleno Estado de Alarma</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/20/fotos-asi-fabrican-mascarillas-contra-el-coronavirus-en-castilla-la-mancha/" title="Enlace permanente a FOTOS | Así fabrican mascarillas contra el Coronavirus en Castilla-La Mancha" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/coronavirus-mascarilla-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="Noticias Castilla-La Mancha" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/20/fotos-asi-fabrican-mascarillas-contra-el-coronavirus-en-castilla-la-mancha/">FOTOS | Así fabrican mascarillas contra el Coronavirus en Castilla-La Mancha</a></h3>
	 <span class="date"><span class="tie-date">20 marzo, 2020</span></span>
</li>
<li>
			<div class="post-thumbnail">
			<a href="https://www.eldigitaldealbacete.com/2020/03/19/ultima-hora-tragica-muerte-de-un-nino-de-10-anos-en-castilla-la-mancha/" title="Enlace permanente a ÚLTIMA HORA | Trágica muerte de un niño de 10 años en Castilla-La Mancha" rel="bookmark"><img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" data-src="https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/02/AMBULANCIA_SVB_SESCAM_ARCHIVO_ALBACETE-22-70x70.jpg" class="attachment-tie-small size-tie-small wp-post-image lazy" alt="noticias castilla la mancha albacete accidente suceso sanidad" /></a>
		</div><!-- post-thumbnail /-->
		<h3><a href="https://www.eldigitaldealbacete.com/2020/03/19/ultima-hora-tragica-muerte-de-un-nino-de-10-anos-en-castilla-la-mancha/">ÚLTIMA HORA | Trágica muerte de un niño de 10 años en Castilla-La Mancha</a></h3>
	 <span class="date"><span class="tie-date">19 marzo, 2020</span></span>
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
        
<script type='text/javascript'>
/* <![CDATA[ */
var adsforwp_obj = {"ajax_url":"https://www.eldigitaldealbacete.com/wp-admin/admin-ajax.php","adsforwp_front_nonce":"179bc692d6"};
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
var tie = {"go_to":"Ir a...","ajaxurl":"https://www.eldigitaldealbacete.com/wp-admin/admin-ajax.php","your_rating":"Su Valoraci\u00f3n:","is_singular":"1","reading_indicator":""};
/* ]]> */
</script>
<script type='text/javascript' src='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/themes/jarida/js/tie-scripts.js?ver=5.3.2'></script>
<script type='text/javascript' src='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/themes/jarida/js/validation.js?ver=5.3.2'></script>
<script type='text/javascript' src='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/themes/jarida-child/js/ga_gallery.js?ver=1.2'></script>
<script type='text/javascript' src='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-includes/js/comment-reply.min.js?ver=5.3.2'></script>
<script type='text/javascript' src='https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-includes/js/wp-embed.min.js?ver=5.3.2'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var cptch_vars = {"nonce":"bd10402464","ajaxurl":"https://www.eldigitaldealbacete.com/wp-admin/admin-ajax.php","enlarge":""};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.eldigitaldealbacete.com/wp-content/plugins/captcha/js/front_end_script.js?ver=5.3.2'></script>
<script type="text/javascript" id="slb_context">/* <![CDATA[ */if ( !!window.jQuery ) {(function(\$){\$(document).ready(function(){if ( !!window.SLB ) { {\$.extend(SLB, {"context":["public","user_guest"]});} }})})(jQuery);}/* ]]> */</script>
<div  class="paszone_container paszone-container-534331   " id="paszonecont_534331" style="overflow:hidden;    " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-534331 " id="534331" style="overflow:hidden;  width:100%; height:auto; display:inline-block;   "><div class="wppasrotate   paszoneholder-534331" style="width:100%; height:100%;" ></div></div></div><script>document.addEventListener("DOMContentLoaded",function() {if (typeof LazyLoad !== "undefined") {window.w3tc_lazyload=new LazyLoad(window.lazyLoadOptions)}})</script></body>
</html>

<!--
Performance optimized by W3 Total Cache. Learn more: https://www.w3-edge.com/products/

Page Caching using disk: enhanced 
Red de Entrega de Contenido vía cdn.oondeo.es/www.eldigitaldealbacete.com
Lazy Loading

Served from: www.eldigitaldealbacete.com @ 2020-03-20 12:30:22 by W3 Total Cache
-->''';
  http.Response response;
  setUp(() async{
    mockHttpClient = MockHttpClient();
    httpGetter = httpGetterImpl(client: mockHttpClient);

  });

  group('access url',(){
    test('should return document on url', () async{
      response = await http.get(url);
      when(mockHttpClient.get(any)).thenAnswer((_) async => response);


      final dom.Document document = await httpGetter.accessURL(url);


      verify(mockHttpClient.get(url));
      final dom.Document expected = parser.parse(html);
      //Problem with https parsing somewhere
      expect(document.body.innerHtml.substring(0,100000), expected.body.innerHtml.substring(0,100000));
    });
    test('should throuw http error with right message when page does not return 200', () async{
      response = http.Response("body",404);

      when(mockHttpClient.get(any)).thenAnswer((_) async => response);

      final call = httpGetter.accessURL;


      expect(() => call(url), throwsA(predicate((e)=> e is HttpException && e.message=='Page $url is not available')));
//      verify(mockHttpClient.get(url));
    });

  });
}