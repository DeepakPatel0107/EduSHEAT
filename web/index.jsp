<!DOCTYPE html>
<html lang="en">

    <head>

        <style>
            .modal{
                opacity: 100;
            }
            .ringingBell{


                -webkit-animation: ring 4s .7s ease-in-out infinite;
                -webkit-transform-origin: 50% 4px;
                -moz-animation: ring 4s .7s ease-in-out infinite;
                -moz-transform-origin: 50% 4px;
                animation: ring 4s .7s ease-in-out infinite;
                transform-origin: 50% 4px;
            }

            @-webkit-keyframes ring {
                0% { -webkit-transform: rotateZ(0); }
                1% { -webkit-transform: rotateZ(30deg); }
                3% { -webkit-transform: rotateZ(-28deg); }
                5% { -webkit-transform: rotateZ(34deg); }
                7% { -webkit-transform: rotateZ(-32deg); }
                9% { -webkit-transform: rotateZ(30deg); }
                11% { -webkit-transform: rotateZ(-28deg); }
                13% { -webkit-transform: rotateZ(26deg); }
                15% { -webkit-transform: rotateZ(-24deg); }
                17% { -webkit-transform: rotateZ(22deg); }
                19% { -webkit-transform: rotateZ(-20deg); }
                21% { -webkit-transform: rotateZ(18deg); }
                23% { -webkit-transform: rotateZ(-16deg); }
                25% { -webkit-transform: rotateZ(14deg); }
                27% { -webkit-transform: rotateZ(-12deg); }
                29% { -webkit-transform: rotateZ(10deg); }
                31% { -webkit-transform: rotateZ(-8deg); }
                33% { -webkit-transform: rotateZ(6deg); }
                35% { -webkit-transform: rotateZ(-4deg); }
                37% { -webkit-transform: rotateZ(2deg); }
                39% { -webkit-transform: rotateZ(-1deg); }
                41% { -webkit-transform: rotateZ(1deg); }

                43% { -webkit-transform: rotateZ(0); }
                100% { -webkit-transform: rotateZ(0); }
            }

            @-moz-keyframes ring {
                0% { -moz-transform: rotate(0); }
                1% { -moz-transform: rotate(30deg); }
                3% { -moz-transform: rotate(-28deg); }
                5% { -moz-transform: rotate(34deg); }
                7% { -moz-transform: rotate(-32deg); }
                9% { -moz-transform: rotate(30deg); }
                11% { -moz-transform: rotate(-28deg); }
                13% { -moz-transform: rotate(26deg); }
                15% { -moz-transform: rotate(-24deg); }
                17% { -moz-transform: rotate(22deg); }
                19% { -moz-transform: rotate(-20deg); }
                21% { -moz-transform: rotate(18deg); }
                23% { -moz-transform: rotate(-16deg); }
                25% { -moz-transform: rotate(14deg); }
                27% { -moz-transform: rotate(-12deg); }
                29% { -moz-transform: rotate(10deg); }
                31% { -moz-transform: rotate(-8deg); }
                33% { -moz-transform: rotate(6deg); }
                35% { -moz-transform: rotate(-4deg); }
                37% { -moz-transform: rotate(2deg); }
                39% { -moz-transform: rotate(-1deg); }
                41% { -moz-transform: rotate(1deg); }

                43% { -moz-transform: rotate(0); }
                100% { -moz-transform: rotate(0); }
            }

            @keyframes ring {
                0% { transform: rotate(0); }
                1% { transform: rotate(30deg); }
                3% { transform: rotate(-28deg); }
                5% { transform: rotate(34deg); }
                7% { transform: rotate(-32deg); }
                9% { transform: rotate(30deg); }
                11% { transform: rotate(-28deg); }
                13% { transform: rotate(26deg); }
                15% { transform: rotate(-24deg); }
                17% { transform: rotate(22deg); }
                19% { transform: rotate(-20deg); }
                21% { transform: rotate(18deg); }
                23% { transform: rotate(-16deg); }
                25% { transform: rotate(14deg); }
                27% { transform: rotate(-12deg); }
                29% { transform: rotate(10deg); }
                31% { transform: rotate(-8deg); }
                33% { transform: rotate(6deg); }
                35% { transform: rotate(-4deg); }
                37% { transform: rotate(2deg); }
                39% { transform: rotate(-1deg); }
                41% { transform: rotate(1deg); }

                43% { transform: rotate(0); }
                100% { transform: rotate(0); }
            }





            .live-chat-app{

                position: fixed;
                bottom: 20px;
                right: 10px;
                z-index: 99;
                font-size: 18px;
                cursor: pointer;

            }

            .live-chat-app1{

                position: fixed;
                bottom: 20px;
                right: 10px;
                z-index: 99;
                font-size: 18px;
                cursor: pointer;
                opacity: 0.7

            }

            @keyframes glowing1 {
                0% { box-shadow: 0 0 -10px #ff0000; }
                40% { box-shadow: 0 0 20px #ff0000; }
                60% { box-shadow: 0 0 20px #ff0000; }
                100% { box-shadow: 0 0 -10px #ff0000; }
            }

            .button-glow1 {
                animation: glowing1 5000ms infinite;
            }



            @keyframes glowing {
                0% { box-shadow: 0 0 -10px #0000cc; }
                40% { box-shadow: 0 0 20px #0000cc; }
                60% { box-shadow: 0 0 20px #0000cc; }
                100% { box-shadow: 0 0 -10px #0000cc; }
            }

            .button-glow {
                animation: glowing 5000ms infinite;
            }


            .zoom {

                transition: transform .2s;

            }

            .zoom:hover {
                -ms-transform: scale(1.5); /* IE 9 */
                -webkit-transform: scale(1.5); /* Safari 3-8 */
                transform: scale(1.5); 
            }

        </style>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- META ============================================= -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="keywords" content="" />
        <meta name="author" content="" />
        <meta name="robots" content="" />

        <!-- DESCRIPTION -->
        <meta name="description" content="EduSHEAT : Learn To Lead" />

        <!-- OG -->
        <meta property="og:title" content="EduSHEAT : Learn To Lead" />
        <meta property="og:description" content="EduSHEAT : Learn To Lead" />
        <meta property="og:image" content="" />
        <meta name="format-detection" content="telephone=no">

        <!-- FAVICONS ICON ============================================= -->
        <!--	<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon" />-->
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />

        <!-- PAGE TITLE HERE ============================================= -->
        <title>EduSHEAT : Learn To Lead </title>

        <!-- MOBILE SPECIFIC ============================================= -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--[if lt IE 9]>
        <script src="assets/js/html5shiv.min.js"></script>
        <script src="assets/js/respond.min.js"></script>
        <![endif]-->

        <!-- All PLUGINS CSS ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/assets.css">

        <!-- TYPOGRAPHY ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/typography.css">

        <!-- SHORTCODES ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/shortcodes/shortcodes.css">

        <!-- STYLESHEETS ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <link class="skin" rel="stylesheet" type="text/css" href="assets/css/color/color-1.css">

        <!-- REVOLUTION SLIDER CSS ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/vendors/revolution/css/layers.css">
        <link rel="stylesheet" type="text/css" href="assets/vendors/revolution/css/settings.css">
        <link rel="stylesheet" type="text/css" href="assets/vendors/revolution/css/navigation.css">
        <!-- REVOLUTION SLIDER END -->	

    </head>
    <body id="bg">
        <!--Modal: modalPush-->
        <div class="modal fade" id="modalPush" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog modal-notify modal-info" role="document">
                <!--Content-->
                <div class="modal-content text-center ">
                    <!--Header-->
                    <div class="modal-header d-flex justify-content-center">
                        <p class="heading" style="font-family:monospace ; color: blue; font-weight: bolder; font-size: 30px"><b>Welcome to EduSHEAT</b></p>
                    </div>

                    <!--Body-->
                    <div class="modal-body row">

                        <div class="modal-body col-sm-4">

                            <i style="color: red;" class="ringingBell fa fa-bell fa-4x animated rotateIn mb-4"></i>

                        </div>
                        <div class="col-sm-8">
                            <p style="font-family:monospace ;align-content: center"> EduSHEAT is developed as a college project by seeing the pandemic situation due to COVID-19. It provides all those resourcse to the student which they required during college like Notes, Tutorial Videos, Notice, Circulars, Assignment/ Project Submission etc. Student can receive all their information and study material which is uploaded by faculty staff of the college.</p>
                        </div>

                    </div>

                    <!--Footer-->
                    <div class="modal-footer flex-center">

                        <a type="button" class="btn btn-outline-info waves-effect" data-dismiss="modal" style="color: white">Ok</a>
                    </div>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!--Modal: modalPush-->








        <div class="page-wraper">


            <div id="loading-icon-bx"></div>
            <!-- Header Top ==== -->

            <header class="header rs-nav header-transparent">
                <div class="top-bar">
                    <div class="container">


                        <div class="row d-flex justify-content-between">
                            <div class="topbar-left">
                                <ul>
                                    <li><a href="faq-1.jsp"><i class="fa fa-question-circle"></i>Ask a Question</a></li>

                                </ul>
                            </div>
                            <div class="topbar-right">
                                <ul>
                                    <li><a href="AdminStaffLogin.jsp">Admin Login</a></li>
                                    <li><a href="StaffLogin.jsp">Staff Login</a></li>
                                    <li><a href="StudentLogin.jsp">Student Login</a></li>
                                   
                                </ul>
                            </div>
                        </div>
                    </div>	
                </div>
                <div class="sticky-header navbar-expand-lg">
                    <div class="menu-bar clearfix">
                        <div class="container clearfix">
                            <!-- Header Logo ==== -->
                            <div class="menu-logo">
                                <a href="index.jsp"><img src="assets/images/logo-white.png" alt=""></a>
                            </div>
                            <!-- Mobile Nav Button ==== -->
                            <button class="navbar-toggler collapsed menuicon justify-content-end" type="button" data-toggle="collapse" data-target="#menuDropdown" aria-controls="menuDropdown" aria-expanded="false" aria-label="Toggle navigation">
                                <span></span>
                                <span></span>
                                <span></span>
                            </button>
                            <!-- Author Nav ==== -->
                            <div class="secondary-menu">
                                <div class="secondary-inner">
                                    <ul>
                                        <li><a href="javascript:;" class="btn-link"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="javascript:;" class="btn-link"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="javascript:;" class="btn-link"><i class="fa fa-linkedin"></i></a></li>
                                        <!-- Search Button ==== -->
                                        <li class="search-btn"><button id="quik-search-btn" type="button" class="btn-link"><i class="fa fa-search"></i></button></li>

                                    </ul>
                                </div>
                            </div>
                            <!-- Search Box ==== -->
                            <div class="nav-search-bar">
                                <form action="#">
                                    <input name="search" value="" type="text" class="form-control" placeholder="Type to search">
                                    <span><i class="ti-search"></i></span>
                                </form>
                                <span id="search-remove"><i class="ti-close"></i></span>
                            </div>
                            <!-- Navigation Menu ==== -->
                            <div class="menu-links navbar-collapse collapse justify-content-start" id="menuDropdown">
                                <div class="menu-logo">
                                    <a href="index.jsp"><img src="assets/images/logo.png" alt=""></a>
                                </div>
                                <ul class="nav navbar-nav">	
                                    <li class="active"><a href="index.jsp">Home </a>

                                    </li>
                                    <li><a href="javascript:;">SHEAT<i class="fa fa-chevron-down"></i></a>
                                        <ul class="sub-menu">
                                            <li><a href="about-1.jsp">About</a>

                                            </li>
                                            <li><a href="event.jsp">Event</a>

                                            </li>
                                            <li><a href="faq-1.jsp">FAQ's</a>

                                            </li>
                                            <li><a href="contact-1.jsp">Contact Us</a>

                                            </li>


                                        </ul>
                                    </li>
                                    <li class="add-mega-menu"><a href="courses.jsp">Our Courses</a>

                                    </li>


                                </ul>
                                <div class="nav-social-link">
                                    <a href="javascript:;"><i class="fa fa-facebook"></i></a>
                                    <a href="javascript:;"><i class="fa fa-google-plus"></i></a>
                                    <a href="javascript:;"><i class="fa fa-linkedin"></i></a>
                                </div>
                            </div>
                            <!-- Navigation Menu END ==== -->
                        </div>
                    </div>
                </div>
            </header>
            <!-- Header Top END ==== -->
            <!-- Content -->
            <div class="page-content bg-white">
                <!-- Main Slider -->
                <div class="rev-slider">
                    <div id="rev_slider_486_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="news-gallery36" data-source="gallery" style="margin:0px auto;background-color:#ffffff;padding:0px;margin-top:0px;margin-bottom:0px;">
                        <!-- START REVOLUTION SLIDER 5.3.0.2 fullwidth mode -->
                        <div id="rev_slider_486_1" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.3.0.2">
                            <ul>	<!-- SLIDE  -->
                                <li data-index="rs-100" 
                                    data-transition="parallaxvertical" 
                                    data-slotamount="default" 
                                    data-hideafterloop="0" 
                                    data-hideslideonmobile="off" 
                                    data-easein="default" 
                                    data-easeout="default" 
                                    data-masterspeed="default" 
                                    data-thumb="error-404.jsp" 
                                    data-rotate="0" 
                                    data-fstransition="fade" 
                                    data-fsmasterspeed="1500" 
                                    data-fsslotamount="7" 
                                    data-saveperformance="off" 
                                    data-title="A STUDY ON HAPPINESS" 
                                    data-param1="" data-param2="" 
                                    data-param3="" data-param4="" 
                                    data-param5="" data-param6="" 
                                    data-param7="" data-param8="" 
                                    data-param9="" data-param10="" 
                                    data-description="Science says that Women are generally happier">
                                    <!-- MAIN IMAGE -->
                                    <img src="assets/images/slider/slide1.jpg" alt="" 
                                         data-bgposition="center center" 
                                         data-bgfit="cover" 
                                         data-bgrepeat="no-repeat" 
                                         data-bgparallax="10" 
                                         class="rev-slidebg" 
                                         data-no-retina />

                                    <!-- LAYER NR. 1 -->
                                    <div class="tp-caption tp-shape tp-shapewrapper " 
                                         id="slide-100-layer-1" 
                                         data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                                         data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
                                         data-width="full"
                                         data-height="full"
                                         data-whitespace="nowrap"
                                         data-type="shape" 
                                         data-basealign="slide" 
                                         data-responsive_offset="off" 
                                         data-responsive="off"
                                         data-frames='[{"from":"opacity:0;","speed":1,"to":"o:1;","delay":0,"ease":"Power4.easeOut"},{"delay":"wait","speed":1,"to":"opacity:0;","ease":"Power4.easeOut"}]'
                                         data-textAlign="['left','left','left','left']"
                                         data-paddingtop="[0,0,0,0]"
                                         data-paddingright="[0,0,0,0]"
                                         data-paddingbottom="[0,0,0,0]"
                                         data-paddingleft="[0,0,0,0]"
                                         style="z-index: 5;background-color:rgba(2, 0, 11, 0.80);border-color:rgba(0, 0, 0, 0);border-width:0px;"> </div>	
                                    <!-- LAYER NR. 2 -->
                                    <div class="tp-caption Newspaper-Title   tp-resizeme" 
                                         id="slide-100-layer-2" 
                                         data-x="['center','center','center','center']" 
                                         data-hoffset="['0','0','0','0']" 
                                         data-y="['top','top','top','top']" 
                                         data-voffset="['250','250','250','240']" 
                                         data-fontsize="['50','50','50','30']"
                                         data-lineheight="['55','55','55','35']"
                                         data-width="full"
                                         data-height="none"
                                         data-whitespace="normal"
                                         data-type="text" 
                                         data-responsive_offset="on" 
                                         data-frames='[{"from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
                                         data-textAlign="['center','center','center','center']"
                                         data-paddingtop="[0,0,0,0]"
                                         data-paddingright="[0,0,0,0]"
                                         data-paddingbottom="[10,10,10,10]"
                                         data-paddingleft="[0,0,0,0]"
                                         style="z-index: 6; font-family:rubik; font-weight:700; text-align:center; white-space: normal;">
                                        Welcome To EduSHEAT
                                    </div>

                                    <!-- LAYER NR. 3 -->
                                    <div class="tp-caption Newspaper-Subtitle   tp-resizeme" 
                                         id="slide-100-layer-3" 
                                         data-x="['center','center','center','center']" 
                                         data-hoffset="['0','0','0','0']" 
                                         data-y="['top','top','top','top']" 
                                         data-voffset="['210','210','210','210']" 
                                         data-width="none"
                                         data-height="none"
                                         data-whitespace="nowrap"
                                         data-type="text" 
                                         data-responsive_offset="on"
                                         data-frames='[{"from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
                                         data-textAlign="['left','left','left','left']"
                                         data-paddingtop="[0,0,0,0]"
                                         data-paddingright="[0,0,0,0]"
                                         data-paddingbottom="[0,0,0,0]"
                                         data-paddingleft="[0,0,0,0]"
                                         style="z-index: 7; white-space: nowrap; color:#fff; font-family:rubik; font-size:18px; font-weight:400;">
                                        Batter Education For A Better Life
                                    </div>

                                    <!-- LAYER NR. 3 -->
                                    <div class="tp-caption Newspaper-Subtitle   tp-resizeme" 
                                         id="slide-100-layer-4" 
                                         data-x="['center','center','center','center']" 
                                         data-hoffset="['0','0','0','0']" 
                                         data-y="['top','top','top','top']" 
                                         data-voffset="['320','320','320','290']" 
                                         data-width="['800','800','700','420']"
                                         data-height="['100','100','100','120']"
                                         data-whitespace="unset"
                                         data-type="text" 
                                         data-responsive_offset="on"
                                         data-frames='[{"from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
                                         data-textAlign="['center','center','center','center']"
                                         data-paddingtop="[0,0,0,0]"
                                         data-paddingright="[0,0,0,0]"
                                         data-paddingbottom="[0,0,0,0]"
                                         data-paddingleft="[0,0,0,0]"
                                         style="z-index: 7; text-transform:capitalize; white-space: unset; color:#fff; font-family:rubik; font-size:18px; line-height:28px; font-weight:400;">
                                        Saraswati Higher Education And Technical College Provies a Platform to Increase Your Knowledge.
                                    </div>
                                    <!-- LAYER NR. 4 -->


                                </li>
                                <li data-index="rs-200" 
                                    data-transition="parallaxvertical" 
                                    data-slotamount="default" 
                                    data-hideafterloop="0" 
                                    data-hideslideonmobile="off" 
                                    data-easein="default" 
                                    data-easeout="default" 
                                    data-masterspeed="default" 
                                    data-thumb="assets/images/slider/slide1.jpg" 
                                    data-rotate="0" 
                                    data-fstransition="fade" 
                                    data-fsmasterspeed="1500" 
                                    data-fsslotamount="7" 
                                    data-saveperformance="off" 
                                    data-title="A STUDY ON HAPPINESS" 
                                    data-param1="" data-param2="" 
                                    data-param3="" data-param4="" 
                                    data-param5="" data-param6="" 
                                    data-param7="" data-param8="" 
                                    data-param9="" data-param10="" 
                                    data-description="Science says that Women are generally happier">
                                    <!-- MAIN IMAGE -->
                                    <img src="assets/images/slider/slide2.jpg" alt="" 
                                         data-bgposition="center center" 
                                         data-bgfit="cover" 
                                         data-bgrepeat="no-repeat" 
                                         data-bgparallax="10" 
                                         class="rev-slidebg" 
                                         data-no-retina />

                                    <!-- LAYER NR. 1 -->
                                    <div class="tp-caption tp-shape tp-shapewrapper " 
                                         id="slide-200-layer-1" 
                                         data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                                         data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
                                         data-width="full"
                                         data-height="full"
                                         data-whitespace="nowrap"
                                         data-type="shape" 
                                         data-basealign="slide" 
                                         data-responsive_offset="off" 
                                         data-responsive="off"
                                         data-frames='[{"from":"opacity:0;","speed":1,"to":"o:1;","delay":0,"ease":"Power4.easeOut"},{"delay":"wait","speed":1000,"to":"opacity:1;","ease":"Power4.easeOut"}]'
                                         data-textAlign="['left','left','left','left']"
                                         data-paddingtop="[0,0,0,0]"
                                         data-paddingright="[0,0,0,0]"
                                         data-paddingbottom="[0,0,0,0]"
                                         data-paddingleft="[0,0,0,0]"
                                         style="z-index: 5;background-color:rgba(2, 0, 11, 0.80);border-color:rgba(0, 0, 0, 0);border-width:0px;"> 
                                    </div>

                                    <!-- LAYER NR. 2 -->
                                    <div class="tp-caption Newspaper-Title   tp-resizeme" 
                                         id="slide-200-layer-2" 
                                         data-x="['center','center','center','center']" 
                                         data-hoffset="['0','0','0','0']" 
                                         data-y="['top','top','top','top']" 
                                         data-voffset="['250','250','250','240']" 
                                         data-fontsize="['50','50','50','30']"
                                         data-lineheight="['55','55','55','35']"
                                         data-width="full"
                                         data-height="none"
                                         data-whitespace="normal"
                                         data-type="text" 
                                         data-responsive_offset="on" 
                                         data-frames='[{"from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
                                         data-textAlign="['center','center','center','center']"
                                         data-paddingtop="[0,0,0,0]"
                                         data-paddingright="[0,0,0,0]"
                                         data-paddingbottom="[10,10,10,10]"
                                         data-paddingleft="[0,0,0,0]"
                                         style="z-index: 6; font-family:rubik; font-weight:700; text-align:center; white-space: normal;text-transform:uppercase;">
                                        Welcome To EduSHEAT
                                    </div>

                                    <!-- LAYER NR. 3 -->
                                    <div class="tp-caption Newspaper-Subtitle   tp-resizeme" 
                                         id="slide-200-layer-3" 
                                         data-x="['center','center','center','center']" 
                                         data-hoffset="['0','0','0','0']" 
                                         data-y="['top','top','top','top']" 
                                         data-voffset="['210','210','210','210']" 
                                         data-width="none"
                                         data-height="none"
                                         data-whitespace="nowrap"
                                         data-type="text" 
                                         data-responsive_offset="on"
                                         data-frames='[{"from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
                                         data-textAlign="['left','left','left','left']"
                                         data-paddingtop="[0,0,0,0]"
                                         data-paddingright="[0,0,0,0]"
                                         data-paddingbottom="[0,0,0,0]"
                                         data-paddingleft="[0,0,0,0]"
                                         style="z-index: 7; white-space: nowrap;text-transform:uppercase; color:#fff; font-family:rubik; font-size:18px; font-weight:400;">
                                        Batter Education For A Better Life 
                                    </div>

                                    <!-- LAYER NR. 3 -->
                                    <div class="tp-caption Newspaper-Subtitle   tp-resizeme" 
                                         id="slide-200-layer-4" 
                                         data-x="['center','center','center','center']" 
                                         data-hoffset="['0','0','0','0']" 
                                         data-y="['top','top','top','top']" 
                                         data-voffset="['320','320','320','290']" 
                                         data-width="['800','800','700','420']"
                                         data-height="['100','100','100','120']"
                                         data-whitespace="unset"
                                         data-type="text" 
                                         data-responsive_offset="on"
                                         data-frames='[{"from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
                                         data-textAlign="['center','center','center','center']"
                                         data-paddingtop="[0,0,0,0]"
                                         data-paddingright="[0,0,0,0]"
                                         data-paddingbottom="[0,0,0,0]"
                                         data-paddingleft="[0,0,0,0]"
                                         style="z-index: 7; text-transform:capitalize; white-space: unset; color:#fff; font-family:rubik; font-size:18px; line-height:28px; font-weight:400;">
                                        Saraswati Higher Education And Technical College Provies a Platform to Increase Your Knowledge.
                                    </div>
                                    <!-- LAYER NR. 4 -->

                                </li>
                                <!-- SLIDE  -->
                            </ul>
                        </div><!-- END REVOLUTION SLIDER -->  
                    </div>  
                </div>  
                <!-- Main Slider -->
                <div class="content-block">

                    <!-- Our Services -->
                    <div class="section-area content-inner service-info-bx">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="service-bx">
                                        <div class="action-box">
                                            <img src="assets/images/our-services/pic1.jpg" alt="">
                                        </div>
                                        <div class="info-bx text-center">
                                            <div class="feature-box-sm radius bg-white">
                                                <i class="fa fa-bank text-primary"></i>
                                            </div>
                                            <h4><a href="#">Best College In City</a></h4>
                                            <a href="https://www.sheatcollege.com/" class="btn radius-xl">View More</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="service-bx">
                                        <div class="action-box">
                                            <img src="assets/images/our-services/pic2.jpg" alt="">
                                        </div>
                                        <div class="info-bx text-center">
                                            <div class="feature-box-sm radius bg-white">
                                                <i class="fa fa-book text-primary"></i>
                                            </div>
                                            <h4><a href="#">Learn Courses Online</a></h4>
                                            <a href="#" class="btn radius-xl">View More</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12">
                                    <div class="service-bx m-b0">
                                        <div class="action-box">
                                            <img src="assets/images/our-services/pic3.jpg" alt="">
                                        </div>
                                        <div class="info-bx text-center">
                                            <div class="feature-box-sm radius bg-white">
                                                <i class="fa fa-file-text-o text-primary"></i>
                                            </div>
                                            <h4><a href="#">Check Daily Updates</a></h4>
                                            <a href="#" class="btn radius-xl">View More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Our Services END -->
























                    <div class="live-chat-app button-glow1 zoom" onclick="profile()">
                        <iframe width="153" height="100" src="assets/images/developer.jpg" >

                        </iframe>

                    </div>
                    <br>
                    <br>
                    <br>
                    <div class="live-chat-app1">
                        <button class="button-glow zoom" onclick=window.location.href="profile.jsp">About Developer</button> 
                    </div>
















                    <!-- Popular Courses -->
                    <div class="section-area section-sp2 popular-courses-bx">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 heading-bx left">
                                    <h2 class="title-head">Popular <span>Courses</span></h2>

                                </div>
                            </div>
                            <div class="row">
                                <div class="courses-carousel owl-carousel owl-btn-1 col-12 p-lr0">
                                    <div class="item">
                                        <div class="cours-bx">
                                            <div class="action-box">
                                                <img src="assets/images/dataStructure.jpg" alt="" height="100px" width="150px">
                                                <a href="https://www.javatpoint.com/data-structure-tutorial" class="btn">Read More</a>
                                            </div>
                                            <div class="info-bx text-center">
                                                <h5><a href="https://www.javatpoint.com/data-structure-tutorial">Data Structure in Java</a></h5>
                                                <span>Programming</span>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="cours-bx">
                                            <div class="action-box">
                                                <img src="assets/images/java.jpg" alt="" height="100px" width="150px">
                                                <a href="https://www.javatpoint.com/java-tutorial" class="btn">Read More</a>
                                            </div>
                                            <div class="info-bx text-center">
                                                <h5><a href="https://www.javatpoint.com/java-tutorial">Java</a></h5>
                                                <span>Programming</span>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="cours-bx">
                                            <div class="action-box">
                                                <img src="assets/images/c.jpg" alt="" height="100px" width="150px">
                                                <a href="https://www.javatpoint.com/c-programming-language-tutorial" class="btn">Read More</a>
                                            </div>
                                            <div class="info-bx text-center">
                                                <h5><a href="https://www.javatpoint.com/c-programming-language-tutorial">Programming With C</a></h5>
                                                <span>Programming</span>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="cours-bx">
                                            <div class="action-box">
                                                <img src="assets/images/oracle.jpg" alt="" height="100px" width="150px">
                                                <a href="https://www.javatpoint.com/oracle-tutorial" class="btn">Read More</a>
                                            </div>
                                            <div class="info-bx text-center">
                                                <h5><a href="https://www.javatpoint.com/oracle-tutorial">Oracle</a></h5>
                                                <span>Programming</span>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="item">
                                        <div class="cours-bx">
                                            <div class="action-box">
                                                <img src="assets/images/html.png" alt="" height="100px" width="150px">
                                                <a href="https://www.javatpoint.com/html-tutorial" class="btn">Read More</a>
                                            </div>
                                            <div class="info-bx text-center">
                                                <h5><a href="https://www.javatpoint.com/html-tutorial">HTML</a></h5>
                                                <span>Programming</span>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="item">
                                        <div class="cours-bx">
                                            <div class="action-box">
                                                <img src="assets/images/cloud.jpg" alt="" height="100px" width="150px">
                                                <a href="https://www.javatpoint.com/cloud-computing-tutorial" class="btn">Read More</a>
                                            </div>
                                            <div class="info-bx text-center">
                                                <h5><a href="https://www.javatpoint.com/cloud-computing-tutorial">Cloud Computing</a></h5>
                                                <span>Technology</span>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="item">
                                        <div class="cours-bx">
                                            <div class="action-box">
                                                <img src="assets/images/python.jpg" alt="" height="100px" width="150px">
                                                <a href="https://www.javatpoint.com/python-tutorial" class="btn">Read More</a>
                                            </div>
                                            <div class="info-bx text-center">
                                                <h5><a href="https://www.javatpoint.com/python-tutorial">Python</a></h5>
                                                <span>Programming</span>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="item">
                                        <div class="cours-bx">
                                            <div class="action-box">
                                                <img src="assets/images/android.png" alt="" height="100px" width="150px">
                                                <a href="https://www.javatpoint.com/android-tutorial" class="btn">Read More</a>
                                            </div>
                                            <div class="info-bx text-center">
                                                <h5><a href="https://www.javatpoint.com/android-tutorial">Android</a></h5>
                                                <span>Technology</span>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="item">
                                        <div class="cours-bx">
                                            <div class="action-box">
                                                <img src="assets/images/angular.jpg" alt="" height="100px" width="150px">
                                                <a href="https://www.javatpoint.com/angular-8" class="btn">Read More</a>
                                            </div>
                                            <div class="info-bx text-center">
                                                <h5><a href="https://www.javatpoint.com/angular-8">AngularJS</a></h5>
                                                <span>Programming</span>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Popular Courses END -->

                    <!-- Form -->
                    <div class="section-area section-sp1 ovpr-dark bg-fix online-cours" style=" background-image:url(assets/images/background/bg1.jpg);">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 text-center text-white">
                                    <h2>Online Courses To Learn</h2>
                                    <h5>Own Your Feature Learning New Skills Online</h5>
                                    <form class="cours-search">
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="What do you want to learn today?	">
                                            <div class="input-group-append">
                                                <button class="btn" type="submit">Search</button> 
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="mw800 m-auto">
                                <div class="row">
                                    <div class="col-md-4 col-sm-6">
                                        <div class="cours-search-bx m-b30">
                                            <div class="icon-box">
                                                <h3><i class="ti-user"></i><span class="counter">3000</span>+</h3>
                                            </div>
                                            <span class="cours-search-text">Over 3000+ student</span>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="cours-search-bx m-b30">
                                            <div class="icon-box">
                                                <h3><i class="ti-book"></i><span class="counter">50</span>+</h3>
                                            </div>
                                            <span class="cours-search-text">Over 50+ Courses.</span>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-12">
                                        <div class="cours-search-bx m-b30">
                                            <div class="icon-box">
                                                <h3><i class="ti-layout-list-post"></i><span class="counter">100</span>+</h3>
                                            </div>
                                            <span class="cours-search-text">Learn Anythink Online.</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Form END -->
                    <div class="section-area section-sp2">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 text-center heading-bx">
                                    <h2 class="title-head m-b0">Upcoming <span>Events</span></h2>
                                    <p class="m-b0">Upcoming Education Events To Feed Brain. </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="upcoming-event-carousel owl-carousel owl-btn-center-lr owl-btn-1 col-12 p-lr0  m-b30">
                                    <div class="item">
                                        <div class="event-bx">
                                            <div class="action-box">
                                                <img src="assets/images/teacher.jpg" alt="">
                                            </div>
                                            <div class="info-bx d-flex">
                                                <div>
                                                    <div class="event-time">
                                                        <div class="event-date">05</div>
                                                        <div class="event-month">September</div>
                                                    </div>
                                                </div>
                                                <div class="event-info">
                                                    <h4 class="event-title"><a href="#">Teacher's Day</a></h4>
                                                    <ul class="media-post">

                                                        <li><a href="#"><i class="fa fa-map-marker"></i> SHEAT College, Babatpur, Varanasi</a></li>
                                                    </ul>
                                                    <p>Every year September 5 is celebrated as Teachers' Day in the country. A day dedicated to teachers and their contributions in shaping one's life, it commemorates the birth anniversary of Dr Sarvepalli Radhakrishnan, a Bharat Ratna recipient and the first Vice President and second President of independent India.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="event-bx">
                                            <div class="action-box">
                                                <img src="assets/images/Happy-Independence-Day.jpg" alt="">
                                            </div>
                                            <div class="info-bx d-flex">
                                                <div>
                                                    <div class="event-time">
                                                        <div class="event-date">15</div>
                                                        <div class="event-month">August</div>
                                                    </div>
                                                </div>
                                                <div class="event-info">
                                                    <h4 class="event-title"><a href="#">Independence Day</a></h4>
                                                    <ul class="media-post">

                                                        <li><a href="#"><i class="fa fa-map-marker"></i> SHEAT College, Babatpur, Varanasi</a></li>
                                                    </ul>
                                                    <p>India gained its liberty and became a free country at midnight between August 14 and August 15, 1947. It was then that the free India's first prime minister Pandit Jawaharlal Nehru gave his famous "Tryst with Destiny" speech.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="event-bx">
                                            <div class="action-box">
                                                <img src="assets/images/plant-1000.jpg" alt="">
                                            </div>
                                            <div class="info-bx d-flex">
                                                <div>
                                                    <div class="event-time">
                                                        <div class="event-date">01</div>
                                                        <div class="event-month">July</div>
                                                    </div>
                                                </div>
                                                <div class="event-info">
                                                    <h4 class="event-title"><a href="#">Van Mahotsav</a></h4>
                                                    <ul class="media-post">

                                                        <li><a href="#"><i class="fa fa-map-marker"></i> SHEAT College, Babatpur, Varanasi</a></li>
                                                    </ul>
                                                    <p>National Festival of Tree Planting (Van Mahotsav) in India Date in the current year: July 1, 2020. Millions of trees are annually planted across India during the National Festival of Trees Planting (Van Mahotsav) in India.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="text-center">
                                <a href="#" class="btn">View All Event</a>
                            </div>
                        </div>
                    </div>

                    <!-- Testimonials -->
                    <div class="section-area section-sp2 bg-fix ovbl-dark" style="background-image:url(assets/images/background/bg1.jpg);">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 text-white heading-bx left">
                                    <h2 class="title-head text-uppercase">Some Great <span>Thoughts</span></h2>

                                </div>
                            </div>
                            <div class="testimonial-carousel owl-carousel owl-btn-1 col-12 p-lr0">
                                <div class="item">
                                    <div class="testimonial-bx">
                                        <div class="testimonial-thumb">
                                            <img src="https://cdn.britannica.com/49/134949-050-242B08C7/Rabindranath-Tagore.jpg" alt="">
                                        </div>
                                        <div class="testimonial-info">
                                            <h5 class="name">Rabindranath Tagore</h5>
                                            <p>-Poet</p>
                                        </div>
                                        <div class="testimonial-content">
                                            <p>The highest education is that which does not merely give us information but makes our life in harmony with all existence.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testimonial-bx">
                                        <div class="testimonial-thumb">
                                            <img src="https://www.gstatic.com/tv/thumb/persons/459/459_v9_ba.jpg" alt="">
                                        </div>
                                        <div class="testimonial-info">
                                            <h5 class="name">Dr. Seuss</h5>
                                            <p>-American author</p>
                                        </div>
                                        <div class="testimonial-content">
                                            <p>You can get help from teachers, but you are going to have to learn a lot by yourself, sitting alone in a room.</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="testimonial-bx">
                                        <div class="testimonial-thumb">
                                            <img src="https://www.onthisday.com/images/people/benjamin-disraeli-medium.jpg" alt="">
                                        </div>
                                        <div class="testimonial-info">
                                            <h5 class="name">Benjamin Disraeli</h5>
                                            <p>-Former Prime Minister of the United Kingdom</p>
                                        </div>
                                        <div class="testimonial-content">
                                            <p>Seeing much, suffering much, and studying much, are the three pillars of learning.</p>
                                        </div>
                                    </div>
                                </div>


                                <div class="item">
                                    <div class="testimonial-bx">
                                        <div class="testimonial-thumb">
                                            <img src="https://cdn.britannica.com/47/79847-050-A78604A0/Thomas-Alva-Edison.jpg" alt="">
                                        </div>
                                        <div class="testimonial-info">
                                            <h5 class="name">Thomas Alva Edison</h5>
                                            <p>-American inventor</p>
                                        </div>
                                        <div class="testimonial-content">
                                            <p>Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Testimonials END -->

                    <!-- Recent News -->
                    <div class="section-area section-sp2">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 heading-bx left">
                                    <h2 class="title-head">Recent <span>Events</span></h2>

                                </div>
                            </div>
                            <div class="recent-news-carousel owl-carousel owl-btn-1 col-12 p-lr0">
                                <div class="item">
                                    <div class="recent-news">
                                        <div class="action-box">
                                            <img src="assets/images/rangoli (1).jpg" alt="">
                                        </div>
                                        <div class="info-bx">

                                            <h5 class="post-title"><a href="blog-details.jsp">RANGOLI MAKING </a></h5>

                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="recent-news">
                                        <div class="action-box">
                                            <img src="assets/images/pharma.jpg" alt="">
                                        </div>
                                        <div class="info-bx">

                                            <h5 class="post-title"><a href="blog-details.jsp">WORLD PHAMACIST DAY</a></h5>

                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="recent-news">
                                        <div class="action-box">
                                            <img src="assets/images/life changing.jpeg" alt="">
                                        </div>
                                        <div class="info-bx">

                                            <h5 class="post-title"><a href="blog-details.jsp">A LIFE CHANGING SESSION</a></h5>

                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="recent-news">
                                        <div class="action-box">
                                            <img src="assets/images/dharohar.jpg" alt="">
                                        </div>
                                        <div class="info-bx">

                                            <h5 class="post-title"><a href="blog-details.jsp">DHAROHAR (College Fest)</a></h5>

                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="recent-news">
                                        <div class="action-box">
                                            <img src="assets/images/dharohar.jpg" alt="">
                                        </div>
                                        <div class="info-bx">

                                            <h5 class="post-title"><a href="blog-details.jsp">TECHFEST (Technical Event)</a></h5>

                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="recent-news">
                                        <div class="action-box">
                                            <img src="assets/images/rangoli (1).jpg" alt="">
                                        </div>
                                        <div class="info-bx">

                                            <h5 class="post-title"><a href="blog-details.jsp">TECHNOPARV</a></h5>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Recent News End -->

                </div>
                <!-- contact area END -->
            </div>
            <!-- Content END-->
            <!-- Footer ==== -->
            <footer>
                <div class="footer-top">
                    <div class="pt-exebar">
                        <div class="container">
                            <div class="d-flex align-items-stretch">
                                <div class="pt-logo mr-auto">
                                    <a href="index.jsp"><img src="assets/images/logo-white.png" alt=""/></a>
                                </div>
                                <div class="pt-social-link">
                                    <ul class="list-inline m-a0">
                                        <li><a href="#" class="btn-link"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#" class="btn-link"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#" class="btn-link"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#" class="btn-link"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                                <div class="pt-btn-join">
                                    <a href="#" class="btn ">Join Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4 col-md-12 col-sm-12 footer-col-4">
                                <div class="widget">
                                    <h5 class="footer-title">Sign Up For A Newsletter</h5>
                                    <p class="text-capitalize m-b20">Weekly Breaking news analysis and cutting edge advices on job searching.</p>
                                    <div class="subscribe-form m-b20">
                                        <form class="subscription-form" action="http://educhamp.themetrades.com/demo/assets/script/mailchamp.php" method="post">
                                            <div class="ajax-message"></div>
                                            <div class="input-group">
                                                <input name="email" required="required"  class="form-control" placeholder="Your Email Address" type="email">
                                                <span class="input-group-btn">
                                                    <button name="submit" value="Submit" type="submit" class="btn"><i class="fa fa-arrow-right"></i></button>
                                                </span> 
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-lg-5 col-md-7 col-sm-12">
                                <div class="row">
                                    <div class="col-4 col-lg-4 col-md-4 col-sm-4">
                                        <div class="widget footer_widget">
                                            <h5 class="footer-title">Company</h5>
                                            <ul>
                                                <li><a href="index.jsp">Home</a></li>
                                                <li><a href="about-1.jsp">About</a></li>


                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-4 col-lg-4 col-md-4 col-sm-4">
                                        <div class="widget footer_widget">
                                            <h5 class="footer-title">Get In Touch</h5>
                                            <ul>

                                                <li><a href="event.jsp">Event</a></li>
                                                <li><a href="contact-1.jsp">Contact Us</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-4 col-lg-4 col-md-4 col-sm-4">
                                        <div class="widget footer_widget">
                                            <h5 class="footer-title">Courses</h5>
                                            <ul>
                                                <li><a href="courses.jsp">Courses</a></li>
                                                <li><a href="faq-1.jsp">FAQs</a></li>


                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-lg-3 col-md-5 col-sm-12 footer-col-4">
                                <div class="widget widget_gallery gallery-grid-4">
                                    <h5 class="footer-title">Our Gallery</h5>
                                    <ul class="magnific-image">
                                        <li><a href="assets/images/gallery/pic1.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic1.jpg" alt=""></a></li>
                                        <li><a href="assets/images/gallery/pic2.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic2.jpg" alt=""></a></li>
                                        <li><a href="assets/images/gallery/pic3.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic3.jpg" alt=""></a></li>
                                        <li><a href="assets/images/gallery/pic4.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic4.jpg" alt=""></a></li>
                                        <li><a href="assets/images/gallery/pic5.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic5.jpg" alt=""></a></li>
                                        <li><a href="assets/images/gallery/pic6.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic6.jpg" alt=""></a></li>
                                        <li><a href="assets/images/gallery/pic7.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic7.jpg" alt=""></a></li>
                                        <li><a href="assets/images/gallery/pic8.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic8.jpg" alt=""></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-bottom">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 text-center"> <a target="_blank" href="#">** DEEPAK PATEL :: B.Tech :: CSE :: 1638410011 :: Final Year Project :: 2020 :: EduSHEAT **</a></div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- Footer END ==== -->
            <button class="back-to-top fa fa-chevron-up" ></button>
        </div>

        <!-- External JavaScripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/vendors/bootstrap/js/popper.min.js"></script>
        <script src="assets/vendors/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
        <script src="assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
        <script src="assets/vendors/magnific-popup/magnific-popup.js"></script>
        <script src="assets/vendors/counter/waypoints-min.js"></script>
        <script src="assets/vendors/counter/counterup.min.js"></script>
        <script src="assets/vendors/imagesloaded/imagesloaded.js"></script>
        <script src="assets/vendors/masonry/masonry.js"></script>
        <script src="assets/vendors/masonry/filter.js"></script>
        <script src="assets/vendors/owl-carousel/owl.carousel.js"></script>
        <script src="assets/js/functions.js"></script>
        <script src="assets/js/contact.js"></script>
        <script src='assets/vendors/switcher/switcher.js'></script>
        <!-- Revolution JavaScripts Files -->
        <script src="assets/vendors/revolution/js/jquery.themepunch.tools.min.js"></script>
        <script src="assets/vendors/revolution/js/jquery.themepunch.revolution.min.js"></script>
        <!-- Slider revolution 5.0 Extensions  (Load Extensions only on Local File Systems !  The following part can be removed on Server for On Demand Loading) -->
        <script src="assets/vendors/revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script src="assets/vendors/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
        <script src="assets/vendors/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
        <script src="assets/vendors/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script src="assets/vendors/revolution/js/extensions/revolution.extension.migration.min.js"></script>
        <script src="assets/vendors/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script src="assets/vendors/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
        <script src="assets/vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script src="assets/vendors/revolution/js/extensions/revolution.extension.video.min.js"></script>
        <script>




                            jQuery(document).ready(function () {





                                $("#modalPush").modal('show');






                                var ttrevapi;
                                var tpj = jQuery;
                                if (tpj("#rev_slider_486_1").revolution == undefined) {
                                    revslider_showDoubleJqueryError("#rev_slider_486_1");
                                } else {
                                    ttrevapi = tpj("#rev_slider_486_1").show().revolution({
                                        sliderType: "standard",
                                        jsFileLocation: "assets/vendors/revolution/js/",
                                        sliderLayout: "fullwidth",
                                        dottedOverlay: "none",
                                        delay: 9000,
                                        navigation: {
                                            keyboardNavigation: "on",
                                            keyboard_direction: "horizontal",
                                            mouseScrollNavigation: "off",
                                            mouseScrollReverse: "default",
                                            onHoverStop: "on",
                                            touch: {
                                                touchenabled: "on",
                                                swipe_threshold: 75,
                                                swipe_min_touches: 1,
                                                swipe_direction: "horizontal",
                                                drag_block_vertical: false
                                            }
                                            ,
                                            arrows: {
                                                style: "uranus",
                                                enable: true,
                                                hide_onmobile: false,
                                                hide_onleave: false,
                                                tmp: '',
                                                left: {
                                                    h_align: "left",
                                                    v_align: "center",
                                                    h_offset: 10,
                                                    v_offset: 0
                                                },
                                                right: {
                                                    h_align: "right",
                                                    v_align: "center",
                                                    h_offset: 10,
                                                    v_offset: 0
                                                }
                                            },

                                        },
                                        viewPort: {
                                            enable: true,
                                            outof: "pause",
                                            visible_area: "80%",
                                            presize: false
                                        },
                                        responsiveLevels: [1240, 1024, 778, 480],
                                        visibilityLevels: [1240, 1024, 778, 480],
                                        gridwidth: [1240, 1024, 778, 480],
                                        gridheight: [768, 600, 600, 600],
                                        lazyType: "none",
                                        parallax: {
                                            type: "scroll",
                                            origo: "enterpoint",
                                            speed: 400,
                                            levels: [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 46, 47, 48, 49, 50, 55],
                                            type: "scroll",
                                        },
                                        shadow: 0,
                                        spinner: "off",
                                        stopLoop: "off",
                                        stopAfterLoops: -1,
                                        stopAtSlide: -1,
                                        shuffle: "off",
                                        autoHeight: "off",
                                        hideThumbsOnMobile: "off",
                                        hideSliderAtLimit: 0,
                                        hideCaptionAtLimit: 0,
                                        hideAllCaptionAtLilmit: 0,
                                        debugMode: false,
                                        fallbacks: {
                                            simplifyAll: "off",
                                            nextSlideOnWindowFocus: "off",
                                            disableFocusListener: false,
                                        }
                                    });
                                }
                            });
        </script>
    </body>

</html>
