<%@ Page Title="" Language="C#" MasterPageFile="~/StayelloDesign/UserMaster.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="StayelloDesign_index" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--main body--%>
   <style>
       .stayello {
    margin-top: 8%;
}

@media (min-width:100px) and (max-width:500px) {

    .stayello {
        margin-top: 9%;
    }
}
   </style>

    <div class="container-fluid">
        <div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-4 col-xs-6 col-lg-6 col-md-3 pt-5 stayello">
                        <h2 class="text-center fontsay" style="font-family: 'aloja-ligh-regular'; text-align: center">It's time to say</h2>
                        <h2 class="text-center fontHello" style="font-family: 'aloja-ligh-regular'; color: #00ADEF;"><b>Hello</b></h2>
                        <h1 class="text-center fontSatello" style="font-family: 'aloja-ligh-regular'; color: #ffde00;"><b>STAYELLO</b></h1>
                        <h4 class="text-center textfontBold" style="padding-top: 30px">Lucknow's Best</h4>
                        <h2 class="text-center textfontBold">Student Housing | Co-Living Spaces</h2>
                    </div>
                    <div class="col-sm-6 col-lg-6 col-md-6" style="margin-top: 8%">
                        <%--<img src="infrastructure/img/1.jpeg" class="img-fluid mob-view" alt="Responsive image" style="width: 648px" />--%>
                        <!-- Start WOWSlider.com BODY section -->
                        <!-- add to the <body> of your page -->
                        <div id="wowslider-container1">
                            <div class="ws_images">
                                <ul>
                                    <li>
                                        <img src="infrastructure/slider/data1/images/2.jpg" alt="2" title="2" id="wows1_0" /></li>
                                    <li>
                                        <img src="infrastructure/slider/data1/images/3.jpg" alt="html5 slideshow" title="3" id="wows1_1" /></li>
                                    <li>
                                        <img src="infrastructure/slider/data1/images/4.jpg" alt="4" title="4" id="wows1_2" /></li>
                                </ul>
                            </div>
                            <div class="ws_bullets">
                                <div>
                                    <a href="#" title="2"><span>
                                        <img src="infrastructure/slider/data1/tooltips/2.jpg" alt="2" />1</span></a>
                                    <a href="#" title="3"><span>
                                        <img src="infrastructure/slider/data1/tooltips/3.jpg" alt="3" />2</span></a>
                                    <a href="#" title="4"><span>
                                        <img src="infrastructure/slider/data1/tooltips/4.jpg" alt="4" />3</span></a>
                                </div>
                            </div>
                            <div class="ws_script" style="position: absolute; left: -99%"></div>
                            <div class=""></div>
                        </div>
                        <script type="text/javascript" src="infrastructure/slider/engine1/wowslider.js"></script>
                        <script type="text/javascript" src="infrastructure/slider/engine1/script.js"></script>
                        <!-- End WOWSlider.com BODY section -->

                    </div>
                </div>
            </div>
            <br />

        </div>
        <div class="row " style="margin-right: 0px; margin-left: 0px;">
            <div class="col">
                <div class="y-us-head">
                    <div class="y-us-title">
                    </div>
                </div>
            </div>
        </div>

        <div id="gallerydiv" class="p-md-4 mx-md-4 text-center text-lg-left black z-depth-1">
            <div class="row d-flex justify-content-center" style="margin: 20px 0 50px 0;">

                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-3 col-lg-12 col-sm-6">
                            <h1 class="textfontBold" style="color: #00adef; text-align: center">SELECT YOUR OWN STAYELLO</h1>
                            <p class="text-center textfontBold" style="font-size: 25px">Explore our most loved accommodation and choose as per your needs...</p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-3 col-md-3">
                            <div class="item-box-blog">
                                <div class="item-box-blog-image">
                                    <figure>
                                        <a class="textstyle" href="amber.aspx">
                                            <img src="infrastructure/Updateimage/1.jpeg" style="height: 217px;" class="rooms-img  zoomnow img" alt="" />
                                        </a>
                                    </figure>
                                </div>
                                <div class="item-box-blog-body">

                                    <div class="item-box-blog-heading">
                                        <h6><a class="textstyle" href="amber.aspx">StayEllo-Amber (Women)</a><a href="https://www.google.com/maps/place/Stayello+-+Amber+Girls+PG%2FHostel/@26.8802921,80.9459649,17z/data=!3m1!4b1!4m5!3m4!1s0x399bfd0204a7b033:0xa2eba5d7bc403244!8m2!3d26.8802921!4d80.9481536" target="_blank" class="text-muted">
                                            <span class="location"></span><i class="fa fa-map-marker" style="font-size: 18px; color: blue"></i>
                                        </a></h6>
                                    </div>
                                    <div class="item-box-blog-text">
                                        <p>
                                            P.G. In Kapoorthala
                                        </p>
                                        <p><i class="fa fa-money-bill-wave"></i><b>Rent starts at:</b> <a style="color: #00adef; font-size: 15px">6000 &#8377;</a><span style="text-decoration: line-through; font-size: 12px; color: #878787;">8000&#8377;</span></p>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <a href="Visitamber.aspx">
                                                <button type="button" class="btn btn-primary btn-block">Schedule</button></a>
                                        </div>
                                        <div class="col-sm-6">
                                            <a href="bookamber.aspx">
                                                <button type="button" class="btn btn-primary btn-block form-btn-space">Book</button></a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="col-lg-3 col-md-3">
                            <div class="item-box-blog">
                                <div class="item-box-blog-image">
                                    <figure>
                                        <a class="textstyle" href="aura.aspx">
                                            <img src="infrastructure/Updateimage/15.jpeg" style="height: 217px;" class="rooms-img zoomnow" />
                                        </a>
                                    </figure>
                                </div>
                                <div class="item-box-blog-body">
                                    <div class="item-box-blog-heading">
                                        <h6><a class="textstyle" href="aura.aspx">StayEllo-Aura (Coliving)</a>
                                            <a href="https://www.google.com/maps/place/Stayello+-+Aura+Boy's+PG%2FHostel/@26.8834531,80.9386815,17z/data=!3m1!4b1!4m5!3m4!1s0x3999575eeb3dcd37:0x62a505053a8692e!8m2!3d26.8834483!4d80.9408702" target="_blank" class="text-muted">
                                                <span class="location"></span><i class="fa fa-map-marker" style="font-size: 18px; color: blue; margin-left: 10px"></i>
                                            </a>
                                        </h6>
                                    </div>
                                    <div class="item-box-blog-text">
                                        <p>
                                            P.G. In Aliganj
                                        </p>
                                    </div>
                                    <div class="item-box-blog-text">
                                        <p><i class="fa fa-money-bill-wave"></i><b>Rent starts at:</b> <a style="color: #00adef; font-size: 15px">8500 &#8377;</a><span style="text-decoration: line-through; font-size: 12px; color: #878787;">10500&#8377;</span></p>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <a href="Visitaura.aspx">
                                                <button type="button" class="btn btn-primary btn-block">Schedule</button></a>
                                        </div>
                                        <div class="col-sm-6">
                                            <a href="bookaura.aspx">
                                                <button type="button" class="btn btn-primary btn-block form-btn-space">Book</button></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3">
                            <div class="item-box-blog">
                                <div class="item-box-blog-image">
                                    <figure>
                                        <a class="textstyle" href="amaze.aspx">
                                            <img src="infrastructure/Updateimage/5.jpeg" style="height: 217px;" class="rooms-img zoomnow" />
                                        </a>
                                    </figure>
                                </div>
                                <div class="item-box-blog-body">

                                    <div class="item-box-blog-heading">
                                        <h6><a class="textstyle" href="amaze.aspx">StayEllo-Amaze (Men)</a>  <a href="https://www.google.com/maps/place/Stayello+-+Amaze+Boys+PG%2FHostel/@26.8773728,80.9467969,17z/data=!3m1!4b1!4m5!3m4!1s0x399bfdd7b52a83eb:0xd8c9179a6de57293!8m2!3d26.877368!4d80.9489856" target="_blank" class="text-muted">
                                            <span class="location"></span><i class="fa fa-map-marker" style="font-size: 18px; margin-left: 10px; color: blue"></i></a></h6>
                                    </div>
                                    <div class="item-box-blog-text">
                                        <p>
                                            P.G. In Bada Chandganj 
                                        </p>
                                    </div>
                                    <div class="item-box-blog-text">
                                        <p><i class="fa fa-money-bill-wave"></i><b>Rent starts at:</b> <a style="color: #00adef; font-size: 15px">5500 &#8377;</a><span style="text-decoration: line-through; font-size: 12px; color: #878787;">7500 &#8377;</span></p>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <a href="Visitamaze.aspx">
                                                <button type="button" class="btn btn-primary btn-block">Schedule</button></a>
                                        </div>
                                        <div class="col-sm-6">
                                            <a href="bookamaze.aspx">
                                                <button type="button" class="btn btn-primary btn-block form-btn-space">Book</button></a>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3">
                            <div class="item-box-blog">
                                <div class="item-box-blog-image">
                                    <figure>
                                        <a class="textstyle" href="angel.aspx">
                                            <img src="infrastructure/Updateimage/3.jpeg" style="height: 217px;" class="rooms-img zoomnow" />
                                        </a>
                                    </figure>
                                </div>
                                <div class="item-box-blog-body">

                                    <div class="item-box-blog-heading">
                                        <h6><a class="textstyle" href="angel.aspx">StayEllo-Angel (Women)</a>   <a href="https://www.google.com/maps/place/Stayello+-+Angel+Girls+PG%2FHostel/@26.8839041,80.9454085,17z/data=!3m1!4b1!4m5!3m4!1s0x399bfd0204a7b033:0xa2eba5d7bc403244!8m2!3d26.8802921!4d80.9481536" target="_blank" class="text-muted"><span class="location"></span><i class="fa fa-map-marker" style="font-size: 18px; color: blue; margin-left: 10px"></i>
                                        </a></h6>
                                    </div>
                                    <div class="item-box-blog-text">
                                        <p>
                                            P.G. In Kapoorthala
                                        </p>
                                    </div>
                                    <div class="item-box-blog-text">
                                        <p><i class="fa fa-money-bill-wave"></i><b>Rent starts at:</b> <span style="color: #00adef; font-size: 15px">6000 &#8377;</span><span style="text-decoration: line-through; font-size: 12px; color: #878787;">8000&#8377;</span></p>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <a href="Visitangel.aspx">
                                                <button type="button" class="btn btn-primary btn-block">Schedule</button></a>
                                        </div>
                                        <div class="col-sm-6">
                                            <a href="bookangel.aspx">
                                                <button type="button" class="btn btn-primary btn-block form-btn-space">Book</button>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container ">
        <div class="row">
            <div class="col-sm-12 col-lg-12 col-xs-12 col-md-12">
                <div class="textboxBorder">
                    <h1 class=" textfontBold " style="color: #00adef; text-align: center">LETS BEAT COVID 19 TOGETHER.</h1>
                    <h6 class="text-center textfontBold" style="font-size: 15px; margin-bottom: 15px;">We are responsible for your safety.</h6>
                </div>

                <div class="rows  tabsize " style="margin-left: -7%">
                    <div class="column">
                        <div>
                            <p class="imageset">
                                <img src="infrastructure/img/smallicon/Sanitizationofallproperties.png" class="imgwidth" style="width: 48%; margin-left: 6%; margin-top: 10%;" />
                            </p>
                            <p class="tips fontsize textfontRegular"><b class="textfontBold">Sanitization</b> of all properties.</p>
                        </div>
                    </div>
                    <div class="column">
                        <div>
                            <p class="imageset">
                                <img src="infrastructure/img/smallicon/Touch%20free%20sanitizers.png" alt="" class="imgwidth" />

                            </p>
                            <p class="tips fontsize textfontRegular"><b class="textfontBold">Touch free sanitizers</b> in all properties.</p>
                        </div>
                    </div>
                    <div class="column">

                        <div>
                            <p class="imageset">
                                <img src="infrastructure/img/smallicon/who.png" alt="" class="imgwidth" />

                            </p>
                            <p class="tips fontsize textfontRegular">Adherence to <b class="textfontBold">WHO guidelines</b> for hygiene.</p>
                        </div>
                    </div>
                </div>

                <div class="rows  tabsize " style="margin-left: -7%">
                    <div class="column">
                        <div>
                            <p class="imageset">

                                <img src="infrastructure/img/smallicon/daily%20temprature.png" class="imgwidth" />
                            </p>

                            <p class="tips fontsize textfontRegular"><b class="textfontBold">Daily Temperature</b> check.</p>
                        </div>
                    </div>
                    <div class="column">
                        <div>
                            <p class="imageset">

                                <img src="infrastructure/img/smallicon/social%20distancing.png" alt="" class="imgwidth" />
                            </p>
                            <p class="tips fontsize textfontRegular"><b class="textfontBold">Social Distancing</b> in all common area.</p>
                        </div>
                    </div>
                    <div class="column">

                        <div>
                            <p class="imageset">

                                <img src="infrastructure/img/smallicon/staff_monitoring.png" alt="" class="imgwidth" />
                            </p>
                            <p class="tips fontsize textfontRegular"><b class="textfontBold">Strict Monitoring </b>Of Staff.</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>



    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-6 col-lg-6 col-md-2">
                <div class="row">
                    <div class="col-sm-2 col-lg-3 col-md-2">
                    </div>
                    <div class="col-sm-8 col-lg-8 col-md-6" style="margin-left: -6%;">
                        <img src="infrastructure/img/OATH.png" class="img-fluid mx-auto d-block" style="margin-top: 2%;" />
                        <p class="textfontMedium  content-desktop" style="margin-top: -5%; margin-left: 5%; font-size: 14px;">
                            WE KNOW WHAT YOU ARE LOOKING  FOR WHEN  WE ARE MOVING OUT OF YOUR HOME. THERE FOR  WE MADE THESE THINGS OUR BREATH OF LIFE 
                        </p>

                        <%-- <img src="infrastructure/img/promise.jpg" class="img-fluid mx-auto d-block">--%>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-6 col-md-6 sizerow" style="margin-left: -8%;">
                <div class="rows  tabsize ">
                    <div class="column">
                        <div>
                            <p class="imageset">

                                <img src="infrastructure/icon/yummy-food.png" alt="" class="imgwidth" />
                            </p>
                            <p class="tips fontsize textfontRegular"><b class="textfontBold">yummy-food</b> </p>
                        </div>
                    </div>
                    <div class="column">
                        <div>
                            <p class="imageset">
                                <img src="infrastructure/icon/free-maintenance.png" alt="" class="imgwidth" />

                            </p>
                            <p class="tips fontsize textfontRegular"><b class="textfontBold">free-maintenance</b></p>
                        </div>
                    </div>
                    <div class="column">

                        <div>
                            <p class="imageset">
                                <img src="infrastructure/icon/regular-housekeeping.png" alt="" class="imgwidth" />

                            </p>
                            <p class="tips fontsize textfontRegular"><b class="textfontBold">regular-housekeeping </b></p>
                        </div>
                    </div>
                </div>

                <div class="rows  tabsize ">
                    <div class="column">
                        <div>
                            <p class="imageset">

                                <img src="infrastructure/icon/hassle-free-stay.png" alt="" class="imgwidth" />
                            </p>
                            <p class="tips fontsize textfontRegular"><b class="textfontBold">hassle-free-stay</b></p>
                        </div>
                    </div>
                    <div class="column">
                        <div>
                            <p class="imageset">
                                <img src="infrastructure/icon/caring-staff.png" alt="" class="imgwidth" />

                            </p>
                            <p class="tips fontsize textfontRegular"><b class="textfontBold">caring-staff</b></p>
                        </div>
                    </div>
                    <div class="column">

                        <div>
                            <p class="imageset">
                                <img src="infrastructure/icon/fun-zotribe.png" alt="" class="imgwidth" />

                            </p>
                            <p class="tips fontsize textfontRegular"><b class="textfontBold">fun-zotribe </b></p>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>
    <br />

    <style>
        .circleBorder {
            background-color: #fff;
            border: 1px solid #00adef;
            height: 100px;
            border-radius: 50%;
            -moz-border-radius: 50%;
            -webkit-border-radius: 50%;
            width: 100px;
        }
    </style>

    <style>
        .textsize {
            font-size: 13px;
        }

        @media all and (min-width: 480px) {
            .deskContent {
                display: block;
            }

            .phoneContent {
                display: none;
            }
        }

        @media all and (max-width: 479px) {
            .deskContent {
                display: none;
            }

            .phoneContent {
                display: block;
            }
        }
    </style>

    <div class="container-fluid deskContent">
        <div class="y-us-section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12 col-lg-12 col-md-12">
                        <div style="margin-left: 6%">
                            <div>
                                <h1 class="textstyle textfontBold" style="margin-left: 0%">CHOOSE US FOR</h1>
                                <h6 class="text-center textfontBold" style="font-size: 25px; margin-left: 0%">Few more reasons to love us</h6>
                                <span class="y-us-title-border"></span>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row" style="margin-left: 17%">
                    <div class="col-lg-12 col-md-12">
                        <div class="rows ">
                            <div class="columnicon">
                                <div>
                                    <p class="imageset">

                                        <img src="infrastructure/img/cardimgfull.png" alt="" class="imgwidth" />
                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">Fully Furnished Room</b> </p>
                                </div>
                            </div>
                            <div class="columnicon">
                                <div>
                                    <p class="imageset">
                                        <img src="infrastructure/img/housekeep.png" alt="" class="imgwidth" />

                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">Professional Housekeeping</b></p>
                                </div>
                            </div>
                            <div class="columnicon">

                                <div>
                                    <p class="imageset">
                                        <img src="infrastructure/img/cardimgfood.png" alt="" class="imgwidth" />

                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">Buffet Meal</b></p>
                                </div>
                            </div>
                            <div class="columnicon">

                                <div>
                                    <p class="imageset">
                                        <img src="infrastructure/img/caretakerr.png" alt="" class="imgwidth" />

                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">24x7 Caretakers</b></p>
                                </div>
                            </div>
                        </div>
                        <div class="rows ">
                            <div class="columnicon">
                                <div>
                                    <p class="imageset">

                                        <img src="infrastructure/img/cardimgwifi.png" alt="" class="imgwidth" />
                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">High-Speed Wifi</b> </p>
                                </div>
                            </div>
                            <div class="columnicon">
                                <div>
                                    <p class="imageset">
                                        <img src="infrastructure/img/freemaintence.png" alt="" class="imgwidth" />

                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">Free Maintenance</b></p>
                                </div>
                            </div>
                            <div class="columnicon">

                                <div>
                                    <p class="imageset">
                                        <img src="infrastructure/img/cardimgsafety.png" alt="" class="imgwidth" />

                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">CCTV Secublue & Biometric Entry</b></p>
                                </div>
                            </div>
                            <div class="columnicon">

                                <div>
                                    <p class="imageset">
                                        <img src="infrastructure/img/cardimgemergency.png" alt="" class="imgwidth" />

                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">Quick Response Team</b></p>
                                </div>
                            </div>
                        </div>
                        <div class="rows ">
                            <div class="columnicon">
                                <div>
                                    <p class="imageset">

                                        <img src="infrastructure/img/cardimgbrokerage.png" alt="" class="imgwidth" />
                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">No Brokerage</b> </p>
                                </div>
                            </div>
                            <div class="columnicon">
                                <div>
                                    <p class="imageset">
                                        <img src="infrastructure/img/game.png" alt="" class="imgwidth" />

                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">Board Games</b></p>
                                </div>
                            </div>
                            <div class="columnicon">

                                <div>
                                    <p class="imageset">
                                        <img src="infrastructure/img/community.png" alt="" class="imgwidth" />

                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">Community building</b></p>
                                </div>
                            </div>

                            <div class="columnicon">

                                <div>
                                    <p class="imageset">
                                        <img src="infrastructure/img/cardimgplug.png" alt="" class="imgwidth" />

                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">Power Backup</b></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid phoneContent">
        <div class="y-us-section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12 col-lg-12 col-md-12">
                        <div class="">
                            <div>
                                <h1 class="textstyle textfontBold" style="margin-left: -10%">CHOOSE US FOR</h1>
                                <h6 class="text-center textfontBold" style="font-size: 25px; margin-left: -10%">Few more reasons to love us</h6>
                                <span class="y-us-title-border"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <div class="rows ">
                            <div class="columniconmobile">
                                <div>
                                    <p class="imageset">

                                        <img src="infrastructure/img/cardimgfull.png" alt="" class="imgwidth" />
                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">Fully Furnished Room</b> </p>
                                </div>
                            </div>
                            <div class="columniconmobile">
                                <div>
                                    <p class="imageset">
                                        <img src="infrastructure/img/housekeep.png" alt="" class="imgwidth" />

                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">Professional Housekeeping</b></p>
                                </div>
                            </div>
                            <div class="columniconmobile">

                                <div>
                                    <p class="imageset">
                                        <img src="infrastructure/img/cardimgfood.png" alt="" class="imgwidth" />

                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">Buffet Meal</b></p>
                                </div>
                            </div>

                        </div>
                        <div class="rows ">
                            <div class="columniconmobile">

                                <div>
                                    <p class="imageset">
                                        <img src="infrastructure/img/caretakerr.png" alt="" class="imgwidth" />

                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">24x7 Caretakers</b></p>
                                </div>
                            </div>
                            <div class="columniconmobile">
                                <div>
                                    <p class="imageset">

                                        <img src="infrastructure/img/cardimgwifi.png" alt="" class="imgwidth" />
                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">High-Speed Wifi</b> </p>
                                </div>
                            </div>
                            <div class="columniconmobile">
                                <div>
                                    <p class="imageset">
                                        <img src="infrastructure/img/freemaintence.png" alt="" class="imgwidth" />

                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">Free Maintenance</b></p>
                                </div>
                            </div>

                        </div>
                        <div class="rows ">
                            <div class="columniconmobile">

                                <div>
                                    <p class="imageset">
                                        <img src="infrastructure/img/cardimgsafety.png" alt="" class="imgwidth" />

                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">CCTV Secublue & Biometric Entry</b></p>
                                </div>
                            </div>
                            <div class="columniconmobile">

                                <div>
                                    <p class="imageset">
                                        <img src="infrastructure/img/cardimgemergency.png" alt="" class="imgwidth" />

                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">Quick Response Team</b></p>
                                </div>
                            </div>
                            <div class="columniconmobile">
                                <div>
                                    <p class="imageset">

                                        <img src="infrastructure/img/cardimgbrokerage.png" alt="" class="imgwidth" />
                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">No Brokerage</b> </p>
                                </div>
                            </div>

                        </div>

                        <div class="rows ">
                            <div class="columniconmobile">
                                <div>
                                    <p class="imageset">
                                        <img src="infrastructure/img/cardimgclean.png" alt="" class="imgwidth" />

                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">Board Games</b></p>
                                </div>
                            </div>
                            <div class="columniconmobile">

                                <div>
                                    <p class="imageset">
                                        <img src="infrastructure/img/community.png" alt="" class="imgwidth" />

                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">Community building</b></p>
                                </div>
                            </div>
                            <div class="columniconmobile">

                                <div>
                                    <p class="imageset">
                                        <img src="infrastructure/img/cardimgplug.png" alt="" class="imgwidth" />

                                    </p>
                                    <p class="tips fontsize textfontRegular"><b class="textfontBold">Power Backup</b></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <div id="desktop-testimonial" style="background-color: #ffde00; height: 350px;">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <h1 class="mt-2 mb-2 text-center textfontbold">Customer <b>Testimonials</b></h1>

                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                        </ol>

                        <div class="carousel-inner">
                            <div class="item carousel-item active">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="testimonial">
                                            <p>
                                                Stayello has given me a great experience of comfortable and homely stay.
