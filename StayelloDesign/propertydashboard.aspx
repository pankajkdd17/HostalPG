<%@ Page Title="" Language="C#" MasterPageFile="~/StayelloDesign/UserMaster.master" AutoEventWireup="true" CodeFile="propertydashboard.aspx.cs" Inherits="Stayello_StayelloDesign_propertydashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--main body--%>
    <style>
        .stayellotext {
            margin-top: 8%;
        }

        @media (min-width:100px) and (max-width:500px) {

            .stayellotext {
                margin-top: 9%;
            }
        }
    </style>

    <div class="container-fluid">
        <div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-4 col-xs-6 col-lg-6 col-md-3 pt-5 stayellotext">
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
        <div class="container ">
            <div class="row">
                <div class="col-sm-12 col-lg-12 col-xs-12 col-md-12">
                    <div class="textboxBorder">
                        <h1 class="textstyle  textfontBold ">LETS BEAT COVID 19 TOGETHER.</h1>
                        <h6 class="text-center textfontBold" style="font-size: 15px; margin-bottom: 15px;">We are responsible for your safety.</h6>
                    </div>

                    <div class="rows  tabsize " style="margin-left: 3%">
                        <div class="column">
                            <div>
                                <p class="imageset">
                                    <img src="infrastructure/img/smallicon/Sanitizationofallproperties.png" class="imgwidth" style="width: 48%; margin-left: 6%;" />
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

                    <div class="rows  tabsize " style="margin-left: 3%">
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
                        <div class="col-sm-8 col-lg-8 col-md-6">
                            <img src="infrastructure/img/OATH.png" class="img-fluid mx-auto d-block" style="margin-top: 2%;" />
                            <p class="textfontMedium  content-desktop" style="margin-top: -5%; margin-left: 5%; font-size: 14px;">
                                WE KNOW WHAT YOU ARE LOOKING  FOR WHEN  WE ARE MOVING OUT OF YOUR HOME. THERE FOR  WE MADE THESE THINGS OUR BREATH OF LIFE 
                            </p>

                            <%-- <img src="infrastructure/img/promise.jpg" class="img-fluid mx-auto d-block">--%>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-6 col-md-6 sizerow">
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

        <%--<style>
        .txtBorder {
             border: 5px solid;
            color: #fddd01;
            border-radius: 25px;
            margin-bottom:2%;
            margin-left:30%;
            margin-right:31%;
        }

    </style>--%>

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


                    <div class="row" style="margin-left: 9%">
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
                                        <p class="tips fontsize textfontRegular"><b class="textfontBold">CCTV Secured & Biometric Entry</b></p>
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
                                            <img src="infrastructure/img/cardimglaundry.png" alt="" class="imgwidth" />

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
                                            <img src="infrastructure/img/cardimgclean.png" alt="" class="imgwidth" />

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
                                        <p class="tips fontsize textfontRegular"><b class="textfontBold">CCTV Secured & Biometric Entry</b></p>
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

        <div class="row">
            <!-- Left col -->
            <div class="col-md-12">
                <!-- MAP & BOX PANE -->
                <div class="box box-success">
                   
                    <!-- /.box-header -->
                    <div class="box-body no-padding">
                        <div class="row">
                            <div class="pad">
                                <div class="col-md-12">
                                    <!-- MAP & BOX PANE -->
                                    <div class="box box-danger ">
                                        <!-- /.box-header -->
                                        <div class="box-body no-padding  ">

                                            <asp:ListView ID="ListViewproperty" runat="server" DataKeyNames="p_id" OnItemCommand="ListViewproperty_ItemCommand">
                                                <ItemTemplate>

                                                    <div class="col-md-3">
                                                        <div class="pad">
                                                            <!-- MAP & BOX PANE -->
                                                            <div class="box box-success" style="width: 103%">
                                                               
                                                                <!-- /.box-header -->
                                                                <div class="box-body no-padding">

                                                                    <div class="row">
                                                                        <div class="col-md-3 col-sm-3">

                                                                            <!-- Map will be created here -->
                                                                            <div id="Div2" style="min-height: 222px; margin-top: -42px">
                                                                                <table>

                                                                                    <tr>
                                                                                        <td style="width: 25%; height: 25%; padding-right: 0%; padding-left: 0%;">

                                                                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("p_image1Path")%>' Height="225" Width="225" />

                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <b>
                                                                                                <asp:Label runat="server" ID="Label1" Text='<%#Eval("p_name") %>' ForeColor="#00adef"></asp:Label>
                                                                                                (<asp:Label runat="server" ID="lblgender" Text='<%#Eval("p_gender") %>' ForeColor="#000099"></asp:Label>)
                                                                                            </b>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <%--<asp:HyperLink ID="HyperLink1" Text='<%#Eval("p_address") %>' runat="server" Width="200">Address</asp:HyperLink>--%>
                                                                                            <asp:HyperLink ID="HyperLink2" href='<%#Eval("p_maplink") %>' runat="server"><i class="fa fa-map-marker" style="color:red;  font-size:20px"></i></asp:HyperLink>
                                                                                        </td>
                                                                                    </tr>

                                                                                    <tr>
                                                                                        <td><i class="fa fa-rupee" style="font-size: 20px"></i>:
                                                                <asp:Label runat="server" ID="lblpgm_name" Text='<%#Eval("p_discountprice") %>' ForeColor="#cc0000" Font-Size="25px"></asp:Label>

                                                                                            <asp:Label runat="server" ID="lblb_status" Text='<%#Eval("p_StartPrice") %>' ForeColor="green" Style="text-decoration-line: line-through;"></asp:Label>


                                                                                            <asp:Label runat="server" ID="lblb_amount" Text='<%#Eval("p_DicountPercent") %>' ForeColor="#00adef"></asp:Label>%

                                                                                        </td>
                                                                                    </tr>

                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:Button ID="btnPeople" runat="server" Text="Book Now" OnClick="btnBookNow_Click" class="btn btn-primary" />&nbsp  &nbsp  &nbsp &nbsp  &nbsp  &nbsp &nbsp  &nbsp  &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp  
                                                                           
                                                                                <asp:Button ID="btnScheduleNow" runat="server" Text="Room" OnClick="btnScheduleNow_Click" class="btn btn-primary" /></td>
                                                                                    </tr>
                                                                                    <br />
                                                                                </table>
                                                                            </div>

                                                                        </div>
                                                                        <!-- /.col -->
                                                                        <!-- /.col -->
                                                                    </div>

                                                                    <!-- /.row -->
                                                                </div>
                                                                <!-- /.box-body -->
                                                            </div>
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:ListView>

                                        </div>
                                        <!-- /.col -->
                                        <!-- /.col -->

                                        <!-- /.box-body -->
                                    </div>
                                </div>
                            </div>
                        </div>


                        <!-- /.row -->
                    </div>
                    <!-- /.box-body -->
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
Whatever stayello promises are delivered and I am really happy and would always suggest everybody who is just about to
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
whatever stayello promises are delivered and I am really happy and would always suggest
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

