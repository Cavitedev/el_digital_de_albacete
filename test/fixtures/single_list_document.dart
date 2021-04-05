import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

final dom.Document expected = parser.parse(_html);
const String _html = '''<!DOCTYPE html>
<html lang="es" class="" data-skin="light">
<head>
	<meta charset="UTF-8" />
	<link rel="profile" href="http://gmpg.org/xfn/11" />
	
<meta http-equiv='x-dns-prefetch-control' content='on'>
<link rel='dns-prefetch' href='//cdnjs.cloudflare.com' />
<link rel='dns-prefetch' href='//ajax.googleapis.com' />
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel='dns-prefetch' href='//fonts.gstatic.com' />
<link rel='dns-prefetch' href='//s.gravatar.com' />
<link rel='dns-prefetch' href='//www.google-analytics.com' />
<link rel='preload' as='image' href='https://www.eldigitaldealbacete.com/wp-content/uploads/2020/02/logo-el-digital-de-albacete-cabecera-2-4.jpg'>
<link rel='preload' as='image' href='https://www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Centro-de-la-Mujer-2.jpg'>
<link rel='preload' as='font' href='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/fonts/tielabs-fonticon/tielabs-fonticon.woff' type='font/woff' crossorigin='anonymous' />
<link rel='preload' as='font' href='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/fonts/fontawesome/fa-solid-900.woff2' type='font/woff2' crossorigin='anonymous' />
<link rel='preload' as='font' href='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/fonts/fontawesome/fa-brands-400.woff2' type='font/woff2' crossorigin='anonymous' />
<link rel='preload' as='font' href='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/fonts/fontawesome/fa-regular-400.woff2' type='font/woff2' crossorigin='anonymous' />
<link rel='preload' as='script' href='https://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js'>
<meta name='robots' content='index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1' />

<!-- Ads on this site are served by WP PRO Advertising System - All In One Ad Manager v5.3.0 - wordpress-advertising.tunasite.com -->
<!-- / WP PRO Advertising System - All In One Ad Manager. -->


	<!-- This site is optimized with the Yoast SEO Premium plugin v16.0.2 - https://yoast.com/wordpress/plugins/seo/ -->
	<title>CORONAVIRUS | El Ayuntamiento garantiza la atención integral a las mujeres víctimas de la violencia de género en Albacete durante la crisis del CoVid-19 - El Digital de Albacete</title>
	<link rel="canonical" href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" />
	<meta property="og:locale" content="es_ES" />
	<meta property="og:type" content="article" />
	<meta property="og:title" content="CORONAVIRUS | El Ayuntamiento garantiza la atención integral a las mujeres víctimas de la violencia de género en Albacete durante la crisis del CoVid-19 - El Digital de Albacete" />
	<meta property="og:description" content="/Redacción/ El Ayuntamiento de Albacete, a través del Centro de la Mujer y de los recursos de acogida, cofinanciados por el Instituto de la Mujer de Castilla-La Mancha, mantiene la atención a las mujeres que son víctimas de la violencia de género también durante la cuarentena decretada por la pandemia del CoVid-19. Las primeras medidas &hellip;" />
	<meta property="og:url" content="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" />
	<meta property="og:site_name" content="El Digital de Albacete" />
	<meta property="article:publisher" content="https://www.facebook.com/ElDigitalDeAlbacete" />
	<meta property="article:published_time" content="2020-03-20T09:00:03+00:00" />
	<meta property="article:modified_time" content="2020-03-20T11:29:52+00:00" />
	<meta property="og:image" content="https://www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Centro-de-la-Mujer-2.jpg" />
	<meta property="og:image:width" content="1500" />
	<meta property="og:image:height" content="846" />
	<meta name="twitter:label1" content="Escrito por">
	<meta name="twitter:data1" content="El Digital de Albacete">
	<meta name="twitter:label2" content="Tiempo de lectura">
	<meta name="twitter:data2" content="3 minutos">
	<script type="application/ld+json" class="yoast-schema-graph">{"@context":"https://schema.org","@graph":[{"@type":"Organization","@id":"https://www.eldigitaldealbacete.com/#organization","name":"El Digital de Albacete","url":"https://www.eldigitaldealbacete.com/","sameAs":["https://www.facebook.com/ElDigitalDeAlbacete","https://www.instagram.com/eldigitaldealbacete/","https://www.youtube.com/user/ElDigitaldeAlbacete","https://es.wikipedia.org/wiki/El_Digital_de_Albacete","https://twitter.com/ElDigitalAB"],"logo":{"@type":"ImageObject","@id":"https://www.eldigitaldealbacete.com/#logo","inLanguage":"es","url":"https://www.eldigitaldealbacete.com/wp-content/uploads/2020/10/logo-el-digital-de-albacete-seo.png","width":250,"height":35,"caption":"El Digital de Albacete"},"image":{"@id":"https://www.eldigitaldealbacete.com/#logo"}},{"@type":"WebSite","@id":"https://www.eldigitaldealbacete.com/#website","url":"https://www.eldigitaldealbacete.com/","name":"El Digital de Albacete","description":"Peri\u00f3dico de Noticias de Albacete","publisher":{"@id":"https://www.eldigitaldealbacete.com/#organization"},"potentialAction":[{"@type":"SearchAction","target":"https://www.eldigitaldealbacete.com/?s={search_term_string}","query-input":"required name=search_term_string"}],"inLanguage":"es"},{"@type":"ImageObject","@id":"https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/#primaryimage","inLanguage":"es","url":"https://www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Centro-de-la-Mujer-2.jpg","width":1500,"height":846,"caption":"Noticias Albacete"},{"@type":["WebPage","ItemPage"],"@id":"https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/#webpage","url":"https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/","name":"CORONAVIRUS | El Ayuntamiento garantiza la atenci\u00f3n integral a las mujeres v\u00edctimas de la violencia de g\u00e9nero en Albacete durante la crisis del CoVid-19 - El Digital de Albacete","isPartOf":{"@id":"https://www.eldigitaldealbacete.com/#website"},"primaryImageOfPage":{"@id":"https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/#primaryimage"},"datePublished":"2020-03-20T09:00:03+00:00","dateModified":"2020-03-20T11:29:52+00:00","breadcrumb":{"@id":"https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/#breadcrumb"},"inLanguage":"es","potentialAction":[{"@type":"ReadAction","target":["https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/"]}]},{"@type":"BreadcrumbList","@id":"https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/#breadcrumb","itemListElement":[{"@type":"ListItem","position":1,"item":{"@type":"WebPage","@id":"https://www.eldigitaldealbacete.com/","url":"https://www.eldigitaldealbacete.com/","name":"Portada"}},{"@type":"ListItem","position":2,"item":{"@type":"WebPage","@id":"https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/","url":"https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/","name":"CORONAVIRUS | El Ayuntamiento garantiza la atenci\u00f3n integral a las mujeres v\u00edctimas de la violencia de g\u00e9nero en Albacete durante la crisis del CoVid-19"}}]},{"@type":["Article","NewsArticle"],"@id":"https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/#article","isPartOf":{"@id":"https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/#webpage"},"author":{"@id":"https://www.eldigitaldealbacete.com/#/schema/person/16b95094cfc0dd8bf99ac9a2db6beb39"},"headline":"CORONAVIRUS | El Ayuntamiento garantiza la atenci\u00f3n integral a las mujeres v\u00edctimas de la violencia de g\u00e9nero en Albacete durante la crisis del CoVid-19","datePublished":"2020-03-20T09:00:03+00:00","dateModified":"2020-03-20T11:29:52+00:00","mainEntityOfPage":{"@id":"https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/#webpage"},"publisher":{"@id":"https://www.eldigitaldealbacete.com/#organization"},"image":{"@id":"https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/#primaryimage"},"articleSection":"Albacete","inLanguage":"es","copyrightYear":"2020","copyrightHolder":{"@id":"https://www.eldigitaldealbacete.com/#organization"}},{"@type":"Person","@id":"https://www.eldigitaldealbacete.com/#/schema/person/16b95094cfc0dd8bf99ac9a2db6beb39","name":"El Digital de Albacete","image":{"@type":"ImageObject","@id":"https://www.eldigitaldealbacete.com/#personlogo","inLanguage":"es","url":"https://secure.gravatar.com/avatar/6d95d16223e6fdf14ae21e93ce679dac","caption":"El Digital de Albacete"}}]}</script>
	<!-- / Yoast SEO Premium plugin. -->


<link rel="alternate" type="application/rss+xml" title="El Digital de Albacete &raquo; Feed" href="https://www.eldigitaldealbacete.com/feed/" />
<link rel="alternate" type="application/rss+xml" title="El Digital de Albacete &raquo; Feed de los comentarios" href="https://www.eldigitaldealbacete.com/comments/feed/" />
<link rel='stylesheet' id='cptch_stylesheet-css'  href='https://www.eldigitaldealbacete.com/wp-content/plugins/captcha/css/front_end_style.css' type='text/css' media='all' />
<link rel='stylesheet' id='cptch_desktop_style-css'  href='https://www.eldigitaldealbacete.com/wp-content/plugins/captcha/css/desktop_style.css' type='text/css' media='all' />
<link rel='stylesheet' id='WPPAS_VBC_BNR_STYLE-css'  href='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/public/assets/css/vbc/wppas_vbc_bnr.css' type='text/css' media='all' />
<link rel='stylesheet' id='tie-css-base-css'  href='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/css/base.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='tie-css-styles-css'  href='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/css/style.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='tie-css-widgets-css'  href='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/css/widgets.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='tie-css-helpers-css'  href='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/css/helpers.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='tie-fontawesome5-css'  href='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/css/fontawesome.css' type='text/css' media='all' />
<link rel='stylesheet' id='tie-css-ilightbox-css'  href='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/ilightbox/dark-skin/skin.css' type='text/css' media='all' />
<link rel='stylesheet' id='tie-css-shortcodes-css'  href='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/css/plugins/shortcodes.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='tie-css-single-css'  href='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/css/single.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='tie-css-print-css'  href='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/css/print.css' type='text/css' media='print' />
<style id='tie-css-print-inline-css' type='text/css'>
.wf-active body{font-family: 'Roboto';}.wf-active .logo-text,.wf-active h1,.wf-active h2,.wf-active h3,.wf-active h4,.wf-active h5,.wf-active h6,.wf-active .the-subtitle{font-family: 'Roboto';}.wf-active #main-nav .main-menu > ul > li > a{font-family: 'Roboto';}.wf-active blockquote p{font-family: 'Roboto Condensed';}#main-nav .main-menu > ul > li > a{font-size: 20px;}#the-post .entry-content,#the-post .entry-content p{font-size: 18px;}.brand-title,a:hover,.tie-popup-search-submit,#logo.text-logo a,.theme-header nav .components #search-submit:hover,.theme-header .header-nav .components > li:hover > a,.theme-header .header-nav .components li a:hover,.main-menu ul.cats-vertical li a.is-active,.main-menu ul.cats-vertical li a:hover,.main-nav li.mega-menu .post-meta a:hover,.main-nav li.mega-menu .post-box-title a:hover,.search-in-main-nav.autocomplete-suggestions a:hover,#main-nav .menu ul:not(.cats-horizontal) li:hover > a,#main-nav .menu ul li.current-menu-item:not(.mega-link-column) > a,.top-nav .menu li:hover > a,.top-nav .menu > .tie-current-menu > a,.search-in-top-nav.autocomplete-suggestions .post-title a:hover,div.mag-box .mag-box-options .mag-box-filter-links a.active,.mag-box-filter-links .flexMenu-viewMore:hover > a,.stars-rating-active,body .tabs.tabs .active > a,.video-play-icon,.spinner-circle:after,#go-to-content:hover,.comment-list .comment-author .fn,.commentlist .comment-author .fn,blockquote::before,blockquote cite,blockquote.quote-simple p,.multiple-post-pages a:hover,#story-index li .is-current,.latest-tweets-widget .twitter-icon-wrap span,.wide-slider-nav-wrapper .slide,.wide-next-prev-slider-wrapper .tie-slider-nav li:hover span,.review-final-score h3,#mobile-menu-icon:hover .menu-text,body .entry a,.dark-skin body .entry a,.entry .post-bottom-meta a:hover,.comment-list .comment-content a,q a,blockquote a,.widget.tie-weather-widget .icon-basecloud-bg:after,.site-footer a:hover,.site-footer .stars-rating-active,.site-footer .twitter-icon-wrap span,.site-info a:hover{color: #00bf80;}#instagram-link a:hover{color: #00bf80 !important;border-color: #00bf80 !important;}#theme-header #main-nav .spinner-circle:after{color: #00bf80;}[type='submit'],.button,.generic-button a,.generic-button button,.theme-header .header-nav .comp-sub-menu a.button.guest-btn:hover,.theme-header .header-nav .comp-sub-menu a.checkout-button,nav.main-nav .menu > li.tie-current-menu > a,nav.main-nav .menu > li:hover > a,.main-menu .mega-links-head:after,.main-nav .mega-menu.mega-cat .cats-horizontal li a.is-active,#mobile-menu-icon:hover .nav-icon,#mobile-menu-icon:hover .nav-icon:before,#mobile-menu-icon:hover .nav-icon:after,.search-in-main-nav.autocomplete-suggestions a.button,.search-in-top-nav.autocomplete-suggestions a.button,.spinner > div,.post-cat,.pages-numbers li.current span,.multiple-post-pages > span,#tie-wrapper .mejs-container .mejs-controls,.mag-box-filter-links a:hover,.slider-arrow-nav a:not(.pagination-disabled):hover,.comment-list .reply a:hover,.commentlist .reply a:hover,#reading-position-indicator,#story-index-icon,.videos-block .playlist-title,.review-percentage .review-item span span,.tie-slick-dots li.slick-active button,.tie-slick-dots li button:hover,.digital-rating-static,.timeline-widget li a:hover .date:before,#wp-calendar #today,.posts-list-counter li.widget-post-list:before,.cat-counter a + span,.tie-slider-nav li span:hover,.fullwidth-area .widget_tag_cloud .tagcloud a:hover,.magazine2:not(.block-head-4) .dark-widgetized-area ul.tabs a:hover,.magazine2:not(.block-head-4) .dark-widgetized-area ul.tabs .active a,.magazine1 .dark-widgetized-area ul.tabs a:hover,.magazine1 .dark-widgetized-area ul.tabs .active a,.block-head-4.magazine2 .dark-widgetized-area .tabs.tabs .active a,.block-head-4.magazine2 .dark-widgetized-area .tabs > .active a:before,.block-head-4.magazine2 .dark-widgetized-area .tabs > .active a:after,.demo_store,.demo #logo:after,.demo #sticky-logo:after,.widget.tie-weather-widget,span.video-close-btn:hover,#go-to-top,.latest-tweets-widget .slider-links .button:not(:hover){background-color: #00bf80;color: #FFFFFF;}.tie-weather-widget .widget-title .the-subtitle,.block-head-4.magazine2 #footer .tabs .active a:hover{color: #FFFFFF;}pre,code,.pages-numbers li.current span,.theme-header .header-nav .comp-sub-menu a.button.guest-btn:hover,.multiple-post-pages > span,.post-content-slideshow .tie-slider-nav li span:hover,#tie-body .tie-slider-nav li > span:hover,.slider-arrow-nav a:not(.pagination-disabled):hover,.main-nav .mega-menu.mega-cat .cats-horizontal li a.is-active,.main-nav .mega-menu.mega-cat .cats-horizontal li a:hover,.main-menu .menu > li > .menu-sub-content{border-color: #00bf80;}.main-menu .menu > li.tie-current-menu{border-bottom-color: #00bf80;}.top-nav .menu li.tie-current-menu > a:before,.top-nav .menu li.menu-item-has-children:hover > a:before{border-top-color: #00bf80;}.main-nav .main-menu .menu > li.tie-current-menu > a:before,.main-nav .main-menu .menu > li:hover > a:before{border-top-color: #FFFFFF;}header.main-nav-light .main-nav .menu-item-has-children li:hover > a:before,header.main-nav-light .main-nav .mega-menu li:hover > a:before{border-left-color: #00bf80;}.rtl header.main-nav-light .main-nav .menu-item-has-children li:hover > a:before,.rtl header.main-nav-light .main-nav .mega-menu li:hover > a:before{border-right-color: #00bf80;border-left-color: transparent;}.top-nav ul.menu li .menu-item-has-children:hover > a:before{border-top-color: transparent;border-left-color: #00bf80;}.rtl .top-nav ul.menu li .menu-item-has-children:hover > a:before{border-left-color: transparent;border-right-color: #00bf80;}::-moz-selection{background-color: #00bf80;color: #FFFFFF;}::selection{background-color: #00bf80;color: #FFFFFF;}circle.circle_bar{stroke: #00bf80;}#reading-position-indicator{box-shadow: 0 0 10px rgba( 0,191,128,0.7);}#logo.text-logo a:hover,body .entry a:hover,.dark-skin body .entry a:hover,.comment-list .comment-content a:hover,.block-head-4.magazine2 .site-footer .tabs li a:hover,q a:hover,blockquote a:hover{color: #008d4e;}.button:hover,input[type='submit']:hover,.generic-button a:hover,.generic-button button:hover,a.post-cat:hover,.site-footer .button:hover,.site-footer [type='submit']:hover,.search-in-main-nav.autocomplete-suggestions a.button:hover,.search-in-top-nav.autocomplete-suggestions a.button:hover,.theme-header .header-nav .comp-sub-menu a.checkout-button:hover{background-color: #008d4e;color: #FFFFFF;}.theme-header .header-nav .comp-sub-menu a.checkout-button:not(:hover),body .entry a.button{color: #FFFFFF;}#story-index.is-compact .story-index-content{background-color: #00bf80;}#story-index.is-compact .story-index-content a,#story-index.is-compact .story-index-content .is-current{color: #FFFFFF;}#tie-body .has-block-head-4,#tie-body .mag-box-title h3,#tie-body .comment-reply-title,#tie-body .related.products > h2,#tie-body .up-sells > h2,#tie-body .cross-sells > h2,#tie-body .cart_totals > h2,#tie-body .bbp-form legend,#tie-body .mag-box-title h3 a,#tie-body .section-title-default a,#tie-body #cancel-comment-reply-link {color: #FFFFFF;}#tie-body .has-block-head-4:before,#tie-body .mag-box-title h3:before,#tie-body .comment-reply-title:before,#tie-body .related.products > h2:before,#tie-body .up-sells > h2:before,#tie-body .cross-sells > h2:before,#tie-body .cart_totals > h2:before,#tie-body .bbp-form legend:before {background-color: #00bf80;}#tie-body .block-more-button{color: #00bf80;}#tie-body .block-more-button:hover{color: #008d4e;}#tie-body .tabs,#tie-body .tabs .flexMenu-popup{border-color: #00bf80;}#tie-body .tabs li a{color: #00bf80;}#tie-body .tabs li a:hover{color: #008d4e;}#tie-body .tabs li.active a{color: #FFFFFF;background-color: #00bf80;}#tie-body .tabs > .active a:before,#tie-body .tabs > .active a:after{background-color: #00bf80;}.brand-title,a:hover,.tie-popup-search-submit,#logo.text-logo a,.theme-header nav .components #search-submit:hover,.theme-header .header-nav .components > li:hover > a,.theme-header .header-nav .components li a:hover,.main-menu ul.cats-vertical li a.is-active,.main-menu ul.cats-vertical li a:hover,.main-nav li.mega-menu .post-meta a:hover,.main-nav li.mega-menu .post-box-title a:hover,.search-in-main-nav.autocomplete-suggestions a:hover,#main-nav .menu ul:not(.cats-horizontal) li:hover > a,#main-nav .menu ul li.current-menu-item:not(.mega-link-column) > a,.top-nav .menu li:hover > a,.top-nav .menu > .tie-current-menu > a,.search-in-top-nav.autocomplete-suggestions .post-title a:hover,div.mag-box .mag-box-options .mag-box-filter-links a.active,.mag-box-filter-links .flexMenu-viewMore:hover > a,.stars-rating-active,body .tabs.tabs .active > a,.video-play-icon,.spinner-circle:after,#go-to-content:hover,.comment-list .comment-author .fn,.commentlist .comment-author .fn,blockquote::before,blockquote cite,blockquote.quote-simple p,.multiple-post-pages a:hover,#story-index li .is-current,.latest-tweets-widget .twitter-icon-wrap span,.wide-slider-nav-wrapper .slide,.wide-next-prev-slider-wrapper .tie-slider-nav li:hover span,.review-final-score h3,#mobile-menu-icon:hover .menu-text,body .entry a,.dark-skin body .entry a,.entry .post-bottom-meta a:hover,.comment-list .comment-content a,q a,blockquote a,.widget.tie-weather-widget .icon-basecloud-bg:after,.site-footer a:hover,.site-footer .stars-rating-active,.site-footer .twitter-icon-wrap span,.site-info a:hover{color: #00bf80;}#instagram-link a:hover{color: #00bf80 !important;border-color: #00bf80 !important;}#theme-header #main-nav .spinner-circle:after{color: #00bf80;}[type='submit'],.button,.generic-button a,.generic-button button,.theme-header .header-nav .comp-sub-menu a.button.guest-btn:hover,.theme-header .header-nav .comp-sub-menu a.checkout-button,nav.main-nav .menu > li.tie-current-menu > a,nav.main-nav .menu > li:hover > a,.main-menu .mega-links-head:after,.main-nav .mega-menu.mega-cat .cats-horizontal li a.is-active,#mobile-menu-icon:hover .nav-icon,#mobile-menu-icon:hover .nav-icon:before,#mobile-menu-icon:hover .nav-icon:after,.search-in-main-nav.autocomplete-suggestions a.button,.search-in-top-nav.autocomplete-suggestions a.button,.spinner > div,.post-cat,.pages-numbers li.current span,.multiple-post-pages > span,#tie-wrapper .mejs-container .mejs-controls,.mag-box-filter-links a:hover,.slider-arrow-nav a:not(.pagination-disabled):hover,.comment-list .reply a:hover,.commentlist .reply a:hover,#reading-position-indicator,#story-index-icon,.videos-block .playlist-title,.review-percentage .review-item span span,.tie-slick-dots li.slick-active button,.tie-slick-dots li button:hover,.digital-rating-static,.timeline-widget li a:hover .date:before,#wp-calendar #today,.posts-list-counter li.widget-post-list:before,.cat-counter a + span,.tie-slider-nav li span:hover,.fullwidth-area .widget_tag_cloud .tagcloud a:hover,.magazine2:not(.block-head-4) .dark-widgetized-area ul.tabs a:hover,.magazine2:not(.block-head-4) .dark-widgetized-area ul.tabs .active a,.magazine1 .dark-widgetized-area ul.tabs a:hover,.magazine1 .dark-widgetized-area ul.tabs .active a,.block-head-4.magazine2 .dark-widgetized-area .tabs.tabs .active a,.block-head-4.magazine2 .dark-widgetized-area .tabs > .active a:before,.block-head-4.magazine2 .dark-widgetized-area .tabs > .active a:after,.demo_store,.demo #logo:after,.demo #sticky-logo:after,.widget.tie-weather-widget,span.video-close-btn:hover,#go-to-top,.latest-tweets-widget .slider-links .button:not(:hover){background-color: #00bf80;color: #FFFFFF;}.tie-weather-widget .widget-title .the-subtitle,.block-head-4.magazine2 #footer .tabs .active a:hover{color: #FFFFFF;}pre,code,.pages-numbers li.current span,.theme-header .header-nav .comp-sub-menu a.button.guest-btn:hover,.multiple-post-pages > span,.post-content-slideshow .tie-slider-nav li span:hover,#tie-body .tie-slider-nav li > span:hover,.slider-arrow-nav a:not(.pagination-disabled):hover,.main-nav .mega-menu.mega-cat .cats-horizontal li a.is-active,.main-nav .mega-menu.mega-cat .cats-horizontal li a:hover,.main-menu .menu > li > .menu-sub-content{border-color: #00bf80;}.main-menu .menu > li.tie-current-menu{border-bottom-color: #00bf80;}.top-nav .menu li.tie-current-menu > a:before,.top-nav .menu li.menu-item-has-children:hover > a:before{border-top-color: #00bf80;}.main-nav .main-menu .menu > li.tie-current-menu > a:before,.main-nav .main-menu .menu > li:hover > a:before{border-top-color: #FFFFFF;}header.main-nav-light .main-nav .menu-item-has-children li:hover > a:before,header.main-nav-light .main-nav .mega-menu li:hover > a:before{border-left-color: #00bf80;}.rtl header.main-nav-light .main-nav .menu-item-has-children li:hover > a:before,.rtl header.main-nav-light .main-nav .mega-menu li:hover > a:before{border-right-color: #00bf80;border-left-color: transparent;}.top-nav ul.menu li .menu-item-has-children:hover > a:before{border-top-color: transparent;border-left-color: #00bf80;}.rtl .top-nav ul.menu li .menu-item-has-children:hover > a:before{border-left-color: transparent;border-right-color: #00bf80;}::-moz-selection{background-color: #00bf80;color: #FFFFFF;}::selection{background-color: #00bf80;color: #FFFFFF;}circle.circle_bar{stroke: #00bf80;}#reading-position-indicator{box-shadow: 0 0 10px rgba( 0,191,128,0.7);}#logo.text-logo a:hover,body .entry a:hover,.dark-skin body .entry a:hover,.comment-list .comment-content a:hover,.block-head-4.magazine2 .site-footer .tabs li a:hover,q a:hover,blockquote a:hover{color: #008d4e;}.button:hover,input[type='submit']:hover,.generic-button a:hover,.generic-button button:hover,a.post-cat:hover,.site-footer .button:hover,.site-footer [type='submit']:hover,.search-in-main-nav.autocomplete-suggestions a.button:hover,.search-in-top-nav.autocomplete-suggestions a.button:hover,.theme-header .header-nav .comp-sub-menu a.checkout-button:hover{background-color: #008d4e;color: #FFFFFF;}.theme-header .header-nav .comp-sub-menu a.checkout-button:not(:hover),body .entry a.button{color: #FFFFFF;}#story-index.is-compact .story-index-content{background-color: #00bf80;}#story-index.is-compact .story-index-content a,#story-index.is-compact .story-index-content .is-current{color: #FFFFFF;}#tie-body .has-block-head-4,#tie-body .mag-box-title h3,#tie-body .comment-reply-title,#tie-body .related.products > h2,#tie-body .up-sells > h2,#tie-body .cross-sells > h2,#tie-body .cart_totals > h2,#tie-body .bbp-form legend,#tie-body .mag-box-title h3 a,#tie-body .section-title-default a,#tie-body #cancel-comment-reply-link {color: #FFFFFF;}#tie-body .has-block-head-4:before,#tie-body .mag-box-title h3:before,#tie-body .comment-reply-title:before,#tie-body .related.products > h2:before,#tie-body .up-sells > h2:before,#tie-body .cross-sells > h2:before,#tie-body .cart_totals > h2:before,#tie-body .bbp-form legend:before {background-color: #00bf80;}#tie-body .block-more-button{color: #00bf80;}#tie-body .block-more-button:hover{color: #008d4e;}#tie-body .tabs,#tie-body .tabs .flexMenu-popup{border-color: #00bf80;}#tie-body .tabs li a{color: #00bf80;}#tie-body .tabs li a:hover{color: #008d4e;}#tie-body .tabs li.active a{color: #FFFFFF;background-color: #00bf80;}#tie-body .tabs > .active a:before,#tie-body .tabs > .active a:after{background-color: #00bf80;}#top-nav,#top-nav .sub-menu,#top-nav .comp-sub-menu,#top-nav .ticker-content,#top-nav .ticker-swipe,.top-nav-boxed #top-nav .topbar-wrapper,.search-in-top-nav.autocomplete-suggestions,#top-nav .guest-btn:not(:hover){background-color : #eff0f1;}#top-nav *,.search-in-top-nav.autocomplete-suggestions{border-color: rgba( 0,0,0,0.08);}#top-nav .icon-basecloud-bg:after{color: #eff0f1;}#top-nav a:not(:hover),#top-nav input,#top-nav #search-submit,#top-nav .fa-spinner,#top-nav .dropdown-social-icons li a span,#top-nav .components > li .social-link:not(:hover) span,.search-in-top-nav.autocomplete-suggestions a{color: #434955;}#top-nav .menu-item-has-children > a:before{border-top-color: #434955;}#top-nav li .menu-item-has-children > a:before{border-top-color: transparent;border-left-color: #434955;}.rtl #top-nav .menu li .menu-item-has-children > a:before{border-left-color: transparent;border-right-color: #434955;}#top-nav input::-moz-placeholder{color: #434955;}#top-nav input:-moz-placeholder{color: #434955;}#top-nav input:-ms-input-placeholder{color: #434955;}#top-nav input::-webkit-input-placeholder{color: #434955;}#top-nav .comp-sub-menu .button:hover,#top-nav .checkout-button,.search-in-top-nav.autocomplete-suggestions .button{background-color: #00bf80;}#top-nav a:hover,#top-nav .menu li:hover > a,#top-nav .menu > .tie-current-menu > a,#top-nav .components > li:hover > a,#top-nav .components #search-submit:hover,.search-in-top-nav.autocomplete-suggestions .post-title a:hover{color: #00bf80;}#top-nav .comp-sub-menu .button:hover{border-color: #00bf80;}#top-nav .tie-current-menu > a:before,#top-nav .menu .menu-item-has-children:hover > a:before{border-top-color: #00bf80;}#top-nav .menu li .menu-item-has-children:hover > a:before{border-top-color: transparent;border-left-color: #00bf80;}.rtl #top-nav .menu li .menu-item-has-children:hover > a:before{border-left-color: transparent;border-right-color: #00bf80;}#top-nav .comp-sub-menu .button:hover,#top-nav .comp-sub-menu .checkout-button,.search-in-top-nav.autocomplete-suggestions .button{color: #FFFFFF;}#top-nav .comp-sub-menu .checkout-button:hover,.search-in-top-nav.autocomplete-suggestions .button:hover{background-color: #00a162;}#top-nav,#top-nav .comp-sub-menu,#top-nav .tie-weather-widget{color: #333333;}.search-in-top-nav.autocomplete-suggestions .post-meta,.search-in-top-nav.autocomplete-suggestions .post-meta a:not(:hover){color: rgba( 51,51,51,0.7 );}#top-nav .weather-icon .icon-cloud,#top-nav .weather-icon .icon-basecloud-bg,#top-nav .weather-icon .icon-cloud-behind{color: #333333 !important;}#main-nav,#main-nav .menu-sub-content,#main-nav .comp-sub-menu,#main-nav .guest-btn:not(:hover),#main-nav ul.cats-vertical li a.is-active,#main-nav ul.cats-vertical li a:hover.search-in-main-nav.autocomplete-suggestions{background-color: #ffffff;}#main-nav{border-width: 0;}#theme-header #main-nav:not(.fixed-nav){bottom: 0;}#main-nav .icon-basecloud-bg:after{color: #ffffff;}#main-nav *,.search-in-main-nav.autocomplete-suggestions{border-color: rgba(0,0,0,0.07);}.main-nav-boxed #main-nav .main-menu-wrapper{border-width: 0;}#main-nav .menu li.menu-item-has-children > a:before,#main-nav .main-menu .mega-menu > a:before{border-top-color: #34495e;}#main-nav .menu li .menu-item-has-children > a:before,#main-nav .mega-menu .menu-item-has-children > a:before{border-top-color: transparent;border-left-color: #34495e;}.rtl #main-nav .menu li .menu-item-has-children > a:before,.rtl #main-nav .mega-menu .menu-item-has-children > a:before{border-left-color: transparent;border-right-color: #34495e;}#main-nav a:not(:hover),#main-nav a.social-link:not(:hover) span,#main-nav .dropdown-social-icons li a span,.search-in-main-nav.autocomplete-suggestions a{color: #34495e;}#main-nav .comp-sub-menu .button:hover,#main-nav .menu > li.tie-current-menu,#main-nav .menu > li > .menu-sub-content,#main-nav .cats-horizontal a.is-active,#main-nav .cats-horizontal a:hover{border-color: #00bf80;}#main-nav .menu > li.tie-current-menu > a,#main-nav .menu > li:hover > a,#main-nav .mega-links-head:after,#main-nav .comp-sub-menu .button:hover,#main-nav .comp-sub-menu .checkout-button,#main-nav .cats-horizontal a.is-active,#main-nav .cats-horizontal a:hover,.search-in-main-nav.autocomplete-suggestions .button,#main-nav .spinner > div{background-color: #00bf80;}#main-nav .menu ul li:hover > a,#main-nav .menu ul li.current-menu-item:not(.mega-link-column) > a,#main-nav .components a:hover,#main-nav .components > li:hover > a,#main-nav #search-submit:hover,#main-nav .cats-vertical a.is-active,#main-nav .cats-vertical a:hover,#main-nav .mega-menu .post-meta a:hover,#main-nav .mega-menu .post-box-title a:hover,.search-in-main-nav.autocomplete-suggestions a:hover,#main-nav .spinner-circle:after{color: #00bf80;}#main-nav .menu > li.tie-current-menu > a,#main-nav .menu > li:hover > a,#main-nav .components .button:hover,#main-nav .comp-sub-menu .checkout-button,.theme-header #main-nav .mega-menu .cats-horizontal a.is-active,.theme-header #main-nav .mega-menu .cats-horizontal a:hover,.search-in-main-nav.autocomplete-suggestions a.button{color: #FFFFFF;}#main-nav .menu > li.tie-current-menu > a:before,#main-nav .menu > li:hover > a:before{border-top-color: #FFFFFF;}.main-nav-light #main-nav .menu-item-has-children li:hover > a:before,.main-nav-light #main-nav .mega-menu li:hover > a:before{border-left-color: #00bf80;}.rtl .main-nav-light #main-nav .menu-item-has-children li:hover > a:before,.rtl .main-nav-light #main-nav .mega-menu li:hover > a:before{border-right-color: #00bf80;border-left-color: transparent;}.search-in-main-nav.autocomplete-suggestions .button:hover,#main-nav .comp-sub-menu .checkout-button:hover{background-color: #00a162;}#main-nav,#main-nav input,#main-nav #search-submit,#main-nav .fa-spinner,#main-nav .comp-sub-menu,#main-nav .tie-weather-widget{color: #34495e;}#main-nav input::-moz-placeholder{color: #34495e;}#main-nav input:-moz-placeholder{color: #34495e;}#main-nav input:-ms-input-placeholder{color: #34495e;}#main-nav input::-webkit-input-placeholder{color: #34495e;}#main-nav .mega-menu .post-meta,#main-nav .mega-menu .post-meta a,.search-in-main-nav.autocomplete-suggestions .post-meta{color: rgba(52,73,94,0.6);}#main-nav .weather-icon .icon-cloud,#main-nav .weather-icon .icon-basecloud-bg,#main-nav .weather-icon .icon-cloud-behind{color: #34495e !important;}#footer{background-color: #434955;}#site-info{background-color: #363a42;}#footer .posts-list-counter .posts-list-items li.widget-post-list:before{border-color: #434955;}#footer .timeline-widget a .date:before{border-color: rgba(67,73,85,0.8);}#footer .footer-boxed-widget-area,#footer textarea,#footer input:not([type=submit]),#footer select,#footer code,#footer kbd,#footer pre,#footer samp,#footer .show-more-button,#footer .slider-links .tie-slider-nav span,#footer #wp-calendar,#footer #wp-calendar tbody td,#footer #wp-calendar thead th,#footer .widget.buddypress .item-options a{border-color: rgba(255,255,255,0.1);}#footer .social-statistics-widget .white-bg li.social-icons-item a,#footer .widget_tag_cloud .tagcloud a,#footer .latest-tweets-widget .slider-links .tie-slider-nav span,#footer .widget_layered_nav_filters a{border-color: rgba(255,255,255,0.1);}#footer .social-statistics-widget .white-bg li:before{background: rgba(255,255,255,0.1);}.site-footer #wp-calendar tbody td{background: rgba(255,255,255,0.02);}#footer .white-bg .social-icons-item a span.followers span,#footer .circle-three-cols .social-icons-item a .followers-num,#footer .circle-three-cols .social-icons-item a .followers-name{color: rgba(255,255,255,0.8);}#footer .timeline-widget ul:before,#footer .timeline-widget a:not(:hover) .date:before{background-color: #252b37;}#footer .widget-title,#footer .widget-title a:not(:hover){color: #00bf80;}#footer,#footer textarea,#footer input:not([type='submit']),#footer select,#footer #wp-calendar tbody,#footer .tie-slider-nav li span:not(:hover),#footer .widget_categories li a:before,#footer .widget_product_categories li a:before,#footer .widget_layered_nav li a:before,#footer .widget_archive li a:before,#footer .widget_nav_menu li a:before,#footer .widget_meta li a:before,#footer .widget_pages li a:before,#footer .widget_recent_entries li a:before,#footer .widget_display_forums li a:before,#footer .widget_display_views li a:before,#footer .widget_rss li a:before,#footer .widget_display_stats dt:before,#footer .subscribe-widget-content h3,#footer .about-author .social-icons a:not(:hover) span{color: #bbbbbb;}#footer post-widget-body .meta-item,#footer .post-meta,#footer .stream-title,#footer.dark-skin .timeline-widget .date,#footer .wp-caption .wp-caption-text,#footer .rss-date{color: rgba(187,187,187,0.7);}#footer input::-moz-placeholder{color: #bbbbbb;}#footer input:-moz-placeholder{color: #bbbbbb;}#footer input:-ms-input-placeholder{color: #bbbbbb;}#footer input::-webkit-input-placeholder{color: #bbbbbb;}@media (min-width: 1200px){.container{width: auto;}}.boxed-layout #tie-wrapper,.boxed-layout .fixed-nav{max-width: 1230px;}@media (min-width: 1200){.container,.wide-next-prev-slider-wrapper .slider-main-container{max-width: 1200;}}@media (min-width: 992px){.sidebar{width: 30%;}.main-content{width: 70%;}}
</style>
<link rel='stylesheet' id='glg-photobox-style-css'  href='https://www.eldigitaldealbacete.com/wp-content/plugins/gallery-lightbox-slider/css/photobox/photobox.css' type='text/css' media='' />
<link rel='stylesheet' id='wp_pro_add_style-css'  href='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/templates/css/wppas.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='wppas_php_style-css'  href='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/templates/css/wppas_custom_css.css' type='text/css' media='all' />
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
<script type='text/javascript' src='https://www.eldigitaldealbacete.com/wp-includes/js/jquery/jquery.min.js' id='jquery-core-js'></script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-includes/js/plupload/moxie.min.js' id='moxiejs-js'></script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-includes/js/plupload/plupload.min.js' id='plupload-js'></script>
<script type='text/javascript' id='plupload-handlers-js-extra'>
/* <![CDATA[ */
var pluploadL10n = {"queue_limit_exceeded":"Has intentado poner en cola demasiados archivos.","file_exceeds_size_limit":"El tama\u00f1o del archivo %s excede el tama\u00f1o permitido en este sitio.","zero_byte_file":"Este archivo est\u00e1 vac\u00edo. Por favor, prueba con otro.","invalid_filetype":"Lo siento, este tipo de archivo no est\u00e1 permitido por motivos de seguridad.","not_an_image":"Este archivo no es una imagen. Por favor, prueba con otro.","image_memory_exceeded":"Memoria excedida. Por favor, prueba con otro archivo m\u00e1s peque\u00f1o.","image_dimensions_exceeded":"Supera el tama\u00f1o permitido. Por favor, prueba con otro.","default_error":"Ha habido un error en la subida. Por favor, int\u00e9ntalo m\u00e1s tarde.","missing_upload_url":"Ha habido un error de configuraci\u00f3n. Por favor, contacta con el  administrador del servidor.","upload_limit_exceeded":"Solo puedes subir 1 archivo.","http_error":"Respuesta inesperada del servidor. El archivo puede haber sido subido correctamente. Comprueba la biblioteca de medios o recarga la p\u00e1gina.","http_error_image":"El posproceso de la imagen ha fallado probablemente porque el servidor est\u00e1 ocupado o no tiene suficientes recursos. Puede ayudar el subir una imagen m\u00e1s peque\u00f1a. El tama\u00f1o m\u00e1ximo sugerido es de 2500 p\u00edxeles.","upload_failed":"Subida fallida.","big_upload_failed":"Por favor, intenta subir este archivo a trav\u00e9s del %1\$snavegador%2\$s.","big_upload_queued":"%s excede el tama\u00f1o m\u00e1ximo de subida del cargador de m\u00faltiples archivos del navegador.","io_error":"Error de entrada\/salida.","security_error":"Error de seguridad.","file_cancelled":"Archivo cancelado.","upload_stopped":"Subida detenida.","dismiss":"Descartar","crunching":"Calculando\u2026","deleted":"movidos a la papelera.","error_uploading":"Ha habido un error al subir \u00ab%s\u00bb","unsupported_image":"Esta imagen no se puede mostrar en un navegador web. Antes de subirla, para un mejor resultado, convi\u00e9rtela a JPEG."};
/* ]]> */
</script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-includes/js/plupload/handlers.min.js' id='plupload-handlers-js'></script>
<script type='text/javascript' id='wppas_vbc_upload-js-extra'>
/* <![CDATA[ */
var wppas_vbc_upload = {"ajaxurl":"https:\/\/www.eldigitaldealbacete.com\/wp-admin\/admin-ajax.php","nonce":"0bbbdb0cde","remove":"9ad70bb29c","number":"1","upload_enabled":"1","confirmMsg":"Are you sure you want to delete this?","plupload":{"runtimes":"html5,flash,html4","browse_button":"wppas-vbc-uploader","container":"wppas-vbc-upload-container","file_data_name":"wppas_vbc_upload_file","max_file_size":"100000000b","url":"https:\/\/www.eldigitaldealbacete.com\/wp-admin\/admin-ajax.php?action=wppas_vbc_upload&nonce=52f70bef2c","flash_swf_url":"https:\/\/www.eldigitaldealbacete.com\/wp-includes\/js\/plupload\/plupload.flash.swf","filters":[{"title":"Archivos permitidos","extensions":"jpg,gif,png"}],"multipart":true,"urlstream_upload":true,"multipart_params":{"upload_folder":""}}};
/* ]]> */
</script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/public/assets/js/vbc/AjaxUpload.js' id='wppas_vbc_upload-js'></script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/templates/js/advertising.js' id='wppas_dummy_advertising-js'></script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-content/plugins/gallery-lightbox-slider/js/jquery/photobox/jquery.photobox.js' id='glg-photobox-js'></script>
<script type='text/javascript' id='wp_pro_add_js_functions-js-extra'>
/* <![CDATA[ */
var wppas_ajax_script = {"ajaxurl":"https:\/\/www.eldigitaldealbacete.com\/wp-admin\/admin-ajax.php"};
/* ]]> */
</script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/templates/js/wppas.min.js' id='wp_pro_add_js_functions-js'></script>
<link rel="https://api.w.org/" href="https://www.eldigitaldealbacete.com/wp-json/" /><link rel="alternate" type="application/json" href="https://www.eldigitaldealbacete.com/wp-json/wp/v2/posts/546895" /><link rel="alternate" type="application/json+oembed" href="https://www.eldigitaldealbacete.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.eldigitaldealbacete.com%2F2020%2F03%2F20%2Fcoronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://www.eldigitaldealbacete.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.eldigitaldealbacete.com%2F2020%2F03%2F20%2Fcoronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19%2F&#038;format=xml" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"><!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-41044974-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-41044974-1');
</script>


<meta name="theme-color" content="#00bf80" /><meta name="viewport" content="width=device-width, initial-scale=1.0" />      <meta name="onesignal" content="wordpress-plugin"/>
            <script>

      window.OneSignal = window.OneSignal || [];

      OneSignal.push( function() {
        OneSignal.SERVICE_WORKER_UPDATER_PATH = "OneSignalSDKUpdaterWorker.js.php";
                      OneSignal.SERVICE_WORKER_PATH = "OneSignalSDKWorker.js.php";
                      OneSignal.SERVICE_WORKER_PARAM = { scope: "/" };
        OneSignal.setDefaultNotificationUrl("https://www.eldigitaldealbacete.com");
        var oneSignal_options = {};
        window._oneSignalInitOptions = oneSignal_options;

        oneSignal_options['wordpress'] = true;
oneSignal_options['appId'] = '41f61076-7dcd-4821-be87-2b71275c6a64';
oneSignal_options['allowLocalhostAsSecureOrigin'] = true;
oneSignal_options['welcomeNotification'] = { };
oneSignal_options['welcomeNotification']['title'] = "El Digital de Albacete";
oneSignal_options['welcomeNotification']['message'] = "¡Gracias por suscribirte!";
oneSignal_options['path'] = "https://www.eldigitaldealbacete.com/wp-content/plugins/onesignal-free-web-push-notifications/sdk_files/";
oneSignal_options['safari_web_id'] = "web.onesignal.auto.474f3eff-1334-4c1b-9726-cf22982ee91f";
oneSignal_options['persistNotification'] = true;
oneSignal_options['promptOptions'] = { };
oneSignal_options['promptOptions']['actionMessage'] = "Recibe notificaciones push gratis de las noticias destacadas de Albacete";
oneSignal_options['promptOptions']['acceptButtonText'] = "Permitir";
oneSignal_options['promptOptions']['cancelButtonText'] = "No, gracias";
oneSignal_options['notifyButton'] = { };
oneSignal_options['notifyButton']['enable'] = true;
oneSignal_options['notifyButton']['position'] = 'bottom-left';
oneSignal_options['notifyButton']['theme'] = 'default';
oneSignal_options['notifyButton']['size'] = 'medium';
oneSignal_options['notifyButton']['showCredit'] = true;
oneSignal_options['notifyButton']['text'] = {};
oneSignal_options['notifyButton']['text']['tip.state.unsubscribed'] = 'Te has dado de baja de las notificaciones';
oneSignal_options['notifyButton']['text']['tip.state.subscribed'] = 'Te has suscrito';
oneSignal_options['notifyButton']['text']['tip.state.blocked'] = 'Has bloqueado las notificaciones';
oneSignal_options['notifyButton']['text']['message.action.subscribed'] = 'Gracias por suscribirte';
oneSignal_options['notifyButton']['text']['message.action.resubscribed'] = 'Te has suscrito a las noticificaciones';
oneSignal_options['notifyButton']['text']['message.action.unsubscribed'] = 'No recibirás más notificaciones';
oneSignal_options['notifyButton']['text']['dialog.main.title'] = 'Notificaciones de noticias destacadas';
oneSignal_options['notifyButton']['text']['dialog.main.button.subscribe'] = 'SUSCRÍBETE';
oneSignal_options['notifyButton']['text']['dialog.main.button.unsubscribe'] = 'Darme de baja de notificaciones';
                OneSignal.init(window._oneSignalInitOptions);
                OneSignal.showSlidedownPrompt();      });

      function documentInitOneSignal() {
        var oneSignal_elements = document.getElementsByClassName("OneSignal-prompt");

        var oneSignalLinkClickHandler = function(event) { OneSignal.push(['registerForPushNotifications']); event.preventDefault(); };        for(var i = 0; i < oneSignal_elements.length; i++)
          oneSignal_elements[i].addEventListener('click', oneSignalLinkClickHandler, false);
      }

      if (document.readyState === 'complete') {
           documentInitOneSignal();
      }
      else {
           window.addEventListener("load", function(event){
               documentInitOneSignal();
          });
      }
    </script>
<!-- Begin comScore Tag -->
<script>
  var _comscore = _comscore || [];
  _comscore.push({ c1: "2", c2: "34031639" });
  (function() {
    var s = document.createElement("script"), el = document.getElementsByTagName("script")[0]; s.async = true;
    s.src = (document.location.protocol == "https:" ? "https://sb" : "http://b") + ".scorecardresearch.com/beacon.js";
    el.parentNode.insertBefore(s, el);
  })();
</script>
<noscript>
  <img src="https://sb.scorecardresearch.com/p?c1=2&c2=34031639&cv=2.0&cj=1" />
</noscript>
<!-- End comScore Tag -->
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
<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=756820097755888&ev=PageView&noscript=1"
/></noscript>
<script data-ad-client="ca-pub-2207770142965283" defer src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>


<!-- Taboola-->

<script type="text/javascript">
  window._taboola = window._taboola || [];
  _taboola.push({article:'auto'});
  !function (e, f, u, i) {
    if (!document.getElementById(i)){
      e.async = 1;
      e.src = u;
      e.id = i;
      f.parentNode.insertBefore(e, f);
    }
  }(document.createElement('script'),
  document.getElementsByTagName('script')[0],
  '//cdn.taboola.com/libtrc/eldigitaldealbacete/loader.js',
  'tb_loader_script');
  if(window.performance && typeof window.performance.mark == 'function')
    {window.performance.mark('tbl_ic');}
</script>
<!-- FIN Taboola-->
<!-- Quantcast Choice. Consent Manager Tag v2.0 (for TCF 2.0) -->
<script type="text/javascript" defer>
(function() {
  var host = window.location.hostname;
  var element = document.createElement('script');
  var firstScript = document.getElementsByTagName('script')[0];
  var url = 'https://quantcast.mgr.consensu.org'
    .concat('/choice/', 'qYcv_mXsfZF_A', '/', host, '/choice.js')
  var uspTries = 0;
  var uspTriesLimit = 3;
  element.defer = true;
  element.type = 'text/javascript';
  element.src = url;

  firstScript.parentNode.insertBefore(element, firstScript);

  function makeStub() {
    var TCF_LOCATOR_NAME = '__tcfapiLocator';
    var queue = [];
    var win = window;
    var cmpFrame;

    function addFrame() {
      var doc = win.document;
      var otherCMP = !!(win.frames[TCF_LOCATOR_NAME]);

      if (!otherCMP) {
        if (doc.body) {
          var iframe = doc.createElement('iframe');

          iframe.style.cssText = 'display:none';
          iframe.name = TCF_LOCATOR_NAME;
          doc.body.appendChild(iframe);
        } else {
          setTimeout(addFrame, 5);
        }
      }
      return !otherCMP;
    }

    function tcfAPIHandler() {
      var gdprApplies;
      var args = arguments;

      if (!args.length) {
        return queue;
      } else if (args[0] === 'setGdprApplies') {
        if (
          args.length > 3 &&
          args[2] === 2 &&
          typeof args[3] === 'boolean'
        ) {
          gdprApplies = args[3];
          if (typeof args[2] === 'function') {
            args[2]('set', true);
          }
        }
      } else if (args[0] === 'ping') {
        var retr = {
          gdprApplies: gdprApplies,
          cmpLoaded: false,
          cmpStatus: 'stub'
        };

        if (typeof args[2] === 'function') {
          args[2](retr);
        }
      } else {
        queue.push(args);
      }
    }

    function postMessageEventHandler(event) {
      var msgIsString = typeof event.data === 'string';
      var json = {};

      try {
        if (msgIsString) {
          json = JSON.parse(event.data);
        } else {
          json = event.data;
        }
      } catch (ignore) {}

      var payload = json.__tcfapiCall;

      if (payload) {
        window.__tcfapi(
          payload.command,
          payload.version,
          function(retValue, success) {
            var returnMsg = {
              __tcfapiReturn: {
                returnValue: retValue,
                success: success,
                callId: payload.callId
              }
            };
            if (msgIsString) {
              returnMsg = JSON.stringify(returnMsg);
            }
            event.source.postMessage(returnMsg, '*');
          },
          payload.parameter
        );
      }
    }

    while (win) {
      try {
        if (win.frames[TCF_LOCATOR_NAME]) {
          cmpFrame = win;
          break;
        }
      } catch (ignore) {}

      if (win === window.top) {
        break;
      }
      win = win.parent;
    }
    if (!cmpFrame) {
      addFrame();
      win.__tcfapi = tcfAPIHandler;
      win.addEventListener('message', postMessageEventHandler, false);
    }
  };

  makeStub();

  var uspStubFunction = function() {
    var arg = arguments;
    if (typeof window.__uspapi !== uspStubFunction) {
      setTimeout(function() {
        if (typeof window.__uspapi !== 'undefined') {
          window.__uspapi.apply(window.__uspapi, arg);
        }
      }, 500);
    }
  };

  var checkIfUspIsReady = function() {
    uspTries++;
    if (window.__uspapi === uspStubFunction && uspTries < uspTriesLimit) {
      console.warn('USP is not accessible');
    } else {
      clearInterval(uspInterval);
    }
  };

  if (typeof window.__uspapi === 'undefined') {
    window.__uspapi = uspStubFunction;
    var uspInterval = setInterval(checkIfUspIsReady, 6000);
  }
})();
</script>
<!-- End Quantcast Choice. Consent Manager Tag v2.0 (for TCF 2.0) -->

<link rel="amphtml" href="https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/amp/"><link rel="icon" href="https://www.eldigitaldealbacete.com/wp-content/uploads/2020/02/cropped-12118986_711214355646438_7712997827358759636_n-32x32.png" sizes="32x32" />
<link rel="icon" href="https://www.eldigitaldealbacete.com/wp-content/uploads/2020/02/cropped-12118986_711214355646438_7712997827358759636_n-192x192.png" sizes="192x192" />
<link rel="apple-touch-icon" href="https://www.eldigitaldealbacete.com/wp-content/uploads/2020/02/cropped-12118986_711214355646438_7712997827358759636_n-180x180.png" />
<meta name="msapplication-TileImage" content="https://www.eldigitaldealbacete.com/wp-content/uploads/2020/02/cropped-12118986_711214355646438_7712997827358759636_n-270x270.png" />
<style>
.ai-viewports                 {--ai: 1;}
.ai-viewport-3                { display: none !important;}
.ai-viewport-2                { display: none !important;}
.ai-viewport-1                { display: inherit !important;}
.ai-viewport-0                { display: none !important;}
@media (min-width: 768px) and (max-width: 985px) {
.ai-viewport-1                { display: none !important;}
.ai-viewport-2                { display: inherit !important;}
}
@media (max-width: 767px) {
.ai-viewport-1                { display: none !important;}
.ai-viewport-3                { display: inherit !important;}
}
.ai-rotate {position: relative;}
.ai-rotate-hidden {visibility: hidden;}
.ai-rotate-hidden-2 {position: absolute; top: 0; left: 0; width: 100%; height: 100%;}
.ai-list-data, .ai-ip-data, .ai-fallback, .ai-list-block, .ai-list-block-ip {visibility: hidden; position: absolute; width: 50%; height: 1px; top: -1000px; z-index: -9999; margin: 0px!important;}
</style>
</head>

<body id="tie-body" class="post-template-default single single-post postid-546895 single-format-standard tie-no-js wrapper-has-shadow block-head-4 block-head-5 magazine2 is-thumb-overlay-disabled is-desktop is-header-layout-2 has-header-ad has-header-below-ad sidebar-right has-sidebar post-layout-4 narrow-title-narrow-media has-mobile-share hide_sidebars">



<div class="background-overlay">

	<div id="tie-container" class="site tie-container">

		
		<div id="tie-wrapper">

			
<header id="theme-header" class="theme-header header-layout-2 main-nav-light main-nav-default-light main-nav-below has-stream-item has-shadow has-normal-width-logo mobile-header-default mobile-components-row">
	
<div class="container header-container">
	<div class="tie-row logo-row">

		
		<div class="logo-wrapper">
			<div class="tie-col-md-4 logo-container clearfix">
				<div id="mobile-header-components-area_1" class="mobile-header-components"><ul class="components"><li class="mobile-component_menu custom-menu-link"><a href="#" id="mobile-menu-icon" class=""><span class="tie-mobile-menu-icon nav-icon is-layout-1"></span><span class="screen-reader-text">Menú</span></a></li></ul></div>
		<div id="logo" class="image-logo" >

			
			<a title="El Digital de Albacete" href="https://www.eldigitaldealbacete.com/">
				
				<picture class="tie-logo-default tie-logo-picture">
					<source class="tie-logo-source-default tie-logo-source" srcset="https://www.eldigitaldealbacete.com/wp-content/uploads/2020/02/logo-el-digital-de-albacete-cabecera-2-4.jpg">
					<img class="tie-logo-img-default tie-logo-img" src="https://www.eldigitaldealbacete.com/wp-content/uploads/2020/02/logo-el-digital-de-albacete-cabecera-2-4.jpg" alt="El Digital de Albacete" width="1145" height="262" style="max-height:262px; width: auto;" />
				</picture>
						</a>

			
		</div><!-- #logo /-->

					</div><!-- .tie-col /-->
		</div><!-- .logo-wrapper /-->

		<div class="tie-col-md-8 stream-item stream-item-top-wrapper"><div class="stream-item-top"><div class='code-block code-block-10 code-block-top ai-viewport-1 ai-viewport-2' style='margin: 8px 0; clear: both;'>
<div  class="paszone_container paszone-container-536108   " id="paszonecont_536108" style="overflow:hidden; max-width:1160px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-536108 " id="536108" style="overflow:hidden; max-width:1160px; max-height:px;  "><div class="wppasrotate   paszoneholder-536108" style="" ><div class="pasli pasli-536111 "  data-duration="5000" bid="536111" aid="536108"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NTM2MTEx&amp;pasZONE=NTM2MTA4" target="_blank" ><img src="https://www.eldigitaldealbacete.com/wp-content/uploads/2021/03/banner-1200x250-1.gif?pas=8220978552104051740" alt="GLOBALCAJA TOP" border="0"  /></a></div></div></div></div></div>

<div class='code-block code-block-11 code-block-top-mobile ai-viewport-3' style='margin: 8px 0; clear: both;'>
<div  class="paszone_container paszone-container-647793   " id="paszonecont_647793" style="overflow:hidden;    " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-647793 " id="647793" style="overflow:hidden;  width:100%; height:auto; display:inline-block;   "><div class="wppasrotate   paszoneholder-647793" style="" ><div class="pasli pasli-647796 "  data-duration="5000" bid="647796" aid="647793"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NjQ3Nzk2&amp;pasZONE=NjQ3Nzkz" target="_blank" ><img src="https://www.eldigitaldealbacete.com/wp-content/uploads/2021/03/globalcaja-pac-2021-300.gif?pas=6670523242104051740" alt="Globalcaja TOP mobile" border="0"  /></a></div></div></div></div></div>
</div></div><!-- .tie-col /-->
	</div><!-- .tie-row /-->
</div><!-- .container /-->

<div class="main-nav-wrapper">
	<nav id="main-nav"  class="main-nav header-nav"  aria-label="Menú de Navegación principal">
		<div class="container">

			<div class="main-menu-wrapper">

				
				<div id="menu-components-wrap">

					
					<div class="main-menu main-menu-wrap tie-alignleft">
						<div id="main-nav-menu" class="main-menu header-menu"><ul id="menu-menu-principal" class="menu" role="menubar"><li id="menu-item-14" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-14"><a href="https://www.eldigitaldealbacete.com">Portada</a></li>
<li id="menu-item-106942" class="menu-item menu-item-type-taxonomy menu-item-object-category current-post-ancestor current-menu-parent current-post-parent menu-item-106942 tie-current-menu"><a href="https://www.eldigitaldealbacete.com/noticias-albacete/">Albacete</a></li>
<li id="menu-item-12" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-12"><a href="https://www.eldigitaldealbacete.com/noticias-provincia-albacete/">Provincia</a>
<ul class="sub-menu menu-sub-content">
	<li id="menu-item-52335" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-52335"><a href="https://www.eldigitaldealbacete.com/noticias-almansa/">Almansa</a></li>
	<li id="menu-item-52336" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-52336"><a href="https://www.eldigitaldealbacete.com/noticias-hellin/">Hellín</a></li>
	<li id="menu-item-52337" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-52337"><a href="https://www.eldigitaldealbacete.com/noticias-villarrobledo/">Villarrobledo</a></li>
	<li id="menu-item-52448" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-52448"><a href="https://www.eldigitaldealbacete.com/noticias-laroda/">La Roda</a></li>
	<li id="menu-item-52338" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-52338"><a href="https://www.eldigitaldealbacete.com/noticias-resto-provincia-albacete/">Resto provincia</a></li>
</ul>
</li>
<li id="menu-item-10" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-10"><a href="https://www.eldigitaldealbacete.com/castilla-la-mancha/">Castilla-La Mancha</a></li>
<li id="menu-item-8" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-8"><a href="https://www.eldigitaldealbacete.com/noticias-albacete-balompie/">Albacete Balompié</a></li>
<li id="menu-item-11" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-11"><a href="https://www.eldigitaldealbacete.com/noticias-deporte-albacete/">Deportes</a></li>
<li id="menu-item-208" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-208"><a href="https://www.eldigitaldealbacete.com/contacto/">Contacto</a></li>
</ul></div>					</div><!-- .main-menu.tie-alignleft /-->

					<ul class="components">		<li class="search-bar menu-item custom-menu-link" aria-label="Buscar">
			<form method="get" id="search" action="https://www.eldigitaldealbacete.com/">
				<input id="search-input"  inputmode="search" type="text" name="s" title="Buscar por" placeholder="Buscar por" />
				<button id="search-submit" type="submit">
					<span class="tie-icon-search tie-search-icon" aria-hidden="true"></span>
					<span class="screen-reader-text">Buscar por</span>
				</button>
			</form>
		</li>
		 <li class="social-icons-item"><a class="social-link rss-social-icon" rel="external noopener nofollow" target="_blank" href="https://www.eldigitaldealbacete.com/feed/"><span class="tie-social-icon tie-icon-feed"></span><span class="screen-reader-text">RSS</span></a></li><li class="social-icons-item"><a class="social-link telegram-social-icon" rel="external noopener nofollow" target="_blank" href="https://t.me/eldigitaldealbacete"><span class="tie-social-icon tie-icon-paper-plane"></span><span class="screen-reader-text">Telegram</span></a></li><li class="social-icons-item"><a class="social-link instagram-social-icon" rel="external noopener nofollow" target="_blank" href="https://www.instagram.com/eldigitaldealbacete"><span class="tie-social-icon tie-icon-instagram"></span><span class="screen-reader-text">Instagram</span></a></li><li class="social-icons-item"><a class="social-link youtube-social-icon" rel="external noopener nofollow" target="_blank" href="https://www.youtube.com/user/ElDigitaldeAlbacete"><span class="tie-social-icon tie-icon-youtube"></span><span class="screen-reader-text">YouTube</span></a></li><li class="social-icons-item"><a class="social-link twitter-social-icon" rel="external noopener nofollow" target="_blank" href="https://twitter.com/ElDigitalAB"><span class="tie-social-icon tie-icon-twitter"></span><span class="screen-reader-text">Twitter</span></a></li><li class="social-icons-item"><a class="social-link facebook-social-icon" rel="external noopener nofollow" target="_blank" href="https://www.facebook.com/ElDigitalDeAlbacete"><span class="tie-social-icon tie-icon-facebook"></span><span class="screen-reader-text">Facebook</span></a></li> </ul><!-- Components -->
				</div><!-- #menu-components-wrap /-->
			</div><!-- .main-menu-wrapper /-->
		</div><!-- .container /-->
	</nav><!-- #main-nav /-->
</div><!-- .main-nav-wrapper /-->

</header>

<div class="stream-item stream-item-below-header"><div class='ai-viewports  ai-insert-16-72464695' style='margin: 8px 0; clear: both;' data-insertion='prepend' data-selector='.ai-insert-16-72464695' data-insertion-no-dbg data-code='PGRpdiBjbGFzcz0nY29kZS1ibG9jayBjb2RlLWJsb2NrLTE2IGNvZGUtYmxvY2stZGFiYWpvLW1lbnUnIHN0eWxlPSdtYXJnaW46IDhweCAwOyBjbGVhcjogYm90aDsnPgo8ZGl2ICBjbGFzcz0icGFzem9uZV9jb250YWluZXIgcGFzem9uZS1jb250YWluZXItNTQyODI3ICAgIiBpZD0icGFzem9uZWNvbnRfNTQyODI3IiBzdHlsZT0ib3ZlcmZsb3c6aGlkZGVuOyAgICAiID48ZGl2IGNsYXNzPSJwYXNpbmZvdHh0IGFib3ZlIj48c21hbGwgc3R5bGU9ImZvbnQtc2l6ZToxMXB4OyBjb2xvcjojQzBDMEMwOyB0ZXh0LWRlY29yYXRpb246bm9uZTsiPjwvc21hbGw+PC9kaXY+PGRpdiBjbGFzcz0id3BwYXN6b25lIHBhc3pvbmUtNTQyODI3ICIgaWQ9IjU0MjgyNyIgc3R5bGU9Im92ZXJmbG93OmhpZGRlbjsgIHdpZHRoOjEwMCU7IGhlaWdodDphdXRvOyBkaXNwbGF5OmlubGluZS1ibG9jazsgICAiPjxkaXYgY2xhc3M9IndwcGFzcm90YXRlICAgcGFzem9uZWhvbGRlci01NDI4MjciIHN0eWxlPSIiID48ZGl2IGNsYXNzPSJwYXNsaSBwYXNsaS01NDI4MjggIiAgZGF0YS1kdXJhdGlvbj0iNTAwMCIgYmlkPSI1NDI4MjgiIGFpZD0iNTQyODI3Ij48YSBjbGFzcz0id3BwYXNsaW5rIiBocmVmPSJodHRwczovL3d3dy5lbGRpZ2l0YWxkZWFsYmFjZXRlLmNvbT9wYXNJRD1OVFF5T0RJNCZhbXA7cGFzWk9ORT1OVFF5T0RJMyIgdGFyZ2V0PSJfYmxhbmsiID48aW1nIHNyYz0iaHR0cHM6Ly93d3cuZWxkaWdpdGFsZGVhbGJhY2V0ZS5jb20vd3AtY29udGVudC91cGxvYWRzLzIwMjEvMDIvYmFubmVyLWRpZ2l0YWwtc2tvZGEtY29tYnVzdGlibGUuZ2lmP3Bhcz0yMDkyNzg1ODg0MjEwNDA1MTc0MCIgYWx0PSJBTEJBTU9DSU9OIiBib3JkZXI9IjAiICAvPjwvYT48L2Rpdj48L2Rpdj48L2Rpdj48L2Rpdj4KPGRpdiAgY2xhc3M9InBhc3pvbmVfY29udGFpbmVyIHBhc3pvbmUtY29udGFpbmVyLTU4MjA1OSAgICIgaWQ9InBhc3pvbmVjb250XzU4MjA1OSIgc3R5bGU9Im92ZXJmbG93OmhpZGRlbjsgICAgIiA+PGRpdiBjbGFzcz0icGFzaW5mb3R4dCBhYm92ZSI+PHNtYWxsIHN0eWxlPSJmb250LXNpemU6MTFweDsgY29sb3I6I0MwQzBDMDsgdGV4dC1kZWNvcmF0aW9uOm5vbmU7Ij48L3NtYWxsPjwvZGl2PjxkaXYgY2xhc3M9IndwcGFzem9uZSBwYXN6b25lLTU4MjA1OSAiIGlkPSI1ODIwNTkiIHN0eWxlPSJvdmVyZmxvdzpoaWRkZW47ICB3aWR0aDoxMDAlOyBoZWlnaHQ6YXV0bzsgZGlzcGxheTppbmxpbmUtYmxvY2s7ICAgIj48ZGl2IGNsYXNzPSJ3cHBhc3JvdGF0ZSAgIHBhc3pvbmVob2xkZXItNTgyMDU5IiBzdHlsZT0id2lkdGg6MTAwJTsgaGVpZ2h0OjEwMCU7IiA+PC9kaXY+PC9kaXY+PC9kaXY+CjxkaXYgIGNsYXNzPSJwYXN6b25lX2NvbnRhaW5lciBwYXN6b25lLWNvbnRhaW5lci01OTU2MDIgICAiIGlkPSJwYXN6b25lY29udF81OTU2MDIiIHN0eWxlPSJvdmVyZmxvdzpoaWRkZW47ICAgICIgPjxkaXYgY2xhc3M9InBhc2luZm90eHQgYWJvdmUiPjxzbWFsbCBzdHlsZT0iZm9udC1zaXplOjExcHg7IGNvbG9yOiNDMEMwQzA7IHRleHQtZGVjb3JhdGlvbjpub25lOyI+PC9zbWFsbD48L2Rpdj48ZGl2IGNsYXNzPSJ3cHBhc3pvbmUgcGFzem9uZS01OTU2MDIgIiBpZD0iNTk1NjAyIiBzdHlsZT0ib3ZlcmZsb3c6aGlkZGVuOyAgd2lkdGg6MTAwJTsgaGVpZ2h0OmF1dG87IGRpc3BsYXk6aW5saW5lLWJsb2NrOyAgICI+PGRpdiBjbGFzcz0id3BwYXNyb3RhdGUgICBwYXN6b25laG9sZGVyLTU5NTYwMiIgc3R5bGU9IndpZHRoOjEwMCU7IGhlaWdodDoxMDAlOyIgPjwvZGl2PjwvZGl2PjwvZGl2Pgo8ZGl2ICBjbGFzcz0icGFzem9uZV9jb250YWluZXIgcGFzem9uZS1jb250YWluZXItNTk1NjU0ICAgIiBpZD0icGFzem9uZWNvbnRfNTk1NjU0IiBzdHlsZT0ib3ZlcmZsb3c6aGlkZGVuOyAgICAiID48ZGl2IGNsYXNzPSJwYXNpbmZvdHh0IGFib3ZlIj48c21hbGwgc3R5bGU9ImZvbnQtc2l6ZToxMXB4OyBjb2xvcjojQzBDMEMwOyB0ZXh0LWRlY29yYXRpb246bm9uZTsiPjwvc21hbGw+PC9kaXY+PGRpdiBjbGFzcz0id3BwYXN6b25lIHBhc3pvbmUtNTk1NjU0ICIgaWQ9IjU5NTY1NCIgc3R5bGU9Im92ZXJmbG93OmhpZGRlbjsgIHdpZHRoOjEwMCU7IGhlaWdodDphdXRvOyBkaXNwbGF5OmlubGluZS1ibG9jazsgICAiPjxkaXYgY2xhc3M9IndwcGFzcm90YXRlICAgcGFzem9uZWhvbGRlci01OTU2NTQiIHN0eWxlPSJ3aWR0aDoxMDAlOyBoZWlnaHQ6MTAwJTsiID48L2Rpdj48L2Rpdj48L2Rpdj48L2Rpdj4K' data-block='16'></div>

</div><div style="background-image: url(https://www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Centro-de-la-Mujer-2.jpg)" class="fullwidth-entry-title single-big-img full-width-area tie-parallax"><div class="thumb-overlay"></div><!-- .thumb-overlay /--><div class="container fullwidth-entry-title-wrapper">
<header class="entry-header-outer">

	<nav id="breadcrumb"><a href="https://www.eldigitaldealbacete.com/"><span class="tie-icon-home" aria-hidden="true"></span> Inicio</a><em class="delimiter">/</em><a href="https://www.eldigitaldealbacete.com/noticias-albacete/">Albacete</a><em class="delimiter">/</em><span class="current">CORONAVIRUS | El Ayuntamiento garantiza la atención integral a las mujeres víctimas de la violencia de género en Albacete durante la crisis del CoVid-19</span></nav><script type="application/ld+json">{"@context":"http:\/\/schema.org","@type":"BreadcrumbList","@id":"#Breadcrumb","itemListElement":[{"@type":"ListItem","position":1,"item":{"name":"Inicio","@id":"https:\/\/www.eldigitaldealbacete.com\/"}},{"@type":"ListItem","position":2,"item":{"name":"Albacete","@id":"https:\/\/www.eldigitaldealbacete.com\/noticias-albacete\/"}}]}</script>
	<div class="entry-header">

		<span class="post-cat-wrap"><a class="post-cat tie-cat-2" href="https://www.eldigitaldealbacete.com/noticias-albacete/">Albacete</a></span>
		<h1 class="post-title entry-title">CORONAVIRUS | El Ayuntamiento garantiza la atención integral a las mujeres víctimas de la violencia de género en Albacete durante la crisis del CoVid-19</h1>

			</div><!-- .entry-header /-->

	
			<a id="go-to-content" href="#go-to-content"><span class="tie-icon-angle-down"></span></a>
			
	
</header><!-- .entry-header-outer /-->

</div><!-- .container /-->
				</div><!-- .single-big-img /-->
			<div id="content" class="site-content container"><div id="main-content-row" class="tie-row main-content-row">

<div class="main-content tie-col-md-8 tie-col-xs-12" role="main">

	<div class="stream-item stream-item-above-post"><div class='ai-viewports ai-viewport-3 ai-insert-13-28375575' style='margin: 8px 0; clear: both;' data-insertion='prepend' data-selector='.ai-insert-13-28375575' data-insertion-no-dbg data-code='PGRpdiBjbGFzcz0nY29kZS1ibG9jayBjb2RlLWJsb2NrLTEzIGNvZGUtYmxvY2stbW92aWxlcy1zdXBlcmlvci1ub3RpY2lhJyBzdHlsZT0nbWFyZ2luOiA4cHggMDsgY2xlYXI6IGJvdGg7Jz4KIDwvZGl2Pgo=' data-block='13'></div>

</div>
	<article id="the-post" class="container-wrapper post-content">

		<div  class="featured-area"><div class="featured-area-inner"><figure class="single-featured-image"><img width="780" height="440" src="https://www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Centro-de-la-Mujer-2.jpg" class="attachment-jannah-image-post size-jannah-image-post wp-post-image" alt="Noticias Albacete" loading="lazy" is_main_img="1" srcset="https://www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Centro-de-la-Mujer-2.jpg 1500w, https://www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Centro-de-la-Mujer-2-370x209.jpg 370w, https://www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Centro-de-la-Mujer-2-620x350.jpg 620w, https://www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Centro-de-la-Mujer-2-184x104.jpg 184w, https://www.eldigitaldealbacete.com/wp-content/uploads/2020/03/Centro-de-la-Mujer-2-768x433.jpg 768w" sizes="(max-width: 780px) 100vw, 780px" /></figure></div></div>
		<div id="share-buttons-top" class="share-buttons share-buttons-top">
			<div class="share-links  icons-text share-skew">
				
				<a href="https://www.facebook.com/sharer.php?u=https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" rel="external noopener nofollow" title="Facebook" target="_blank" class="facebook-share-btn  large-share-button" data-raw="https://www.facebook.com/sharer.php?u={post_link}">
					<span class="share-btn-icon tie-icon-facebook"></span> <span class="social-text">Facebook</span>
				</a>
				<a href="https://twitter.com/intent/tweet?text=CORONAVIRUS%20%7C%20El%20Ayuntamiento%20garantiza%20la%20atenci%C3%B3n%20integral%20a%20las%20mujeres%20v%C3%ADctimas%20de%20la%20violencia%20de%20g%C3%A9nero%20en%20Albacete%20durante%20la%20crisis%20del%20CoVid-19&#038;url=https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" rel="external noopener nofollow" title="Twitter" target="_blank" class="twitter-share-btn  large-share-button" data-raw="https://twitter.com/intent/tweet?text={post_title}&amp;url={post_link}">
					<span class="share-btn-icon tie-icon-twitter"></span> <span class="social-text">Twitter</span>
				</a>
				<a href="https://api.whatsapp.com/send?text=CORONAVIRUS%20%7C%20El%20Ayuntamiento%20garantiza%20la%20atenci%C3%B3n%20integral%20a%20las%20mujeres%20v%C3%ADctimas%20de%20la%20violencia%20de%20g%C3%A9nero%20en%20Albacete%20durante%20la%20crisis%20del%20CoVid-19%20https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" rel="external noopener nofollow" title="WhatsApp" target="_blank" class="whatsapp-share-btn  large-share-button" data-raw="https://api.whatsapp.com/send?text={post_title}%20{post_link}">
					<span class="share-btn-icon tie-icon-whatsapp"></span> <span class="social-text">WhatsApp</span>
				</a>
				<a href="https://telegram.me/share/url?url=https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/&text=CORONAVIRUS%20%7C%20El%20Ayuntamiento%20garantiza%20la%20atenci%C3%B3n%20integral%20a%20las%20mujeres%20v%C3%ADctimas%20de%20la%20violencia%20de%20g%C3%A9nero%20en%20Albacete%20durante%20la%20crisis%20del%20CoVid-19" rel="external noopener nofollow" title="Telegram" target="_blank" class="telegram-share-btn  large-share-button" data-raw="https://telegram.me/share/url?url={post_link}&text={post_title}">
					<span class="share-btn-icon tie-icon-paper-plane"></span> <span class="social-text">Telegram</span>
				</a>
				<a href="mailto:?subject=CORONAVIRUS%20%7C%20El%20Ayuntamiento%20garantiza%20la%20atenci%C3%B3n%20integral%20a%20las%20mujeres%20v%C3%ADctimas%20de%20la%20violencia%20de%20g%C3%A9nero%20en%20Albacete%20durante%20la%20crisis%20del%20CoVid-19&#038;body=https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" rel="external noopener nofollow" title="Compartir por correo electrónico" target="_blank" class="email-share-btn  large-share-button" data-raw="mailto:?subject={post_title}&amp;body={post_link}">
					<span class="share-btn-icon tie-icon-envelope"></span> <span class="social-text">Compartir por correo electrónico</span>
				</a>			</div><!-- .share-links /-->
		</div><!-- .share-buttons /-->

		
		<div class="entry-content entry clearfix">

			
			<div class='code-block code-block-4 code-block-antes-del-parrafo-1' style='margin: 8px auto; text-align: center; display: block; clear: both;'>
<div  class="paszone_container paszone-container-182997   " id="paszonecont_182997" style="overflow:hidden;  text-align:center;  " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-182997 " id="182997" style="overflow:hidden;  width:100%; height:auto;  text-align:center; "><div class="wppasrotate   paszoneholder-182997" style="" ><div class="pasli pasli-168174 "  data-duration="5000" bid="168174" aid="182997"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=MTY4MTc0&amp;pasZONE=MTgyOTk3" target="_blank" ><img src="https://www.eldigitaldealbacete.com/wp-content/uploads/2021/03/620x250_dma_autoalba_chr.gif?pas=16438424992104051740" alt="TOyota" border="0"  /></a></div></div></div></div></div>
<p><span id="more-546895"></span></p>
<p style="text-align: justify;"><em>/Redacción/</em></p>
<p style="text-align: justify;"><strong>El Ayuntamiento de Albacete, a través del Centro de la Mujer y de los recursos de acogida, cofinanciados por el Instituto de la Mujer de Castilla-La Mancha, mantiene la atención a las mujeres que son víctimas de la violencia de género también durante la cuarentena decretada por la pandemia del CoVid-19.</strong></p><div class='ai-viewports  ai-insert-1-20064408' style='margin: 8px auto; text-align: center; display: block; clear: both;' data-insertion='prepend' data-selector='.ai-insert-1-20064408' data-insertion-no-dbg data-code='PGRpdiBjbGFzcz0nY29kZS1ibG9jayBjb2RlLWJsb2NrLTEgY29kZS1ibG9jay1kZXNwdWVzLWRlbC1wYXJyYWZvLTMnIHN0eWxlPSdtYXJnaW46IDhweCBhdXRvOyB0ZXh0LWFsaWduOiBjZW50ZXI7IGRpc3BsYXk6IGJsb2NrOyBjbGVhcjogYm90aDsnPgo8ZGl2ICBjbGFzcz0icGFzem9uZV9jb250YWluZXIgcGFzem9uZS1jb250YWluZXItMTM1OTUzICAgIiBpZD0icGFzem9uZWNvbnRfMTM1OTUzIiBzdHlsZT0ib3ZlcmZsb3c6aGlkZGVuOyBtYXgtd2lkdGg6cHg7IG1hcmdpbjogMCBhdXRvOyB0ZXh0LWFsaWduOmNlbnRlcjsgICIgPjxkaXYgY2xhc3M9InBhc2luZm90eHQgYWJvdmUiPjxzbWFsbCBzdHlsZT0iZm9udC1zaXplOjExcHg7IGNvbG9yOiNDMEMwQzA7IHRleHQtZGVjb3JhdGlvbjpub25lOyI+PC9zbWFsbD48L2Rpdj48ZGl2IGNsYXNzPSJ3cHBhc3pvbmUgcGFzem9uZS0xMzU5NTMgIiBpZD0iMTM1OTUzIiBzdHlsZT0ib3ZlcmZsb3c6aGlkZGVuOyBtYXgtd2lkdGg6cHg7IG1heC1oZWlnaHQ6cHg7IG1hcmdpbjogMCBhdXRvOyB0ZXh0LWFsaWduOmNlbnRlcjsgIj48ZGl2IGNsYXNzPSJ3cHBhc3JvdGF0ZSAgIHBhc3pvbmVob2xkZXItMTM1OTUzIiBzdHlsZT0iIiA+PGRpdiBjbGFzcz0icGFzbGkgcGFzbGktNjAxODk0ICIgIGRhdGEtZHVyYXRpb249IjUwMDAiIGJpZD0iNjAxODk0IiBhaWQ9IjEzNTk1MyI+PGRpdiBpZD0idGFib29sYS1taWQtYXJ0aWNsZS10aHVtYm5haWxzLTEiPjwvZGl2Pg0KPHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KICB3aW5kb3cuX3RhYm9vbGEgPSB3aW5kb3cuX3RhYm9vbGEgfHwgW107DQogIF90YWJvb2xhLnB1c2goew0KICAgIG1vZGU6ICd0aHVtYm5haWxzLWEnLA0KICAgIGNvbnRhaW5lcjogJ3RhYm9vbGEtbWlkLWFydGljbGUtdGh1bWJuYWlscy0xJywNCiAgICBwbGFjZW1lbnQ6ICdNaWQgQXJ0aWNsZSBUaHVtYm5haWxzIDEnLA0KICAgIHRhcmdldF90eXBlOiAnbWl4Jw0KICB9KTsNCjwvc2NyaXB0PjwvZGl2PjwvZGl2PjwvZGl2PjwvZGl2PgoKPC9kaXY+Cg==' data-block='1'></div>


<p style="text-align: justify;">Las primeras medidas tomadas en el Ayuntamiento ya fijaban como un servicio esencial la atención a las víctimas, que se realiza a través de los recursos de acogida que tenemos en nuestra ciudad, y de esa forma, tanto el CAIVG (Centro de Atención Integral a Víctimas de Violencia de Género), como el CUR (Centro de Urgencias), han permanecido en funcionamiento prestando atención a las mujeres y menores que precisan de recursos de acogida.<span class="Apple-converted-space"> </span></p>
<p style="text-align: justify;">El Ayuntamiento trabaja en una doble línea, por un lado, garantizar la atención a las víctimas, y, de otra parte, asegurar la prevención del contagio del CoVid-19, tanto de las usuarias y sus hijos e hijas, como del personal municipal que presta sus servicios en los recursos. Por ello, se ha aplicado una batería de medidas de prevención y cuarentena ante nuevos ingresos, mejora de la limpieza y limitación de uso de los espacios comunes de los recursos.<span class="Apple-converted-space"> </span></p>
<p style="text-align: justify;">Por otro lado, en el Centro de la Mujer se han acordado servicios mínimos y un protocolo de teleasistencia y se ha restringido la atención únicamente a mujeres víctimas de violencia de género que precisen de asistencia psicológica, jurídica o social de forma urgente. De esta forma, las mujeres pueden llamar al teléfono del centro de la mujer, 967 24 69 04 y su llamada es atendida por el personal de administración del centro, desde casa, quien, en atención a la demanda de la mujer, la pondrá en contacto con profesionales del ámbito de psicología, el derecho o la atención social.</p><div class='code-block code-block-3 code-block-despus-del-parrafo-6' style='margin: 8px 0; clear: both;'>
</div>

<p style="text-align: justify;">Por su parte, las profesionales atenderán a la mujer de forma telefónica siempre que sea posible, salvo que se precise la tramitación administrativa a través del programa Atempro, solicitud de cambio de cerradura o que la mujer necesite del dispositivo de traducción. En el caso de que la atención tenga que ser presencial, se guardarán las medidas recomendadas como mantener la distancia de un metro y medio en la atención, ventilación de los espacios, medidas de higiene de manos y otros elementos de protección personal para las profesionales, además, se ha llevado a cabo una desinfección del Centro y la empresa responsable del servicio de limpieza, efectuará una desinfección diaria y exhaustiva del mismo.</p>
<p style="text-align: justify;">Para el concejal del área, Manu Martínez constituye “una prioridad municipal mantener la asistencia a las mujeres y menores víctimas de la violencia de género, más si cabe en estos días en los que el confinamiento en los hogares puede provocar mayores situaciones de indefensión, además, en nuestra ocupación diaria se encuentra también la atención a las trabajadoras de los recursos, quienes están dando lo mejor de ellas mismas en esta dura situación y a las que, no me cabe duda, la sociedad les está profundamente agradecida”.<span class="Apple-converted-space"> </span></p><div class='code-block code-block-5 code-block-despues-del-parrafo-5' style='margin: 8px 0; clear: both;'>
</div>

<p>&nbsp;</p>
</p><!-- AI CONTENT END 2 -->

			
		</div><!-- .entry-content /-->

				<div id="post-extra-info">
			<div class="theiaStickySidebar">
				
		<div id="share-buttons-top" class="share-buttons share-buttons-top">
			<div class="share-links  icons-text share-skew">
				
				<a href="https://www.facebook.com/sharer.php?u=https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" rel="external noopener nofollow" title="Facebook" target="_blank" class="facebook-share-btn  large-share-button" data-raw="https://www.facebook.com/sharer.php?u={post_link}">
					<span class="share-btn-icon tie-icon-facebook"></span> <span class="social-text">Facebook</span>
				</a>
				<a href="https://twitter.com/intent/tweet?text=CORONAVIRUS%20%7C%20El%20Ayuntamiento%20garantiza%20la%20atenci%C3%B3n%20integral%20a%20las%20mujeres%20v%C3%ADctimas%20de%20la%20violencia%20de%20g%C3%A9nero%20en%20Albacete%20durante%20la%20crisis%20del%20CoVid-19&#038;url=https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" rel="external noopener nofollow" title="Twitter" target="_blank" class="twitter-share-btn  large-share-button" data-raw="https://twitter.com/intent/tweet?text={post_title}&amp;url={post_link}">
					<span class="share-btn-icon tie-icon-twitter"></span> <span class="social-text">Twitter</span>
				</a>
				<a href="https://api.whatsapp.com/send?text=CORONAVIRUS%20%7C%20El%20Ayuntamiento%20garantiza%20la%20atenci%C3%B3n%20integral%20a%20las%20mujeres%20v%C3%ADctimas%20de%20la%20violencia%20de%20g%C3%A9nero%20en%20Albacete%20durante%20la%20crisis%20del%20CoVid-19%20https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" rel="external noopener nofollow" title="WhatsApp" target="_blank" class="whatsapp-share-btn  large-share-button" data-raw="https://api.whatsapp.com/send?text={post_title}%20{post_link}">
					<span class="share-btn-icon tie-icon-whatsapp"></span> <span class="social-text">WhatsApp</span>
				</a>
				<a href="https://telegram.me/share/url?url=https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/&text=CORONAVIRUS%20%7C%20El%20Ayuntamiento%20garantiza%20la%20atenci%C3%B3n%20integral%20a%20las%20mujeres%20v%C3%ADctimas%20de%20la%20violencia%20de%20g%C3%A9nero%20en%20Albacete%20durante%20la%20crisis%20del%20CoVid-19" rel="external noopener nofollow" title="Telegram" target="_blank" class="telegram-share-btn  large-share-button" data-raw="https://telegram.me/share/url?url={post_link}&text={post_title}">
					<span class="share-btn-icon tie-icon-paper-plane"></span> <span class="social-text">Telegram</span>
				</a>
				<a href="mailto:?subject=CORONAVIRUS%20%7C%20El%20Ayuntamiento%20garantiza%20la%20atenci%C3%B3n%20integral%20a%20las%20mujeres%20v%C3%ADctimas%20de%20la%20violencia%20de%20g%C3%A9nero%20en%20Albacete%20durante%20la%20crisis%20del%20CoVid-19&#038;body=https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" rel="external noopener nofollow" title="Compartir por correo electrónico" target="_blank" class="email-share-btn  large-share-button" data-raw="mailto:?subject={post_title}&amp;body={post_link}">
					<span class="share-btn-icon tie-icon-envelope"></span> <span class="social-text">Compartir por correo electrónico</span>
				</a>			</div><!-- .share-links /-->
		</div><!-- .share-buttons /-->

					</div>
		</div>

		<div class="clearfix"></div>
		<script id="tie-schema-json" type="application/ld+json">{"@context":"http:\/\/schema.org","@type":"NewsArticle","dateCreated":"2020-03-20T10:00:03+01:00","datePublished":"2020-03-20T10:00:03+01:00","dateModified":"2020-03-20T12:29:52+01:00","headline":"CORONAVIRUS | El Ayuntamiento garantiza la atenci\u00f3n integral a las mujeres v\u00edctimas de la violencia de g\u00e9nero en Albacete durante la crisis del CoVid-19","name":"CORONAVIRUS | El Ayuntamiento garantiza la atenci\u00f3n integral a las mujeres v\u00edctimas de la violencia de g\u00e9nero en Albacete durante la crisis del CoVid-19","keywords":[],"url":"https:\/\/www.eldigitaldealbacete.com\/2020\/03\/20\/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19\/","description":"\/Redacci\u00f3n\/ El Ayuntamiento de Albacete, a trav\u00e9s del Centro de la Mujer y de los recursos de acogida, cofinanciados por el Instituto de la Mujer de Castilla-La Mancha, mantiene la atenci\u00f3n a las muje","copyrightYear":"2020","articleSection":"Albacete","articleBody":"\r\n\/Redacci\u00f3n\/\r\nEl Ayuntamiento de Albacete, a trav\u00e9s del Centro de la Mujer y de los recursos de acogida, cofinanciados por el Instituto de la Mujer de Castilla-La Mancha, mantiene la atenci\u00f3n a las mujeres que son v\u00edctimas de la violencia de g\u00e9nero tambi\u00e9n durante la cuarentena decretada por la pandemia del CoVid-19.\r\nLas primeras medidas tomadas en el Ayuntamiento ya fijaban como un servicio esencial la atenci\u00f3n a las v\u00edctimas, que se realiza a trav\u00e9s de los recursos de acogida que tenemos en nuestra ciudad, y de esa forma, tanto el CAIVG (Centro de Atenci\u00f3n Integral a V\u00edctimas de Violencia de G\u00e9nero), como el CUR (Centro de Urgencias), han permanecido en funcionamiento prestando atenci\u00f3n a las mujeres y menores que precisan de recursos de acogida.\u00a0\r\nEl Ayuntamiento trabaja en una doble l\u00ednea, por un lado, garantizar la atenci\u00f3n a las v\u00edctimas, y, de otra parte, asegurar la prevenci\u00f3n del contagio del CoVid-19, tanto de las usuarias y sus hijos e hijas, como del personal municipal que presta sus servicios en los recursos. Por ello, se ha aplicado una bater\u00eda de medidas de prevenci\u00f3n y cuarentena ante nuevos ingresos, mejora de la limpieza y limitaci\u00f3n de uso de los espacios comunes de los recursos.\u00a0\r\nPor otro lado, en el Centro de la Mujer se han acordado servicios m\u00ednimos y un protocolo de teleasistencia y se ha restringido la atenci\u00f3n \u00fanicamente a mujeres v\u00edctimas de violencia de g\u00e9nero que precisen de asistencia psicol\u00f3gica, jur\u00eddica o social de forma urgente. De esta forma, las mujeres pueden llamar al tel\u00e9fono del centro de la mujer, 967 24 69 04 y su llamada es atendida por el personal de administraci\u00f3n del centro, desde casa, quien, en atenci\u00f3n a la demanda de la mujer, la pondr\u00e1 en contacto con profesionales del \u00e1mbito de psicolog\u00eda, el derecho o la atenci\u00f3n social.\r\nPor su parte, las profesionales atender\u00e1n a la mujer de forma telef\u00f3nica siempre que sea posible, salvo que se precise la tramitaci\u00f3n administrativa a trav\u00e9s del programa Atempro, solicitud de cambio de cerradura o que la mujer necesite del dispositivo de traducci\u00f3n. En el caso de que la atenci\u00f3n tenga que ser presencial, se guardar\u00e1n las medidas recomendadas como mantener la distancia de un metro y medio en la atenci\u00f3n, ventilaci\u00f3n de los espacios, medidas de higiene de manos y otros elementos de protecci\u00f3n personal para las profesionales, adem\u00e1s, se ha llevado a cabo una desinfecci\u00f3n del Centro y la empresa responsable del servicio de limpieza, efectuar\u00e1 una desinfecci\u00f3n diaria y exhaustiva del mismo.\r\nPara el concejal del \u00e1rea, Manu Mart\u00ednez constituye \u201cuna prioridad municipal mantener la asistencia a las mujeres y menores v\u00edctimas de la violencia de g\u00e9nero, m\u00e1s si cabe en estos d\u00edas en los que el confinamiento en los hogares puede provocar mayores situaciones de indefensi\u00f3n, adem\u00e1s, en nuestra ocupaci\u00f3n diaria se encuentra tambi\u00e9n la atenci\u00f3n a las trabajadoras de los recursos, quienes est\u00e1n dando lo mejor de ellas mismas en esta dura situaci\u00f3n y a las que, no me cabe duda, la sociedad les est\u00e1 profundamente agradecida\u201d.\u00a0\r\n&nbsp;","publisher":{"@id":"#Publisher","@type":"Organization","name":"El Digital de Albacete","logo":{"@type":"ImageObject","url":"https:\/\/www.eldigitaldealbacete.com\/wp-content\/uploads\/2020\/02\/logo-el-digital-de-albacete-cabecera-2-4.jpg"},"sameAs":["https:\/\/www.facebook.com\/ElDigitalDeAlbacete","https:\/\/twitter.com\/ElDigitalAB","https:\/\/www.youtube.com\/user\/ElDigitaldeAlbacete","https:\/\/www.instagram.com\/eldigitaldealbacete","https:\/\/t.me\/eldigitaldealbacete"]},"sourceOrganization":{"@id":"#Publisher"},"copyrightHolder":{"@id":"#Publisher"},"mainEntityOfPage":{"@type":"WebPage","@id":"https:\/\/www.eldigitaldealbacete.com\/2020\/03\/20\/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19\/","breadcrumb":{"@id":"#Breadcrumb"}},"author":{"@type":"Person","name":"El Digital de Albacete","url":"https:\/\/www.eldigitaldealbacete.com\/author\/aris-comunicacion\/"},"image":{"@type":"ImageObject","url":"https:\/\/www.eldigitaldealbacete.com\/wp-content\/uploads\/2020\/03\/Centro-de-la-Mujer-2.jpg","width":1500,"height":846}}</script>
	</article><!-- #the-post /-->

	<div class="stream-item stream-item-below-post"><div id="taboola-below-homepage-thumbnails"></div>
<script type="text/javascript">
  window._taboola = window._taboola || [];
  _taboola.push({
    mode: 'alternating-thumbnails-a',
    container: 'taboola-below-homepage-thumbnails',
    placement: 'Below Homepage Thumbnails',
    target_type: 'mix'
  });
</script></div>
	<div class="post-components">

		
	</div><!-- .post-components /-->

	
</div><!-- .main-content -->


	<aside class="sidebar tie-col-md-4 tie-col-xs-12 normal-side" aria-label="Barra lateral principal">
		<div class="theiaStickySidebar">
			<div id="text-305" class="container-wrapper widget widget_text">			<div class="textwidget"><center><div style="width: 300px; height: 62px; background-image: url(https://1.bp.blogspot.com/-E-JcWuGvn6Q/UD5glfZvoKI/AAAAAAAABbE/FeLCsukJRfw/s1600/fondofecha04.jpg); line-height: 1.5em; border: 1px solid #8e8e8e;">

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
		<div class="clearfix"></div></div><!-- .widget /--><div id="text-681" class="container-wrapper widget widget_text">			<div class="textwidget"><div  class="paszone_container paszone-container-455617   " id="paszonecont_455617" style="overflow:hidden; max-width:300px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-455617 " id="455617" style="overflow:hidden; width:300px; height:300px;  "><div class="wppasrotate   paszoneholder-455617" style="" ><div class="pasli pasli-464217 "  data-duration="5000" bid="464217" aid="455617"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NDY0MjE3&amp;pasZONE=NDU1NjE3" target="_blank" rel="noopener"><img src="https://www.eldigitaldealbacete.com/wp-content/uploads/2021/04/100comprometidos-generico.gif?pas=18673496412104051740" alt="CONACO" border="0"  /></a></div></div></div></div>
</div>
		<div class="clearfix"></div></div><!-- .widget /--><div id="text-831" class="container-wrapper widget widget_text">			<div class="textwidget"><div  class="paszone_container paszone-container-649239   " id="paszonecont_649239" style="overflow:hidden; max-width:300px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-649239 " id="649239" style="overflow:hidden; width:300px; height:300px;  "><div class="wppasrotate   paszoneholder-649239" style="" ><div class="pasli pasli-649240 "  data-duration="5000" bid="649240" aid="649239"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NjQ5MjQw&amp;pasZONE=NjQ5MjM5" target="_blank" rel="noopener"><img src="https://www.eldigitaldealbacete.com/wp-content/uploads/2021/03/plan_formativo_eldigitalab_300x300.jpg?pas=9947063352104051740" alt="FEDA ORDENADOR" border="0"  /></a></div></div></div></div>
</div>
		<div class="clearfix"></div></div><!-- .widget /--><div id="text-829" class="container-wrapper widget widget_text">			<div class="textwidget"><div  class="paszone_container paszone-container-649244   " id="paszonecont_649244" style="overflow:hidden; max-width:300px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-649244 " id="649244" style="overflow:hidden; width:300px; height:300px;  "><div class="wppasrotate   paszoneholder-649244" style="" ><div class="pasli pasli-649246 "  data-duration="5000" bid="649246" aid="649244"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NjQ5MjQ2&amp;pasZONE=NjQ5MjQ0" target="_blank" rel="noopener"><img src="https://www.eldigitaldealbacete.com/wp-content/uploads/2021/03/banner-pac-eurocaja-rural.gif?pas=4479074532104051740" alt="EUROCAJA RURAL PC" border="0"  /></a></div></div></div></div>
</div>
		<div class="clearfix"></div></div><!-- .widget /--><div id="text-640" class="container-wrapper widget widget_text">			<div class="textwidget"><div  class="paszone_container paszone-container-649248   " id="paszonecont_649248" style="overflow:hidden; max-width:300px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-649248 " id="649248" style="overflow:hidden; width:300px; height:300px;  "><div class="wppasrotate   paszoneholder-649248" style="" ><div class="pasli pasli-649249 "  data-duration="5000" bid="649249" aid="649248"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NjQ5MjQ5&amp;pasZONE=NjQ5MjQ4" target="_blank" rel="noopener"><img src="https://www.eldigitaldealbacete.com/wp-content/uploads/2021/03/baner.gif?pas=7849223592104051740" alt="CURSO SUMILLER" border="0"  /></a></div></div></div></div>
</div>
		<div class="clearfix"></div></div><!-- .widget /--><div id="text-809" class="container-wrapper widget widget_text">			<div class="textwidget"><div  class="paszone_container paszone-container-649255   " id="paszonecont_649255" style="overflow:hidden; max-width:300px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-649255 " id="649255" style="overflow:hidden; width:300px; height:300px;  "><div class="wppasrotate   paszoneholder-649255" style="" ><div class="pasli pasli-649256 "  data-duration="5000" bid="649256" aid="649255"><script type="text/javascript" id="mele9nokcr">
(function(){
  var s = document.createElement("script");
  s.type = "text/javascript";
  s.src = "//hintfly.com/t.js?i=iqu5sj8x7pzzspqxr8&cb=" + (new String(Math.random())).substring(2,8) + (((new Date()).getTime()));
  d = document.getElementById("mele9nokcr");
  d.parentNode.insertBefore(s, d);
})();
</script>
<noscript><a href="//hintfly.com/link?i=iqu5sj8x7pzzspqxr8"><img src="//hintfly.com/img?i=iqu5sj8x7pzzspqxr8" border="0"></a></noscript></div></div></div></div>
</div>
		<div class="clearfix"></div></div><!-- .widget /--><div id="text-728" class="container-wrapper widget widget_text">			<div class="textwidget"><div  class="paszone_container paszone-container-649262   " id="paszonecont_649262" style="overflow:hidden; max-width:300px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-649262 " id="649262" style="overflow:hidden; width:300px; height:300px;  "><div class="wppasrotate   paszoneholder-649262" style="" ><div class="pasli pasli-649263 "  data-duration="5000" bid="649263" aid="649262"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NjQ5MjYz&amp;pasZONE=NjQ5MjYy" target="_blank" rel="noopener"><img src="https://www.eldigitaldealbacete.com/wp-content/uploads/2020/12/covid19_digab.gif?pas=5027245552104051740" alt="AMIAB" border="0"  /></a></div></div></div></div>
</div>
		<div class="clearfix"></div></div><!-- .widget /--><div id="text-803" class="container-wrapper widget widget_text">			<div class="textwidget"><div  class="paszone_container paszone-container-649257   " id="paszonecont_649257" style="overflow:hidden; max-width:300px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-649257 " id="649257" style="overflow:hidden; width:300px; height:300px;  "><div class="wppasrotate   paszoneholder-649257" style="" ><div class="pasli pasli-649258 "  data-duration="5000" bid="649258" aid="649257"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NjQ5MjU4&amp;pasZONE=NjQ5MjU3" target="_blank" rel="noopener"><img src="https://www.eldigitaldealbacete.com/wp-content/uploads/2019/06/BANNER-ALMANSA-300X300.jpg?pas=7141999182104051740" alt="ALMANSA" border="0"  /></a></div></div></div></div>
</div>
		<div class="clearfix"></div></div><!-- .widget /--><div id="text-540" class="container-wrapper widget widget_text">			<div class="textwidget"><div  class="paszone_container paszone-container-352600   " id="paszonecont_352600" style="overflow:hidden; max-width:160px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-352600 " id="352600" style="overflow:hidden; width:160px; height:620px;  "><div class="wppasrotate   paszoneholder-352600" style="" ><div class="pasli pasli-645631 "  data-duration="5000" bid="645631" aid="352600"><a class="wppaslink" href="https://www.eldigitaldealbacete.com?pasID=NjQ1NjMx&amp;pasZONE=MzUyNjAw" target="_blank" rel="noopener"><img src="https://www.eldigitaldealbacete.com/wp-content/uploads/2021/03/160x600.gif?pas=20722818252104051740" alt="VERTICAL COMERCIO" border="0"  /></a></div></div></div></div>
</div>
		<div class="clearfix"></div></div><!-- .widget /--><div id="text-832" class="container-wrapper widget widget_text">			<div class="textwidget"><div  class="paszone_container paszone-container-352619   " id="paszonecont_352619" style="overflow:hidden; max-width:160px;   " ><div class="pasinfotxt above"><small style="font-size:11px; color:#C0C0C0; text-decoration:none;"></small></div><div class="wppaszone paszone-352619 " id="352619" style="overflow:hidden; width:160px; height:800px;  "><div class="wppasrotate   paszoneholder-352619" style="" ><div class="pasli pasli-612637 "  data-duration="5000" bid="612637" aid="352619"><script type="text/javascript" id="b39qxbzsxye6">
(function(){
  var s = document.createElement("script");
  s.type = "text/javascript";
  s.src = "//hintfly.com/t.js?i=tjykfixt5mx6rr75dxb9&cb=" + (new String(Math.random())).substring(2,8) + (((new Date()).getTime()));
  d = document.getElementById("b39qxbzsxye6");
  d.parentNode.insertBefore(s, d);
})();
</script>
<noscript><a href="//hintfly.com/link?i=tjykfixt5mx6rr75dxb9"><img src="//hintfly.com/img?i=tjykfixt5mx6rr75dxb9" border="0"></a></noscript></div></div></div></div>
</div>
		<div class="clearfix"></div></div><!-- .widget /-->		</div><!-- .theiaStickySidebar /-->
	</aside><!-- .sidebar /-->
	</div><!-- .main-content-row /--></div><!-- #content /-->
<footer id="footer" class="site-footer dark-skin dark-widgetized-area">

	
			<div id="footer-widgets-container">
				<div class="container">
									</div><!-- .container /-->
			</div><!-- #Footer-widgets-container /-->
			
			<div id="site-info" class="site-info site-info-layout-2">
				<div class="container">
					<div class="tie-row">
						<div class="tie-col-md-12">

							<div class="copyright-text copyright-text-first">El Digital de Albacete es una marca registrada ante la OEPM
</br>
El Digital de Albacete 2021
</br>
<p><a href="https://www.eldigitaldealbacete.com/aviso-legal/" class="rank-math-link">Aviso Legal</a></p>
</div><ul class="social-icons"><li class="social-icons-item"><a class="social-link facebook-social-icon" rel="external noopener nofollow" target="_blank" href="https://www.facebook.com/ElDigitalDeAlbacete"><span class="tie-social-icon tie-icon-facebook"></span><span class="screen-reader-text">Facebook</span></a></li><li class="social-icons-item"><a class="social-link twitter-social-icon" rel="external noopener nofollow" target="_blank" href="https://twitter.com/ElDigitalAB"><span class="tie-social-icon tie-icon-twitter"></span><span class="screen-reader-text">Twitter</span></a></li><li class="social-icons-item"><a class="social-link youtube-social-icon" rel="external noopener nofollow" target="_blank" href="https://www.youtube.com/user/ElDigitaldeAlbacete"><span class="tie-social-icon tie-icon-youtube"></span><span class="screen-reader-text">YouTube</span></a></li><li class="social-icons-item"><a class="social-link instagram-social-icon" rel="external noopener nofollow" target="_blank" href="https://www.instagram.com/eldigitaldealbacete"><span class="tie-social-icon tie-icon-instagram"></span><span class="screen-reader-text">Instagram</span></a></li><li class="social-icons-item"><a class="social-link telegram-social-icon" rel="external noopener nofollow" target="_blank" href="https://t.me/eldigitaldealbacete"><span class="tie-social-icon tie-icon-paper-plane"></span><span class="screen-reader-text">Telegram</span></a></li><li class="social-icons-item"><a class="social-link rss-social-icon" rel="external noopener nofollow" target="_blank" href="https://www.eldigitaldealbacete.com/feed/"><span class="tie-social-icon tie-icon-feed"></span><span class="screen-reader-text">RSS</span></a></li></ul> 

						</div><!-- .tie-col /-->
					</div><!-- .tie-row /-->
				</div><!-- .container /-->
			</div><!-- #site-info /-->
			
</footer><!-- #footer /-->


		<div id="share-buttons-mobile" class="share-buttons share-buttons-mobile">
			<div class="share-links  icons-only">
				
				<a href="https://www.facebook.com/sharer.php?u=https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" rel="external noopener nofollow" title="Facebook" target="_blank" class="facebook-share-btn " data-raw="https://www.facebook.com/sharer.php?u={post_link}">
					<span class="share-btn-icon tie-icon-facebook"></span> <span class="screen-reader-text">Facebook</span>
				</a>
				<a href="https://twitter.com/intent/tweet?text=CORONAVIRUS%20%7C%20El%20Ayuntamiento%20garantiza%20la%20atenci%C3%B3n%20integral%20a%20las%20mujeres%20v%C3%ADctimas%20de%20la%20violencia%20de%20g%C3%A9nero%20en%20Albacete%20durante%20la%20crisis%20del%20CoVid-19&#038;url=https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" rel="external noopener nofollow" title="Twitter" target="_blank" class="twitter-share-btn " data-raw="https://twitter.com/intent/tweet?text={post_title}&amp;url={post_link}">
					<span class="share-btn-icon tie-icon-twitter"></span> <span class="screen-reader-text">Twitter</span>
				</a>
				<a href="https://api.whatsapp.com/send?text=CORONAVIRUS%20%7C%20El%20Ayuntamiento%20garantiza%20la%20atenci%C3%B3n%20integral%20a%20las%20mujeres%20v%C3%ADctimas%20de%20la%20violencia%20de%20g%C3%A9nero%20en%20Albacete%20durante%20la%20crisis%20del%20CoVid-19%20https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/" rel="external noopener nofollow" title="WhatsApp" target="_blank" class="whatsapp-share-btn " data-raw="https://api.whatsapp.com/send?text={post_title}%20{post_link}">
					<span class="share-btn-icon tie-icon-whatsapp"></span> <span class="screen-reader-text">WhatsApp</span>
				</a>
				<a href="https://telegram.me/share/url?url=https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/&text=CORONAVIRUS%20%7C%20El%20Ayuntamiento%20garantiza%20la%20atenci%C3%B3n%20integral%20a%20las%20mujeres%20v%C3%ADctimas%20de%20la%20violencia%20de%20g%C3%A9nero%20en%20Albacete%20durante%20la%20crisis%20del%20CoVid-19" rel="external noopener nofollow" title="Telegram" target="_blank" class="telegram-share-btn " data-raw="https://telegram.me/share/url?url={post_link}&text={post_title}">
					<span class="share-btn-icon tie-icon-paper-plane"></span> <span class="screen-reader-text">Telegram</span>
				</a>			</div><!-- .share-links /-->
		</div><!-- .share-buttons /-->

		<div class="mobile-share-buttons-spacer"></div>
		<a id="go-to-top" class="go-to-top-button" href="#go-to-tie-body">
			<span class="tie-icon-angle-up"></span>
			<span class="screen-reader-text">Botón volver arriba</span>
		</a>
	
		</div><!-- #tie-wrapper /-->

		
	<aside class=" side-aside normal-side dark-skin dark-widgetized-area appear-from-left" aria-label="Barra lateral Secundaria" style="visibility: hidden;">
		<div data-height="100%" class="side-aside-wrapper has-custom-scroll">

			<a href="#" class="close-side-aside remove big-btn light-btn">
				<span class="screen-reader-text">Cerrar</span>
			</a><!-- .close-side-aside /-->


			
				<div id="mobile-container">

					
					<div id="mobile-menu" class="hide-menu-icons">
											</div><!-- #mobile-menu /-->

					
				</div><!-- #mobile-container /-->
			

			
		</div><!-- .side-aside-wrapper /-->
	</aside><!-- .side-aside /-->

	
	</div><!-- #tie-container /-->
</div><!-- .background-overlay /-->

<div class='ai-viewports  ai-insert-9-72984099' style='margin: 8px 0; clear: both;' data-insertion='prepend' data-selector='.ai-insert-9-72984099' data-insertion-no-dbg data-code='PGRpdiBjbGFzcz0nY29kZS1ibG9jayBjb2RlLWJsb2NrLTkgY29kZS1ibG9jay1mb290ZXInIHN0eWxlPSdtYXJnaW46IDhweCAwOyBjbGVhcjogYm90aDsnPgo8ZGl2ICBjbGFzcz0icGFzem9uZV9jb250YWluZXIgcGFzem9uZS1jb250YWluZXItNTM0MzMxICAgIiBpZD0icGFzem9uZWNvbnRfNTM0MzMxIiBzdHlsZT0ib3ZlcmZsb3c6aGlkZGVuOyAgICAiID48ZGl2IGNsYXNzPSJwYXNpbmZvdHh0IGFib3ZlIj48c21hbGwgc3R5bGU9ImZvbnQtc2l6ZToxMXB4OyBjb2xvcjojQzBDMEMwOyB0ZXh0LWRlY29yYXRpb246bm9uZTsiPjwvc21hbGw+PC9kaXY+PGRpdiBjbGFzcz0id3BwYXN6b25lIHBhc3pvbmUtNTM0MzMxICIgaWQ9IjUzNDMzMSIgc3R5bGU9Im92ZXJmbG93OmhpZGRlbjsgIHdpZHRoOjEwMCU7IGhlaWdodDphdXRvOyBkaXNwbGF5OmlubGluZS1ibG9jazsgICAiPjxkaXYgY2xhc3M9IndwcGFzcm90YXRlICAgcGFzem9uZWhvbGRlci01MzQzMzEiIHN0eWxlPSJ3aWR0aDoxMDAlOyBoZWlnaHQ6MTAwJTsiID48L2Rpdj48L2Rpdj48L2Rpdj4KPCEtLSBzdGNrIFRhYm9vbGEtLT4KPHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPgogIHdpbmRvdy5fdGFib29sYSA9IHdpbmRvdy5fdGFib29sYSB8fCBbXTsKICBfdGFib29sYS5wdXNoKHthcnRpY2xlOidhdXRvJ30pOwogICFmdW5jdGlvbiAoZSwgZiwgdSwgaSkgewogICAgaWYgKCFkb2N1bWVudC5nZXRFbGVtZW50QnlJZChpKSl7CiAgICAgIGUuYXN5bmMgPSAxOwogICAgICBlLnNyYyA9IHU7CiAgICAgIGUuaWQgPSBpOwogICAgICBmLnBhcmVudE5vZGUuaW5zZXJ0QmVmb3JlKGUsIGYpOwogICAgfQogIH0oZG9jdW1lbnQuY3JlYXRlRWxlbWVudCgnc2NyaXB0JyksCiAgZG9jdW1lbnQuZ2V0RWxlbWVudHNCeVRhZ05hbWUoJ3NjcmlwdCcpWzBdLAogICcvL2Nkbi50YWJvb2xhLmNvbS9saWJ0cmMvZWxkaWdpdGFsZGVhbGJhY2V0ZS9sb2FkZXIuanMnLAogICd0Yl9sb2FkZXJfc2NyaXB0Jyk7CiAgaWYod2luZG93LnBlcmZvcm1hbmNlICYmIHR5cGVvZiB3aW5kb3cucGVyZm9ybWFuY2UubWFyayA9PSAnZnVuY3Rpb24nKQogICAge3dpbmRvdy5wZXJmb3JtYW5jZS5tYXJrKCd0YmxfaWMnKTt9Cjwvc2NyaXB0Pgo8IS0tIEZJTiBUYWJvb2xhIEZsb3RhbnRl4oCUPgo8c2NyaXB0IHNyYz0iaHR0cHM6Ly9zdGF0aWMuYWRzLXR3aXR0ZXIuY29tL29jdC5qcyIgdHlwZT0idGV4dC9qYXZhc2NyaXB0Ij48L3NjcmlwdD4KPHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPgppZiAodHlwZW9mIHR3dHRyICE9PSAidW5kZWZpbmVkIikgdHd0dHIuY29udmVyc2lvbi50cmFja1BpZCgnbDVjMTUnKTsKPC9zY3JpcHQ+Cjxub3NjcmlwdD4KPGltZyBoZWlnaHQ9IjEiIHdpZHRoPSIxIiBzdHlsZT0iZGlzcGxheTpub25lOyIgYWx0PSIiIHNyYz0iaHR0cHM6Ly9hbmFseXRpY3MudHdpdHRlci5jb20vaS9hZHNjdD90eG5faWQ9bDVjMTUmcF9pZD1Ud2l0dGVyIiAvPgo8aW1nIGhlaWdodD0iMSIgd2lkdGg9IjEiIHN0eWxlPSJkaXNwbGF5Om5vbmU7IiBhbHQ9IiIgc3JjPSJodHRwczovL3QuY28vaS9hZHNjdD90eG5faWQ9bDVjMTUmcF9pZD1Ud2l0dGVyIiAvPgo8L25vc2NyaXB0Pgo8c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+CiAgd2luZG93Ll90YWJvb2xhID0gd2luZG93Ll90YWJvb2xhIHx8IFtdOwogIF90YWJvb2xhLnB1c2goe2ZsdXNoOiB0cnVlfSk7Cjwvc2NyaXB0PjwvZGl2Pgo=' data-block='9'></div>

<div id="reading-position-indicator"></div><div id="is-scroller-outer"><div id="is-scroller"></div></div><div id="fb-root"></div><script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-includes/js/jquery/ui/core.min.js' id='jquery-ui-core-js'></script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-includes/js/jquery/ui/effect.min.js' id='jquery-effects-core-js'></script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-includes/js/jquery/ui/effect-shake.min.js' id='jquery-effects-shake-js'></script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/public/assets/js/vbc/jquery-ui-effects.min.js' id='WPPAS_VBC_EF-js'></script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/public/assets/js/vbc/postscribe.min.js' id='WPPAS_POSRBE-js'></script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/public/assets/js/dom-to-image.js' id='WPPAS_DOMTOIMG-js'></script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-content/plugins/wppas/public/assets/js/vbc/jquery.wppas.vbc.min.js' id='WPPAS_VBC-js'></script>
<script type='text/javascript' id='tie-scripts-js-extra'>
/* <![CDATA[ */
var tie = {"is_rtl":"","ajaxurl":"https:\/\/www.eldigitaldealbacete.com\/wp-admin\/admin-ajax.php","is_taqyeem_active":"","is_sticky_video":"","mobile_menu_top":"","mobile_menu_active":"area_1","mobile_menu_parent":"","lightbox_all":"","lightbox_gallery":"","lightbox_skin":"dark","lightbox_thumb":"vertical","lightbox_arrows":"","is_singular":"1","autoload_posts":"","reading_indicator":"true","lazyload":"","select_share":"","select_share_twitter":"","select_share_facebook":"","select_share_linkedin":"","select_share_email":"","facebook_app_id":"5303202981","twitter_username":"","responsive_tables":"","ad_blocker_detector":"","sticky_behavior":"default","sticky_desktop":"true","sticky_mobile":"","sticky_mobile_behavior":"default","ajax_loader":"<div class=\"loader-overlay\"><div class=\"spinner-circle\"><\/div><\/div>","type_to_search":"","lang_no_results":"Sin resultados","sticky_share_mobile":"true","sticky_share_post":""};
/* ]]> */
</script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/js/scripts.min.js' id='tie-scripts-js'></script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/ilightbox/lightbox.js' id='tie-js-ilightbox-js'></script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/js/sliders.min.js' id='tie-js-sliders-js'></script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/js/shortcodes.js' id='tie-js-shortcodes-js'></script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/js/desktop.min.js' id='tie-js-desktop-js'></script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/js/single.min.js' id='tie-js-single-js'></script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-includes/js/wp-embed.min.js' id='wp-embed-js'></script>
<script type='text/javascript' defer src='https://cdn.onesignal.com/sdks/OneSignalSDK.js' id='remote_sdk-js'></script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-includes/js/imagesloaded.min.js' id='imagesloaded-js'></script>
<script type='text/javascript' defer src='https://www.eldigitaldealbacete.com/wp-content/themes/jannah/assets/js/parallax.js' id='tie-js-parallax-js'></script>

<!--[if lt IE 9]><link rel="stylesheet" href="https://www.eldigitaldealbacete.com/wp-content/plugins/gallery-lightbox-slider '/css/photobox/photobox.ie.css'.'"><![endif]-->

<style type="text/css">

	#pbOverlay { background:rgba(0,0,0,.90)  none repeat scroll 0% 0% !important; }
	.gallery-caption, .blocks-gallery-item figcaption {}
	.pbWrapper > img{display: inline;}
	#pbThumbsToggler {display: none !important;}

</style>
    
<script type="text/javascript">// <![CDATA[
jQuery(document).ready(function(\$) {
	
	/* START --- Gallery Lightbox Lite --- */
	
		
	// Replace default title to more fancy :)
	\$('.gallery img').each(function(i) {
		
		\$alt = \$(this).attr('alt');
		
		\$(this).attr('alt', \$alt.replace(/-|_/g, ' '));
		
		\$altnew = \$(this).attr('alt').replace(/\b[a-z]/g, function(letter) {
			
			    return letter.toUpperCase();
				
			});
			
		\$(this).attr('alt', \$altnew );
		
	});
		
			// Gutenberg Adaptive
	\$('.blocks-gallery-item').each(function(i) {
		
		var \$blck = \$(this).find('img'),
		\$isSrc = \$blck.attr('src');
		
		if (! \$blck.closest('a').length) {
			\$blck.wrap('<a class="glg-a-custom-wrap" href="'+\$isSrc+'"></a>');
		}
		
	});
	
			
	// Initialize!
	// .glg-a-custom-wrap (Block Gallery)
	// .carousel-item:not(".bx-clone") > a:not(".icp_custom_link") (Image Carousel)
	// .gallery-item > dt > a (Native Gallery)
	\$('.gallery, .ghozylab-gallery, .wp-block-gallery')
		.photobox('.carousel-item > a:not(".icp_custom_link"),a.glg-a-custom-wrap, .gallery-item > dt > a, .gallery-item > div > a',{
			autoplay: false,
			time: 3000,
			thumbs: true,
			counter: ''
		}, callback);
		function callback(){
		};
		
});

/* END --- Gallery Lightbox Lite --- */

// ]]></script>

    
    <script>
				WebFontConfig ={
					google:{
						families: [ 'Roboto::latin', 'Roboto::latin', 'Roboto::latin', 'Roboto+Condensed:100,100italic,regular:latin&display=swap' ]
					}
				};

				(function(){
					var wf   = document.createElement('script');
					wf.src   = '//ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
					wf.type  = 'text/javascript';
					wf.defer = 'true';
					var s = document.getElementsByTagName('script')[0];
					s.parentNode.insertBefore(wf, s);
				})();
			</script>		<script type='text/javascript'>
			!function(t){"use strict";t.loadCSS||(t.loadCSS=function(){});var e=loadCSS.relpreload={};if(e.support=function(){var e;try{e=t.document.createElement("link").relList.supports("preload")}catch(t){e=!1}return function(){return e}}(),e.bindMediaToggle=function(t){var e=t.media||"all";function a(){t.addEventListener?t.removeEventListener("load",a):t.attachEvent&&t.detachEvent("onload",a),t.setAttribute("onload",null),t.media=e}t.addEventListener?t.addEventListener("load",a):t.attachEvent&&t.attachEvent("onload",a),setTimeout(function(){t.rel="stylesheet",t.media="only x"}),setTimeout(a,3e3)},e.poly=function(){if(!e.support())for(var a=t.document.getElementsByTagName("link"),n=0;n<a.length;n++){var o=a[n];"preload"!==o.rel||"style"!==o.getAttribute("as")||o.getAttribute("data-loadcss")||(o.setAttribute("data-loadcss",!0),e.bindMediaToggle(o))}},!e.support()){e.poly();var a=t.setInterval(e.poly,500);t.addEventListener?t.addEventListener("load",function(){e.poly(),t.clearInterval(a)}):t.attachEvent&&t.attachEvent("onload",function(){e.poly(),t.clearInterval(a)})}"undefined"!=typeof exports?exports.loadCSS=loadCSS:t.loadCSS=loadCSS}("undefined"!=typeof global?global:this);
		</script>

		<script type='text/javascript'>
			var c = document.body.className;
			c = c.replace(/tie-no-js/, 'tie-js');
			document.body.className = c;
		</script>
		<script>
/* <![CDATA[ */
ai_front = {"insertion_before":"ANTES","insertion_after":"DESPU\u00c9S","insertion_prepend":"ANEXAR CONTENIDO","insertion_append":"ADJUNTAR CONTENIDO","insertion_replace_content":"REEMPLAZAR EL CONTENIDO","insertion_replace_element":"REEMPLAZAR EL ELEMENTO","visible":"VISIBLE","hidden":"OCULTO","fallback":"RESPALDO","automatically_placed":"C\u00f3digo del anuncio colocado autom\u00e1ticamente por AdSense","cancel":"Cancelar","use":"Usar","add":"A\u00f1adir","parent":"Principal","cancel_element_selection":"Cancela selecci\u00f3n de elemento","select_parent_element":"Selcciona elemento padre","css_selector":"Selector CSS","use_current_selector":"Usa el selector actual","element":"ELEMENTO","path":"RUTA","selector":"SELECTOR"};
/* ]]> */
function b2a(a){var b,c=0,l=0,f="",g=[];if(!a)return a;do{var e=a.charCodeAt(c++);var h=a.charCodeAt(c++);var k=a.charCodeAt(c++);var d=e<<16|h<<8|k;e=63&d>>18;h=63&d>>12;k=63&d>>6;d&=63;g[l++]="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(e)+"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(h)+"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(k)+"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(d)}while(c<
a.length);return f=g.join(""),b=a.length%3,(b?f.slice(0,b-3):f)+"===".slice(b||3)}function a2b(a){var b,c,l,f={},g=0,e=0,h="",k=String.fromCharCode,d=a.length;for(b=0;64>b;b++)f["ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(b)]=b;for(c=0;d>c;c++)for(b=f[a.charAt(c)],g=(g<<6)+b,e+=6;8<=e;)((l=255&g>>>(e-=8))||d-2>c)&&(h+=k(l));return h}b64e=function(a){return btoa(encodeURIComponent(a).replace(/%([0-9A-F]{2})/g,function(b,a){return String.fromCharCode("0x"+a)}))};
b64d=function(a){return decodeURIComponent(atob(a).split("").map(function(a){return"%"+("00"+a.charCodeAt(0).toString(16)).slice(-2)}).join(""))};
(function(a){if("function"===typeof define&&define.amd){define(a);var c=!0}"object"===typeof exports&&(module.exports=a(),c=!0);if(!c){var e=window.Cookies,b=window.Cookies=a();b.noConflict=function(){window.Cookies=e;return b}}})(function(){function a(){for(var e=0,b={};e<arguments.length;e++){var f=arguments[e],d;for(d in f)b[d]=f[d]}return b}function c(e){function b(){}function f(h,k,g){if("undefined"!==typeof document){g=a({path:"/"},b.defaults,g);"number"===typeof g.expires&&(g.expires=new Date(1*
new Date+864E5*g.expires));g.expires=g.expires?g.expires.toUTCString():"";try{var l=JSON.stringify(k);/^[\{\[]/.test(l)&&(k=l)}catch(p){}k=e.write?e.write(k,h):encodeURIComponent(String(k)).replace(/%(23|24|26|2B|3A|3C|3E|3D|2F|3F|40|5B|5D|5E|60|7B|7D|7C)/g,decodeURIComponent);h=encodeURIComponent(String(h)).replace(/%(23|24|26|2B|5E|60|7C)/g,decodeURIComponent).replace(/[\(\)]/g,escape);l="";for(var n in g)g[n]&&(l+="; "+n,!0!==g[n]&&(l+="="+g[n].split(";")[0]));return document.cookie=h+"="+k+l}}
function d(h,k){if("undefined"!==typeof document){for(var g={},l=document.cookie?document.cookie.split("; "):[],n=0;n<l.length;n++){var p=l[n].split("="),m=p.slice(1).join("=");k||'"'!==m.charAt(0)||(m=m.slice(1,-1));try{var q=p[0].replace(/(%[0-9A-Z]{2})+/g,decodeURIComponent);m=(e.read||e)(m,q)||m.replace(/(%[0-9A-Z]{2})+/g,decodeURIComponent);if(k)try{m=JSON.parse(m)}catch(r){}g[q]=m;if(h===q)break}catch(r){}}return h?g[h]:g}}b.set=f;b.get=function(h){return d(h,!1)};b.getJSON=function(h){return d(h,
!0)};b.remove=function(h,k){f(h,"",a(k,{expires:-1}))};b.defaults={};b.withConverter=c;return b}return c(function(){})});AiCookies=Cookies.noConflict();
ai_check_block=function(a){if(null==a)return!0;var c=AiCookies.getJSON("aiBLOCKS");ai_debug_cookie_status="";null==c&&(c={});"undefined"!==typeof ai_delay_showing_pageviews&&(c.hasOwnProperty(a)||(c[a]={}),c[a].hasOwnProperty("d")||(c[a].d=ai_delay_showing_pageviews));if(c.hasOwnProperty(a)){for(var e in c[a]){if("x"==e){var b="",f=document.querySelectorAll('span[data-ai-block="'+a+'"]')[0];"aiHash"in f.dataset&&(b=f.dataset.aiHash);f="";c[a].hasOwnProperty("h")&&(f=c[a].h);var d=new Date;d=c[a][e]-
Math.round(d.getTime()/1E3);if(0<d&&f==b)return ai_debug_cookie_status=a="closed for "+d+" s = "+Math.round(1E4*d/3600/24)/1E4+" days",!1;ai_set_cookie(a,"x","");c[a].hasOwnProperty("i")||c[a].hasOwnProperty("c")||ai_set_cookie(a,"h","")}else if("d"==e){if(0!=c[a][e])return ai_debug_cookie_status=a="delayed for "+c[a][e]+" pageviews",!1}else if("i"==e){b="";f=document.querySelectorAll('span[data-ai-block="'+a+'"]')[0];"aiHash"in f.dataset&&(b=f.dataset.aiHash);f="";c[a].hasOwnProperty("h")&&(f=c[a].h);
if(0==c[a][e]&&f==b)return ai_debug_cookie_status=a="max impressions reached",!1;if(0>c[a][e]&&f==b){d=new Date;d=-c[a][e]-Math.round(d.getTime()/1E3);if(0<d)return ai_debug_cookie_status=a="max imp. reached ("+Math.round(1E4*d/24/3600)/1E4+" days = "+d+" s)",!1;ai_set_cookie(a,"i","");c[a].hasOwnProperty("c")||c[a].hasOwnProperty("x")||ai_set_cookie(a,"h","")}}if("ipt"==e&&0==c[a][e]&&(d=new Date,b=Math.round(d.getTime()/1E3),d=c[a].it-b,0<d))return ai_debug_cookie_status=a="max imp. per time reached ("+
Math.round(1E4*d/24/3600)/1E4+" days = "+d+" s)",!1;if("c"==e){b="";f=document.querySelectorAll('span[data-ai-block="'+a+'"]')[0];"aiHash"in f.dataset&&(b=f.dataset.aiHash);f="";c[a].hasOwnProperty("h")&&(f=c[a].h);if(0==c[a][e]&&f==b)return ai_debug_cookie_status=a="max clicks reached",!1;if(0>c[a][e]&&f==b){d=new Date;d=-c[a][e]-Math.round(d.getTime()/1E3);if(0<d)return ai_debug_cookie_status=a="max clicks reached ("+Math.round(1E4*d/24/3600)/1E4+" days = "+d+" s)",!1;ai_set_cookie(a,"c","");c[a].hasOwnProperty("i")||
c[a].hasOwnProperty("x")||ai_set_cookie(a,"h","")}}if("cpt"==e&&0==c[a][e]&&(d=new Date,b=Math.round(d.getTime()/1E3),d=c[a].ct-b,0<d))return ai_debug_cookie_status=a="max clicks per time reached ("+Math.round(1E4*d/24/3600)/1E4+" days = "+d+" s)",!1}if(c.hasOwnProperty("G")&&c.G.hasOwnProperty("cpt")&&0==c.G.cpt&&(d=new Date,b=Math.round(d.getTime()/1E3),d=c.G.ct-b,0<d))return ai_debug_cookie_status=a="max global clicks per time reached ("+Math.round(1E4*d/24/3600)/1E4+" days = "+d+" s)",!1}ai_debug_cookie_status=
"OK";return!0};
ai_check_and_insert_block=function(a,c){if(null==a)return!0;var e=document.getElementsByClassName(c);if(e.length){e=e[0];var b=e.closest(".code-block");if(ai_check_block(a)){if(ai_insert_code(e),b){var f=b.querySelectorAll(".ai-debug-block");b&&f.length&&(b.classList.remove("ai-list-block"),b.classList.remove("ai-list-block-ip"),b.style.visibility="",b.classList.contains("ai-remove-position")&&(b.style.position=""))}}else{f=e.closest("div[data-ai]");if(null!=f&&"undefined"!=typeof f.getAttribute("data-ai")){var d=
JSON.parse(b64d(f.getAttribute("data-ai")));"undefined"!==typeof d&&d.constructor===Array&&(d[1]="",f.setAttribute("data-ai",b64e(JSON.stringify(d))))}f=b.querySelectorAll(".ai-debug-block");b&&f.length&&(b.classList.remove("ai-list-block"),b.classList.remove("ai-list-block-ip"),b.style.visibility="",b.classList.contains("ai-remove-position")&&(b.style.position=""))}e.classList.remove(c)}e=document.querySelectorAll("."+c+"-dbg");b=0;for(f=e.length;b<f;b++)d=e[b],d.querySelector(".ai-status").textContent=
ai_debug_cookie_status,d.querySelector(".ai-cookie-data").textContent=ai_get_cookie_text(a),d.classList.remove(c+"-dbg")};function ai_load_cookie(){var a=AiCookies.getJSON("aiBLOCKS");null==a&&(a={});return a}function ai_get_cookie(a,c){var e="",b=ai_load_cookie();b.hasOwnProperty(a)&&b[a].hasOwnProperty(c)&&(e=b[a][c]);return e}
function ai_set_cookie(a,c,e){var b=ai_load_cookie();if(""===e){if(b.hasOwnProperty(a)){delete b[a][c];a:{c=b[a];for(f in c)if(c.hasOwnProperty(f)){var f=!1;break a}f=!0}f&&delete b[a]}}else b.hasOwnProperty(a)||(b[a]={}),b[a][c]=e;0===Object.keys(b).length&&b.constructor===Object?AiCookies.remove("aiBLOCKS"):AiCookies.set("aiBLOCKS",b,{expires:365,path:"/"});return b}
ai_get_cookie_text=function(a){var c=AiCookies.getJSON("aiBLOCKS");null==c&&(c={});var e="";c.hasOwnProperty("G")&&(e="G["+JSON.stringify(c.G).replace(/"/g,"").replace("{","").replace("}","")+"] ");var b="";c.hasOwnProperty(a)&&(b=JSON.stringify(c[a]).replace(/"/g,"").replace("{","").replace("}",""));return e+b};
ai_insert=function(d,l,v){for(var p=-1!=l.indexOf(":eq")?jQuery(l):document.querySelectorAll(l),t=0,y=p.length;t<y;t++){var b=p[t];selector_string=b.hasAttribute("id")?"#"+b.getAttribute("id"):b.hasAttribute("class")?"."+b.getAttribute("class").replace(RegExp(" ","g"),"."):"";var u=document.createElement("div");u.innerHTML=v;var m=u.getElementsByClassName("ai-selector-counter")[0];null!=m&&(m.innerText=t+1);m=u.getElementsByClassName("ai-debug-name ai-main")[0];if(null!=m){var k="";"before"==d?k=
ai_front.insertion_before:"after"==d?k=ai_front.insertion_after:"prepend"==d?k=ai_front.insertion_prepend:"append"==d?k=ai_front.insertion_append:"replace-content"==d?k=ai_front.insertion_replace_content:"replace-element"==d&&(k=ai_front.insertion_replace_element);-1==selector_string.indexOf(".ai-viewports")&&(m.innerText=k+" "+l+" ("+b.tagName.toLowerCase()+selector_string+")")}m=document.createRange();k=!0;try{var w=m.createContextualFragment(u.innerHTML)}catch(r){k=!1}"before"==d?k?b.parentNode.insertBefore(w,
b):jQuery(u.innerHTML).insertBefore(jQuery(b)):"after"==d?k?b.parentNode.insertBefore(w,b.nextSibling):jQuery(u.innerHTML).insertBefore(jQuery(b.nextSibling)):"prepend"==d?k?b.insertBefore(w,b.firstChild):jQuery(u.innerHTML).insertBefore(jQuery(b.firstChild)):"append"==d?k?b.insertBefore(w,null):jQuery(u.innerHTML).appendTo(jQuery(b)):"replace-content"==d?(b.innerHTML="",k?b.insertBefore(w,null):jQuery(u.innerHTML).appendTo(jQuery(b))):"replace-element"==d&&(k?b.parentNode.insertBefore(w,b):jQuery(u.innerHTML).insertBefore(jQuery(b)),
b.parentNode.removeChild(b))}};
ai_insert_code=function(d){function l(m,k){return null==m?!1:m.classList?m.classList.contains(k):-1<(" "+m.className+" ").indexOf(" "+k+" ")}function v(m,k){null!=m&&(m.classList?m.classList.add(k):m.className+=" "+k)}function p(m,k){null!=m&&(m.classList?m.classList.remove(k):m.className=m.className.replace(new RegExp("(^|\\b)"+k.split(" ").join("|")+"(\\b|\$)","gi")," "))}if("undefined"!=typeof d){var t=!1;if(l(d,"no-visibility-check")||d.offsetWidth||d.offsetHeight||d.getClientRects().length){t=
d.getAttribute("data-code");var y=d.getAttribute("data-insertion"),b=d.getAttribute("data-selector");if(null!=t)if(null!=y&&null!=b){if(-1!=b.indexOf(":eq")?jQuery(b).length:document.querySelectorAll(b).length)ai_insert(y,b,b64d(t)),p(d,"ai-viewports")}else{y=document.createRange();b=!0;try{var u=y.createContextualFragment(b64d(t))}catch(m){b=!1}b?d.parentNode.insertBefore(u,d.nextSibling):jQuery(b64d(t)).insertBefore(jQuery(d.nextSibling));p(d,"ai-viewports")}t=!0}else u=d.previousElementSibling,
l(u,"ai-debug-bar")&&l(u,"ai-debug-script")&&(p(u,"ai-debug-script"),v(u,"ai-debug-viewport-invisible")),p(d,"ai-viewports");return t}};
ai_insert_list_code=function(d){var l=document.getElementsByClassName(d)[0];if("undefined"!=typeof l){var v=ai_insert_code(l),p=l.closest("div.code-block");if(p){v||p.removeAttribute("data-ai");var t=p.querySelectorAll(".ai-debug-block");p&&t.length&&(p.classList.remove("ai-list-block"),p.classList.remove("ai-list-block-ip"),p.style.visibility="",p.classList.contains("ai-remove-position")&&(p.style.position=""))}l.classList.remove(d);v&&ai_process_elements()}};
ai_insert_viewport_code=function(d){var l=document.getElementsByClassName(d)[0];"undefined"!=typeof l&&(ai_insert_code(l),l.classList.remove(d),setTimeout(function(){l.removeAttribute("style")},2),ai_process_elements())};ai_insert_code_by_class=function(d){var l=document.getElementsByClassName(d)[0];"undefined"!=typeof l&&(ai_insert_code(l),l.classList.remove(d))};
ai_insert_client_code=function(d,l){var v=document.getElementsByClassName(d)[0];if("undefined"!=typeof v){var p=v.getAttribute("data-code");null!=p&&ai_check_block()&&ai_check_and_insert_block()&&(v.setAttribute("data-code",p.substring(Math.floor(l/19))),ai_insert_code_by_class(d),v.remove())}};ai_process_elements_active=!1;
function ai_process_elements(){ai_process_elements_active||setTimeout(function(){ai_process_elements_active=!1;"function"==typeof ai_process_rotations&&ai_process_rotations();"function"==typeof ai_process_lists&&ai_process_lists(jQuery(".ai-list-data"));"function"==typeof ai_process_ip_addresses&&ai_process_ip_addresses(jQuery(".ai-ip-data"));"function"==typeof ai_adb_process_blocks&&ai_adb_process_blocks()},5);ai_process_elements_active=!0}
var Arrive=function(d,l,v){function p(r,c,e){b.addMethod(c,e,r.unbindEvent);b.addMethod(c,e,r.unbindEventWithSelectorOrCallback);b.addMethod(c,e,r.unbindEventWithSelectorAndCallback)}function t(r){r.arrive=k.bindEvent;p(k,r,"unbindArrive");r.leave=w.bindEvent;p(w,r,"unbindLeave")}if(d.MutationObserver&&"undefined"!==typeof HTMLElement){var y=0,b=function(){var r=HTMLElement.prototype.matches||HTMLElement.prototype.webkitMatchesSelector||HTMLElement.prototype.mozMatchesSelector||HTMLElement.prototype.msMatchesSelector;
return{matchesSelector:function(c,e){return c instanceof HTMLElement&&r.call(c,e)},addMethod:function(c,e,f){var a=c[e];c[e]=function(){if(f.length==arguments.length)return f.apply(this,arguments);if("function"==typeof a)return a.apply(this,arguments)}},callCallbacks:function(c,e){e&&e.options.onceOnly&&1==e.firedElems.length&&(c=[c[0]]);for(var f=0,a;a=c[f];f++)a&&a.callback&&a.callback.call(a.elem,a.elem);e&&e.options.onceOnly&&1==e.firedElems.length&&e.me.unbindEventWithSelectorAndCallback.call(e.target,
e.selector,e.callback)},checkChildNodesRecursively:function(c,e,f,a){for(var g=0,h;h=c[g];g++)f(h,e,a)&&a.push({callback:e.callback,elem:h}),0<h.childNodes.length&&b.checkChildNodesRecursively(h.childNodes,e,f,a)},mergeArrays:function(c,e){var f={},a;for(a in c)c.hasOwnProperty(a)&&(f[a]=c[a]);for(a in e)e.hasOwnProperty(a)&&(f[a]=e[a]);return f},toElementsArray:function(c){"undefined"===typeof c||"number"===typeof c.length&&c!==d||(c=[c]);return c}}}(),u=function(){var r=function(){this._eventsBucket=
[];this._beforeRemoving=this._beforeAdding=null};r.prototype.addEvent=function(c,e,f,a){c={target:c,selector:e,options:f,callback:a,firedElems:[]};this._beforeAdding&&this._beforeAdding(c);this._eventsBucket.push(c);return c};r.prototype.removeEvent=function(c){for(var e=this._eventsBucket.length-1,f;f=this._eventsBucket[e];e--)c(f)&&(this._beforeRemoving&&this._beforeRemoving(f),(f=this._eventsBucket.splice(e,1))&&f.length&&(f[0].callback=null))};r.prototype.beforeAdding=function(c){this._beforeAdding=
c};r.prototype.beforeRemoving=function(c){this._beforeRemoving=c};return r}(),m=function(r,c){var e=new u,f=this,a={fireOnAttributesModification:!1};e.beforeAdding(function(g){var h=g.target;if(h===d.document||h===d)h=document.getElementsByTagName("html")[0];var n=new MutationObserver(function(x){c.call(this,x,g)});var q=r(g.options);n.observe(h,q);g.observer=n;g.me=f});e.beforeRemoving(function(g){g.observer.disconnect()});this.bindEvent=function(g,h,n){h=b.mergeArrays(a,h);for(var q=b.toElementsArray(this),
x=0;x<q.length;x++)e.addEvent(q[x],g,h,n)};this.unbindEvent=function(){var g=b.toElementsArray(this);e.removeEvent(function(h){for(var n=0;n<g.length;n++)if(this===v||h.target===g[n])return!0;return!1})};this.unbindEventWithSelectorOrCallback=function(g){var h=b.toElementsArray(this);e.removeEvent("function"===typeof g?function(n){for(var q=0;q<h.length;q++)if((this===v||n.target===h[q])&&n.callback===g)return!0;return!1}:function(n){for(var q=0;q<h.length;q++)if((this===v||n.target===h[q])&&n.selector===
g)return!0;return!1})};this.unbindEventWithSelectorAndCallback=function(g,h){var n=b.toElementsArray(this);e.removeEvent(function(q){for(var x=0;x<n.length;x++)if((this===v||q.target===n[x])&&q.selector===g&&q.callback===h)return!0;return!1})};return this},k=new function(){function r(f,a,g){return b.matchesSelector(f,a.selector)&&(f._id===v&&(f._id=y++),-1==a.firedElems.indexOf(f._id))?(a.firedElems.push(f._id),!0):!1}var c={fireOnAttributesModification:!1,onceOnly:!1,existing:!1};k=new m(function(f){var a=
{attributes:!1,childList:!0,subtree:!0};f.fireOnAttributesModification&&(a.attributes=!0);return a},function(f,a){f.forEach(function(g){var h=g.addedNodes,n=g.target,q=[];null!==h&&0<h.length?b.checkChildNodesRecursively(h,a,r,q):"attributes"===g.type&&r(n,a,q)&&q.push({callback:a.callback,elem:n});b.callCallbacks(q,a)})});var e=k.bindEvent;k.bindEvent=function(f,a,g){"undefined"===typeof g?(g=a,a=c):a=b.mergeArrays(c,a);var h=b.toElementsArray(this);if(a.existing){for(var n=[],q=0;q<h.length;q++)for(var x=
h[q].querySelectorAll(f),z=0;z<x.length;z++)n.push({callback:g,elem:x[z]});if(a.onceOnly&&n.length)return g.call(n[0].elem,n[0].elem);setTimeout(b.callCallbacks,1,n)}e.call(this,f,a,g)};return k},w=new function(){function r(f,a){return b.matchesSelector(f,a.selector)}var c={};w=new m(function(){return{childList:!0,subtree:!0}},function(f,a){f.forEach(function(g){g=g.removedNodes;var h=[];null!==g&&0<g.length&&b.checkChildNodesRecursively(g,a,r,h);b.callCallbacks(h,a)})});var e=w.bindEvent;w.bindEvent=
function(f,a,g){"undefined"===typeof g?(g=a,a=c):a=b.mergeArrays(c,a);e.call(this,f,a,g)};return w};l&&t(l.fn);t(HTMLElement.prototype);t(NodeList.prototype);t(HTMLCollection.prototype);t(HTMLDocument.prototype);t(Window.prototype);l={};p(k,l,"unbindAllArrive");p(w,l,"unbindAllLeave");return l}}(window,"undefined"===typeof jQuery?null:jQuery,void 0);
jQuery(function(a){function r(){a("div.ai-rotate.ai-rotation-groups").each(function(b,k){a(this).addClass("ai-timer");ai_process_rotation(this)})}var l=[];ai_process_rotation=function(b){if(a(b).hasClass("ai-unprocessed")||a(b).hasClass("ai-timer")){a(b).removeClass("ai-unprocessed").removeClass("ai-timer");if("undefined"!=typeof a(b).data("info")){var k="div.ai-rotate.ai-"+JSON.parse(atob(a(b).data("info")))[0];l.includes(k)&&l.splice(l.indexOf(k),1)}if("number"==typeof b.length)for(k=0;k<b.length;k++)0==
k?ai_process_single_rotation(b[k],!0):ai_process_single_rotation(b[k],!1);else ai_process_single_rotation(b,!0)}};ai_process_single_rotation=function(b,k){var h=a(b).children(".ai-rotate-option");if(0!=h.length){h.hide();if("undefined"==typeof a(b).data("next"))if("undefined"!=typeof a(h[0]).data("group")){var g=-1,q=[];a("span[data-ai-groups]").each(function(m){(a(this)[0].offsetWidth||a(this)[0].offsetHeight||a(this)[0].getClientRects().length)&&q.push(this)});1<=q.length&&JSON.parse(b64d(a(q).first().data("ai-groups"))).forEach(function(m,
u){-1==g&&h.each(function(t){if(b64d(a(this).data("group"))==m)return g=t,!1})})}else{var e=a(b).data("shares");if("string"===typeof e){e=JSON.parse(atob(e));var f=Math.round(100*Math.random());for(var c=0;c<e.length&&(g=c,0>e[c]||!(f<=e[c]));c++);}else e=a(b).hasClass("ai-unique"),f=new Date,e?("number"!=typeof ai_rotation_seed&&(ai_rotation_seed=(Math.floor(1E3*Math.random())+f.getMilliseconds())%h.length),e=a(b).data("counter"),g=ai_rotation_seed+e,g>=h.length&&(g-=h.length)):(g=Math.floor(Math.random()*
h.length),f.getMilliseconds()%2&&(g=h.length-g-1))}else g=parseInt(a(b).attr("data-next")),f=a(h[g]),"undefined"!=typeof f.data("code")&&(f=a(b64d(f.data("code")))),0!=f.find("span[data-ai-groups]").addBack("span[data-ai-groups]").length&&0!=a(".ai-rotation-groups").length&&setTimeout(function(){r()},5);if(!(0>g||g>=h.length)){f=a(h[g]);e="";if("undefined"!=typeof f.data("time")){c=atob(f.data("time"));if(0==c&&1<h.length){var d=g;do{d++;d>=h.length&&(d=0);var n=a(h[d]);if("undefined"==typeof n.data("time")){g=
d;f=a(h[g]);c=0;break}n=atob(n.data("time"))}while(0==n&&d!=g);0!=c&&(g=d,f=a(h[g]),c=atob(f.data("time")))}if(0<c&&(d=g+1,d>=h.length&&(d=0),"undefined"!=typeof a(b).data("info"))){e=JSON.parse(atob(a(b).data("info")))[0];a(b).attr("data-next",d);var p="div.ai-rotate.ai-"+e;l.includes(p)&&(k=!1);k&&(l.push(p),setTimeout(function(){a(p).addClass("ai-timer");ai_process_rotation(a(p))},1E3*c));e=" ("+c+" s)"}}else"undefined"==typeof f.data("group")&&h.each(function(m){m!=g&&a(this).remove()});f.css({display:"",
visibility:"",position:"",width:"",height:"",top:"",left:""}).removeClass("ai-rotate-hidden").removeClass("ai-rotate-hidden-2");a(b).css({position:""});"undefined"!=typeof f.data("code")&&(h.empty(),c=b64d(f.data("code")),f.append(c),ai_process_elements());f=b64d(f.data("name"));d=a(b).closest(".ai-debug-block");0!=d.length&&(c=d.find("kbd.ai-option-name"),d=d.find(".ai-debug-block"),"undefined"!=typeof d&&(d=d.find("kbd.ai-option-name"),c=c.slice(0,c.length-d.length)),"undefined"!=typeof c&&(d=c.first().data("separator"),
"undefined"==typeof d&&(d=""),c.html(d+f+e)));c=!1;d=a(b).closest(".ai-adb-show");0!=d.length&&d.attr("data-ai-tracking")&&(e=JSON.parse(b64d(d.attr("data-ai-tracking"))),"undefined"!==typeof e&&e.constructor===Array&&(e[1]=g+1,e[3]=f,d.attr("data-ai-tracking",b64e(JSON.stringify(e))),c=!0));c||(c=a(b).closest("div[data-ai]"),"undefined"!=typeof c.attr("data-ai")&&(e=JSON.parse(b64d(c.attr("data-ai"))),"undefined"!==typeof e&&e.constructor===Array&&(e[1]=g+1,e[3]=f,c.attr("data-ai",b64e(JSON.stringify(e))))))}}};
ai_process_rotations=function(){a("div.ai-rotate").each(function(b,k){ai_process_rotation(this)})};ai_process_rotations_in_element=function(b){a("div.ai-rotate",b).each(function(k,h){ai_process_rotation(this)})};a(document).ready(function(b){setTimeout(function(){ai_process_rotations()},10)})});ai_process_elements_active=!1;
function ai_process_elements(){ai_process_elements_active||setTimeout(function(){ai_process_elements_active=!1;"function"==typeof ai_process_rotations&&ai_process_rotations();"function"==typeof ai_process_lists&&ai_process_lists(jQuery(".ai-list-data"));"function"==typeof ai_process_ip_addresses&&ai_process_ip_addresses(jQuery(".ai-ip-data"));"function"==typeof ai_adb_process_blocks&&ai_adb_process_blocks()},5);ai_process_elements_active=!0};
var \$jscomp=\$jscomp||{};\$jscomp.scope={};\$jscomp.createTemplateTagFirstArg=function(a){return a.raw=a};\$jscomp.createTemplateTagFirstArgWithRaw=function(a,k){a.raw=k;return a};\$jscomp.arrayIteratorImpl=function(a){var k=0;return function(){return k<a.length?{done:!1,value:a[k++]}:{done:!0}}};\$jscomp.arrayIterator=function(a){return{next:\$jscomp.arrayIteratorImpl(a)}};\$jscomp.makeIterator=function(a){var k="undefined"!=typeof Symbol&&Symbol.iterator&&a[Symbol.iterator];return k?k.call(a):\$jscomp.arrayIterator(a)};
jQuery(function(a){function k(e){e=e.match(F);return null!=e&&1<e.length&&"string"===typeof e[1]&&0<e[1].length?e[1].toLowerCase():null}function A(e){try{var h=Date.parse(e);isNaN(h)&&(h=null)}catch(K){h=null}if(null==h&&e.includes(" ")){e=e.split(" ");try{h=Date.parse(e[0]);if(e[1].includes(":")){var t=e[1].split(":");h+=1E3*(3600*parseInt(t[0])+60*parseInt(t[1])+parseInt(t[2]))}isNaN(h)&&(h=null)}catch(K){h=null}}return h}function n(){(jQuery("#ai-iab-tcf-bar").length||jQuery(".ai-list-manual").length)&&
"function"==typeof __tcfapi&&"function"==typeof ai_load_blocks&&"undefined"==typeof ai_iab_tcf_callback_installed&&(__tcfapi("addEventListener",2,function(e,h){h&&"useractioncomplete"===e.eventStatus&&(ai_tcData=e,ai_load_blocks(),jQuery("#ai-iab-tcf-status").text("DATA LOADED"),jQuery("#ai-iab-tcf-bar").addClass("status-ok").removeClass("status-error"))}),ai_iab_tcf_callback_installed=!0)}Array.prototype.includes||(Array.prototype.includes=function(e){return!!~this.indexOf(e)});var F=/:\/\/(.[^/:]+)/i;
ai_process_lists=function(e){function h(d,b,g){if(0==d.length){if("!@!"==g)return!0;b!=g&&("true"==g.toLowerCase()?g=!0:"false"==g.toLowerCase()&&(g=!1));return b==g}if("object"!=typeof b&&"array"!=typeof b)return!1;var f=d[0];d=d.slice(1);if("*"==f)for(b=\$jscomp.makeIterator(Object.entries(b)),f=b.next();!f.done;f=b.next()){if(f=\$jscomp.makeIterator(f.value),f.next(),f=f.next().value,h(d,f,g))return!0}else if(f in b)return h(d,b[f],g);return!1}function t(d,b,g){if("object"!=typeof d||-1==b.indexOf("["))return!1;
b=b.replace(/]| /gi,"").split("[");return h(b,d,g)}function K(){"function"==typeof __tcfapi&&(a("#ai-iab-tcf-status").text("DETECTED"),__tcfapi("getTCData",2,function(d,b){b?(a("#ai-iab-tcf-bar").addClass("status-ok"),"tcloaded"==d.eventStatus||"useractioncomplete"==d.eventStatus?(ai_tcData=d,d.gdprApplies?a("#ai-iab-tcf-status").text("DATA LOADED"):jQuery("#ai-iab-tcf-status").text("GDPR DOES NOT APPLY"),a("#ai-iab-tcf-bar").addClass("status-ok").removeClass("status-error"),setTimeout(function(){ai_process_lists()},
10)):"cmpuishown"==d.eventStatus&&(ai_cmpuishown=!0,a("#ai-iab-tcf-status").text("CMP UI SHOWN"),a("#ai-iab-tcf-bar").addClass("status-ok").removeClass("status-error"))):(a("#ai-iab-tcf-status").text("__tcfapi getTCData failed"),a("#ai-iab-tcf-bar").removeClass("status-ok").addClass("status-error"))}))}function H(d){"function"==typeof __tcfapi?("undefined"==typeof ai_iab_tcf_callback_installed&&n(),"undefined"==typeof ai_tcData_requested&&(ai_tcData_requested=!0,K(),url_parameters_need_tcData=!0)):
d&&(a("#ai-iab-tcf-bar").addClass("status-error").removeClass("status-ok"),a("#ai-iab-tcf-status").text("MISSING: __tcfapi function not found"))}e=null==e?a("div.ai-list-data, meta.ai-list-data"):e.filter(".ai-list-data");if(e.length){e.removeClass("ai-list-data");var G=document.cookie.split(";");G.forEach(function(d,b){G[b]=d.trim()});var Q=getAllUrlParams(window.location.search);if(null!=Q.referrer)var r=Q.referrer;else r=document.referrer,""!=r&&(r=k(r));var L=window.navigator.userAgent,M=L.toLowerCase();
if("undefined"!==typeof MobileDetect)var R=new MobileDetect(L);e.each(function(){var d=a(this).closest("div.code-block"),b=!0,g=a(this).attr("referer-list");if("undefined"!=typeof g){g=b64d(g).split(",");var f=a(this).attr("referer-list-type"),l=!1;a.each(g,function(u,c){if(""==c)return!0;if("*"==c.charAt(0))if("*"==c.charAt(c.length-1)){if(c=c.substr(1,c.length-2),-1!=r.indexOf(c))return l=!0,!1}else{if(c=c.substr(1),r.substr(-c.length)==c)return l=!0,!1}else if("*"==c.charAt(c.length-
1)){if(c=c.substr(0,c.length-1),0==r.indexOf(c))return l=!0,!1}else if("#"==c){if(""==r)return l=!0,!1}else if(c==r)return l=!0,!1});switch(f){case "B":l&&(b=!1);break;case "W":l||(b=!1)}}if(b&&(g=a(this).attr("client-list"),"undefined"!=typeof g&&"undefined"!==typeof R))switch(g=b64d(g).split(","),f=a(this).attr("client-list-type"),l=!1,a.each(g,function(u,c){if(""==c)return!0;if("*"==c.charAt(0))if("*"==c.charAt(c.length-1)){if(c=c.substr(1,c.length-2).toLowerCase(),-1!=M.indexOf(c))return l=!0,
!1}else{if(c=c.substr(1).toLowerCase(),M.substr(-c.length)==c)return l=!0,!1}else if("*"==c.charAt(c.length-1)){if(c=c.substr(0,c.length-1).toLowerCase(),0==M.indexOf(c))return l=!0,!1}else if(R.is(c))return l=!0,!1}),f){case "B":l&&(b=!1);break;case "W":l||(b=!1)}var N=g=!1;if(b&&(f=a(this).attr("parameter-list"),"undefined"!=typeof f)){f=b64d(f).split(",");var v=a(this).attr("parameter-list-type"),S=[];G.forEach(function(u){u=u.split("=");try{var c=JSON.parse(decodeURIComponent(u[1]))}catch(T){c=
decodeURIComponent(u[1])}S[u[0]]=c});var x=!1,I=a(this);a.each(f,function(u,c){var T=c.split("&&");a.each(T,function(X,m){var y=!0;m=m.trim();"!!"==m.substring(0,2)&&(y=!1,m=m.substring(2));var p=m,z="!@!",U=-1!=m.indexOf("["),V=(0==m.indexOf("tcf-v2")||0==m.indexOf("euconsent-v2"))&&-1!=m.indexOf("[");-1!=m.indexOf("=")&&(z=m.split("="),p=z[0],z=z[1],U=-1!=p.indexOf("["),V=(0==p.indexOf("tcf-v2")||0==p.indexOf("euconsent-v2"))&&-1!=p.indexOf("["));if(V)a("#ai-iab-tcf-bar").show(),"object"==typeof ai_tcData?
(a("#ai-iab-tcf-bar").addClass("status-ok"),p=p.replace(/]| /gi,"").split("["),p.shift(),x=(p=h(p,ai_tcData,z))?y:!y):(I.addClass("ai-list-data"),N=!0,"function"==typeof __tcfapi?H(!1):"undefined"==typeof ai_tcData_retrying&&(ai_tcData_retrying=!0,setTimeout(function(){"function"==typeof __tcfapi?H(!1):setTimeout(function(){"function"==typeof __tcfapi?H(!1):setTimeout(function(){H(!0)},3E3)},1E3)},600)));else if(U)x=(p=t(S,p,z))?y:!y;else{var O=!1;"!@!"==z?G.every(function(W){return W.split("=")[0]==
m?(O=!0,!1):!0}):O=-1!=G.indexOf(m);x=O?y:!y}if(!x)return!1});if(x)return!1});switch(v){case "B":x&&(b=!1);break;case "W":x||(b=!1)}a(this).hasClass("ai-list-manual")&&(b?(I.removeClass("ai-list-data"),I.removeClass("ai-list-manual")):(g=!0,I.addClass("ai-list-data")));if(!g&&!N&&(f=a(this).data("debug-info"),"undefined"!=typeof f&&(f=a("."+f),0!=f.length))){var q=f.parent();q.hasClass("ai-debug-info")&&q.remove()}}q=a(this).prevAll(".ai-debug-bar.ai-debug-lists");f=""==r?"#":r;q.find(".ai-debug-name.ai-list-info").text(f).attr("title",
L);q.find(".ai-debug-name.ai-list-status").text(b?ai_front.visible:ai_front.hidden);f=!1;if(b){v=a(this).attr("scheduling-start");var B=a(this).attr("scheduling-end"),C=a(this).attr("scheduling-days");if("undefined"!=typeof v&&"undefined"!=typeof B&&"undefined"!=typeof C){f=!0;var P=parseInt(a(this).attr("scheduling-fallback")),w=parseInt(a(this).attr("gmt"));v=A(b64d(v))+w;B=A(b64d(B))+w;C=b64d(C).split(",");q=a(this).attr("scheduling-type");var D=(new Date).getTime()+w,J=new Date(D),E=J.getDay();
0==E?E=6:E--;w=D>=v&&D<B&&C.includes(E.toString());switch(q){case "B":w=!w}w||(b=!1);J=J.toISOString().split(".")[0].replace("T"," ");q=a(this).prevAll(".ai-debug-bar.ai-debug-scheduling");q.find(".ai-debug-name.ai-scheduling-info").text(J+" "+E+" current_time:"+D.toString()+"  start_date:"+v.toString()+" ="+(D>=v).toString()+" end_date:"+B.toString()+" =:"+(D<B).toString()+" days:"+C.toString()+" =:"+C.includes(E.toString()).toString());q.find(".ai-debug-name.ai-scheduling-status").text(b?ai_front.visible:
ai_front.hidden);b||0==P||(q.removeClass("ai-debug-scheduling").addClass("ai-debug-fallback"),q.find(".ai-debug-name.ai-scheduling-status").text(ai_front.fallback+"="+P))}}if(g||N)return!0;a(this).css({visibility:"",position:"",width:"",height:"","z-index":""});b?(d.css({visibility:""}),d.hasClass("ai-remove-position")&&d.css({position:""}),"undefined"!=typeof a(this).data("code")&&(b=b64d(a(this).data("code")),0!=a(this).closest("head").length?(a(this).after(b),a(this).remove()):a(this).append(b),
ai_process_element(this))):f&&!w&&0!=P?(d.css({visibility:""}),d.hasClass("ai-remove-position")&&d.css({position:""}),a(this).next(".ai-fallback").removeClass("ai-fallback"),"undefined"!=typeof a(this).data("fallback-code")?(b=b64d(a(this).data("fallback-code")),a(this).append(b),ai_process_element(this)):(a(this).hide(),d.find(".ai-debug-block").length||d.hide()),b=d.attr("data-ai"),"undefined"!==typeof b&&!1!==b&&(b=a(this).attr("fallback-tracking"),"undefined"!==typeof b&&!1!==b&&d.attr("data-ai",
b))):(a(this).hide(),d.find(".ai-debug-block").length||d.hide(),d.removeAttr("data-ai").removeClass("ai-track"),d.find(".ai-debug-block").length?(d.css({visibility:""}).removeClass("ai-close"),d.hasClass("ai-remove-position")&&d.css({position:""})):d.hide());a(this).attr("data-code","");a(this).attr("data-fallback-code","");d.removeClass("ai-list-block")})}};a(document).ready(function(e){setTimeout(function(){ai_process_lists();setTimeout(function(){n();if("function"==typeof ai_load_blocks){var h=
function(t){"cmplzEnableScripts"!=t.type&&"all"!==t.consentLevel||ai_load_blocks()};jQuery(document).on("cmplzEnableScripts",h);jQuery(document).on("cmplz_event_marketing",h)}},50);jQuery("#ai-iab-tcf-bar").click(function(){document.cookie="euconsent-v2=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;";document.cookie="__lxG__consent__v2=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;";document.cookie="__lxG__consent__v2_daisybit=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;";document.cookie=
"__lxG__consent__v2_gdaisybit=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;";document.cookie="complianz_consent_status=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;";document.cookie="cmplz_marketing=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;";document.cookie="cmplz_stats=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;";jQuery("#ai-iab-tcf-status").text("COOKIE DELETED")})},5)})});
function ai_process_element(a){setTimeout(function(){"function"==typeof ai_process_rotations_in_element&&ai_process_rotations_in_element(a);"function"==typeof ai_process_lists&&ai_process_lists(jQuery(".ai-list-data",a));"function"==typeof ai_process_ip_addresses&&ai_process_ip_addresses(jQuery(".ai-ip-data",a));"function"==typeof ai_adb_process_blocks&&ai_adb_process_blocks(a)},5)}
function getAllUrlParams(a){var k=a?a.split("?")[1]:window.location.search.slice(1);a={};if(k){k=k.split("#")[0];k=k.split("&");for(var A=0;A<k.length;A++){var n=k[A].split("="),F=void 0,e=n[0].replace(/\[\d*\]/,function(h){F=h.slice(1,-1);return""});n="undefined"===typeof n[1]?"":n[1];e=e.toLowerCase();n=n.toLowerCase();a[e]?("string"===typeof a[e]&&(a[e]=[a[e]]),"undefined"===typeof F?a[e].push(n):a[e][F]=n):a[e]=n}}return a};
ai_run_702615440415 = function(){
ai_document_write=document.write;document.write=function(a){"interactive"==document.readyState?(console.error("document.write called after page load: ",a),"undefined"!=typeof ai_js_errors&&ai_js_errors.push(["document.write called after page load",a,0])):ai_document_write.call(document,a)};
ai_insert_viewport_code ('ai-insert-9-72984099');
ai_insert_viewport_code ('ai-insert-1-20064408');
ai_insert_viewport_code ('ai-insert-13-28375575');
ai_insert_viewport_code ('ai-insert-16-72464695');
ai_insert_viewport_code ('ai-insert-1-64636859');
};
if (document.readyState === 'complete' || (document.readyState !== 'loading' && !document.documentElement.doScroll)) ai_run_702615440415 (); else document.addEventListener ('DOMContentLoaded', ai_run_702615440415);
ai_js_code = true;

</script>

</body>
</html>

<!--
Performance optimized by W3 Total Cache. Learn more: https://www.boldgrid.com/w3-total-cache/


Served from: www.eldigitaldealbacete.com @ 2021-04-05 19:40:26 by W3 Total Cache
-->''';