Whatever stayello promises are deliveblue and I am really happy and would always suggest everybody who is just about to
shift Lucknow and looking for decent accommodation.
                                            </p>
                                        </div>
                                        <div class="media">
                                            <div class="media-left d-flex mr-3">
                                                <img src="infrastructure/img/Testimonials/Arjit%20Seth.jpeg" />
                                                <%-- <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(20).jpg" alt="">--%>
                                            </div>
                                            <div class="media-body">
                                                <div class="overview">
                                                    <div class="name"><b>Arjit Seth</b></div>
                                                    <div class="details">job</div>
                                                    <div class="star-rating">
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="testimonial">
                                            <p>
                                                My parent’s main concern was my security and safety when I was leaving for Lucknow to join coaching.
Their feet got completely vanished when they visited the campus and met the very sincere staff of Stayello.
The high standard of security made me feel secure all the time and my family at ease without any worry.
                                            </p>
                                        </div>
                                        <div class="media">
                                            <div class="media-left d-flex mr-3">

                                                <img src="infrastructure/img/Testimonials/Divya.jpeg" alt="" />
                                                <%-- <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(9).jpg" alt="">--%>
                                            </div>
                                            <div class="media-body">
                                                <div class="overview">
                                                    <div class="name"><b>Divya</b></div>
                                                    <div class="details">Job</div>
                                                    <div class="star-rating">
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item carousel-item">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="testimonial">
                                            <p>
                                                Whenever any students ask for suggestions or assistance for searching
and selecting nice accommodation near our coaching,
only one name comes to my mind and that is Stayello.
The hostels run by a team of professionals and very caring staff.
                                            </p>
                                        </div>
                                        <div class="media">
                                            <div class="media-left d-flex mr-3">
                                                <img src="infrastructure/img/Testimonials/Sonali.jpeg" />
                                                <%--  <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(20).jpg" alt="">--%>
                                            </div>
                                            <div class="media-body">
                                                <div class="overview">
                                                    <div class="name"><b>Sonali</b></div>
                                                    <div class="details">Student</div>
                                                    <div class="star-rating">
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="testimonial">
                                            <p>
                                                I had been in Lucknow for many years and had stayed in many hostels.
But remained unhappy and unsatisfied. Luckily during my last few months in the city,
I decided to shift to Stayello and that was my last accommodation and I never
thought again of changing my hostel until I finally left for my college in Delhi.
                                            </p>
                                        </div>
                                        <div class="media">
                                            <div class="media-left d-flex mr-3">
                                                <img src="infrastructure/img/Testimonials/Prince.jpeg" />
                                                <%--  <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(9).jpg" alt="">--%>
                                            </div>
                                            <div class="media-body">
                                                <div class="overview">
                                                    <div class="name"><b>Prince</b></div>
                                                    <div class="details">Student</div>
                                                    <div class="star-rating">
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <a class="carousel-control left carousel-control-prev" href="#myCarousel" data-slide="prev">
                            <i class="fa fa-chevron-left"></i>
                        </a>
                        <a class="carousel-control right carousel-control-next" href="#myCarousel" data-slide="next">
                            <i class="fa fa-chevron-right"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div id="mobile-testimonial" style="background-color: #ffde00; height: 410px;">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div id="Div1" class="carousel slide" data-ride="carousel">
                        <h3 class="mt-2 mb-2 text-center">Customer <b>Testimonials</b></h3>
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                            <li data-target="#myCarousel" data-slide-to="3"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item carousel-item active">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="testimonial">
                                            <p>
                                                Stayello has given me a great experience of comfortable and homely stay.
whatever stayello promises are deliveblue and I am really happy and would always suggest
everybody who is just about to shift Lucknow and looking for decent accommodation.
                                            </p>
                                        </div>
                                        <div class="media">
                                            <div class="media-left d-flex mr-3">
                                                <img src="infrastructure/img/Testimonials/Arjit%20Seth.jpeg" />
                                            </div>
                                            <div class="media-body">
                                                <div class="overview">
                                                    <div class="name"><b>Arjit Seth</b></div>
                                                    <div class="details">Student</div>
                                                    <div class="star-rating">
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item carousel-item">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="testimonial">
                                            <p>
                                                My parent’s main concern was my security and safety when I was leaving for Lucknow to join coaching.
their feet got completely vanished when they visited the campus and met the very sincere staff of Stayello.
The high standard of security made me feel secure all the time and my family at ease without any worry.
                                            </p>
                                        </div>
                                        <div class="media">
                                            <div class="media-left d-flex mr-3">
                                                <img src="infrastructure/img/Testimonials/Divya.jpeg" alt="" />

                                                <%-- <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(9).jpg" alt="">--%>
                                            </div>
                                            <div class="media-body">
                                                <div class="overview">
                                                    <div class="name"><b>Divya</b></div>
                                                    <div class="details">Student</div>
                                                    <div class="star-rating">
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item carousel-item">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="testimonial">
                                            <p>
                                                Whenever any students ask for suggestions or assistance for searching and selecting nice accommodation near our coaching,
only one name comes to my mind and that is Stayello. The hostels run by a team of professionals and very caring staff.
                                            </p>
                                        </div>
                                        <div class="media">
                                            <div class="media-left d-flex mr-3">
                                                <img src="infrastructure/img/Testimonials/Sonali.jpeg" />
                                            </div>
                                            <div class="media-body">
                                                <div class="overview">
                                                    <div class="name"><b>Sonali</b></div>
                                                    <div class="details">Student</div>
                                                    <div class="star-rating">
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item carousel-item">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="testimonial">
                                            <p>
                                                I had been in Lucknow for many years and had stayed in many hostels. But remained unhappy and unsatisfied. Luckily during my last few months in the city,
I decided to shift to Stayello and that was my last accommodation and I never thought again of changing my hostel until I finally left for my college in Delhi
                                            </p>
                                        </div>
                                        <div class="media">
                                            <div class="media-left d-flex mr-3">
                                                <img src="infrastructure/img/Testimonials/Prince.jpeg" />
                                            </div>
                                            <div class="media-body">
                                                <div class="overview">
                                                    <div class="name"><b>Prince</b></div>
                                                    <div class="details">Job</div>
                                                    <div class="star-rating">
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>


    <div>
        <a href="#">
            <img src="infrastructure/img/appimg.jpg" class="mx-auto d-block img-fluid"></a>
    </div>
    </div>
    <%--End of Main body--%>
</asp:Content>

