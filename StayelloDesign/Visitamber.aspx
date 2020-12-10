<%@ Page Title="" Language="C#" MasterPageFile="~/StayelloDesign/UserMaster.master" AutoEventWireup="true" CodeFile="Visitamber.aspx.cs" Inherits="StayelloDesign_amber" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="infrastructure/css/datePicker.css" rel="stylesheet" />
    <script src="infrastructure/css/datePicker.js"></script>
    <!-- Bootstrap DatePicker -->
    <script type="text/javascript">
        $(function () {
            $('[id*=txtdate]').datepicker({
                changeMonth: true,
                changeYear: true,
                format: "dd/mm/yyyy",
                language: "tr",
                startDate: '-2d',
            });
        });
    </script>
    <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-7 stayellotext">

                <%--<img src="infrastructure/img/rooms/1.jpg" class="view-on-mob" alt="Responsive image"/>--%>
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">

                            <img class="d-block w-100 view-on-mob" src="infrastructure/Updateimage/1.jpeg" alt="Responsive image">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100 view-on-mob" src="infrastructure/Updateimage/5.jpeg" alt="Responsive image">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100 view-on-mob" src="infrastructure/Updateimage/14.jpeg" alt="Responsive image">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100 view-on-mob" src="infrastructure/Updateimage/11.jpeg" alt="Responsive image">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100 view-on-mob" src="infrastructure/Updateimage/13.jpeg" alt="Responsive image">
                        </div>

                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>


                <h2 class="text-muted text-center poster-heading">About Property</h2>
                <br />
                <div class="container">
                    <h4 class="text-center colored">Room Details</h4>
                    <div class="row">
                        <div class="col-sm-6 border-right-colored">
                            <h4 class="text-center colored">A.C</h4>
                            <h6 class="text-center">Single <b style="color: #ffde00;">|</b> Double Sharing <b style="color: #ffde00;">|</b> Triple Sharing<b style="color: #ffde00;">|</b> four Sharing </h6>
                            <p class="text-center">Starting from <b style="color: #00adef">11500 &#8377 </b><b style="color: #ffde00;">|</b> Starting from <b style="color: #00adef">9000 &#8377 </b><b style="color: #ffde00;">|</b> Starting from <b style="color: #00adef">8000 &#8377 </b><b style="color: #ffde00;">|</b> Starting from <b style="color: #00adef">7500 &#8377 </b></p>
                        </div>
                        <div class="col-sm-6">
                            <h4 class="text-center colored">NON A.C</h4>
                            <h6 class="text-center">Single<b style="color: #ffde00;">|</b> Double Sharing <b style="color: #ffde00;">|</b> Triple Sharing <b style="color: #ffde00;">|</b> four Sharing</h6>
                            <p class="text-center">Starting from <b style="color: #00adef">10000 &#8377 </b><b style="color: #ffde00;">|</b> Starting from <b style="color: #00adef">7500 &#8377 </b><b style="color: #ffde00;">|</b> Starting from <b style="color: #00adef">6500 &#8377 </b><b style="color: #ffde00;">|</b> Starting from <b style="color: #00adef">6000 &#8377 </b></p>
                        </div>
                    </div>
                    <h4 class="text-center colored">Monthly Rental Breakups</h4>
                    <div class="row">
                        <div class="col-sm-6 border-right-colored">
                            <h6 class="text-center">Fooding</h6>
                            <p class="text-center">All three meals and evening tea is included in monthly rent.</p>
                        </div>
                        <div class="col-sm-6">
                            <h6 class="text-center">Electricity</h6>
                            <p class="text-center">
                                Resident will be charged as per the meter reading.
10 &#8377;/ unit
                            </p>
                        </div>
                    </div>
                    <h4 class="text-center colored">Others</h4>
                    <div class="row">
                        <div class="col-sm-6 border-right-colored">
                            <h6 class="text-center">Near By</h6>
                            <ul class="text-center list">
                                <li>Mahendra Coaching 100 meter</li>
                            </ul>
                        </div>
                        <div class="col-sm-6">
                            <h6 class="text-center">Washroom /Kitchen</h6>
                            <ul class="text-center list">
                                <li>Kitchen Comman</li>
                                <li>Washroom Attached</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row p-0">
                    <div class="col-sm-12">
                        <div class="text-center">
                            <h2 class="text-muted text-center poster-heading">Amenities</h2>
                            <br />

                        </div>
                    </div>
                    <br />
                    <br />

                    <div class="container-fluid">
                        <div class="row">
                            <div class="columnnew">
                                <table class="amenity-card">
                                    <tr>
                                        <td>
                                            <section class="icon-cover">
                                                <img src="infrastructure/img/myicons/13.png" class="am-image">
                                            </section>
                                        </td>
                                        <td>
                                            <section class="includes">
                                                <p class="text-left " style="color: #007bff; font-size: 13px;">Fully Furnished Rooms</p>
                                            </section>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="columnnew">
                                <table class="amenity-card">
                                    <tr>
                                        <td>
                                            <section class="icon-cover">
                                                <img src="infrastructure/img/myicons/4.png" class="am-image">
                                            </section>
                                        </td>
                                        <td>
                                            <section class="includes">
                                                <p class="text-left " style="color: #007bff; font-size: 13px;">House Keeping</p>
                                            </section>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="columnnew">
                                <table class="amenity-card">
                                    <tr>
                                        <td>
                                            <section class="icon-cover">
                                                <img src="infrastructure/img/myicons/3.png" class="am-image">
                                            </section>
                                        </td>
                                        <td>
                                            <section class="includes">
                                                <p class="text-left" style="color: #007bff; font-size: 13px;">CCTV</p>
                                            </section>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="columnnew">
                                <table class="amenity-card">
                                    <tr>
                                        <td>
                                            <section class="icon-cover">
                                                <img src="infrastructure/img/myicons/10.png" class="am-image">
                                            </section>
                                        </td>
                                        <td>
                                            <section class="includes">
                                                <p class="text-left " style="color: #007bff; font-size: 13px;">Wifi</p>
                                            </section>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="columnnew">
                                <table class="amenity-card">
                                    <tr>
                                        <td>
                                            <section class="icon-cover">
                                                <img src="infrastructure/img/myicons/5.png" class="am-image">
                                            </section>
                                        </td>
                                        <td>
                                            <section class="includes">
                                                <p class="text-left" style="color: #007bff; font-size: 13px;">Parking (Include four wheeler)</p>

                                            </section>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="columnnew">
                                <table class="amenity-card">
                                    <tr>
                                        <td>
                                            <section class="icon-cover">
                                                <img src="infrastructure/img/myicons/9.png" class="am-image">
                                            </section>
                                        </td>
                                        <td>
                                            <section class="includes">
                                                <p class="text-left " style="color: #007bff; font-size: 13px;">Washing Machine</p>

                                            </section>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="columnnew">
                                <table class="amenity-card">
                                    <tr>
                                        <td>
                                            <section class="icon-cover">
                                                <img src="infrastructure/img/myicons/6.png" class="am-image">
                                            </section>
                                        </td>
                                        <td>
                                            <section class="includes">
                                                <p class="text-left" style="color: #007bff; font-size: 13px;">Power Backup</p>
                                            </section>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="columnnew">
                                <table class="amenity-card">
                                    <tr>
                                        <td>
                                            <section class="icon-cover">
                                                <img src="infrastructure/img/myicons/ro.png" class="am-image">
                                            </section>
                                        </td>
                                        <td>
                                            <section class="includes">
                                                <p class="text-left " style="color: #007bff; font-size: 13px;">Drinking Water</p>
                                            </section>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <br />
                    </div>
                </div>
            </div>
            <div class="col-sm-5" style="margin-top: 8%">
                <div class="fixed-calendar">
                    <h4 class="p-2" style="margin-bottom: 0px; color: #007bff">Stayello-Amber </h4>
                    <h6 class="p-2 text-small">Schedule Your Visit By Selecting Date</h6>
                    <hr />
                    <div id="calendar"></div>
                    <div id="visit-form" class="p-2">
                        <div class="tab-content">
                            <div id="tab1" class="tab-pane fade in active show">
                                <div class="form-group">
                                    <label for="vdate" class="color">Property Name</label>
                                    <asp:TextBox ID="txtProperty" runat="server" class="form-control" ForeColor="#3366ff" ReadOnly="true" Text="Stayello-Amber"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="vdate" class="color">Room Types</label>
                                    <asp:DropDownList ID="ddlroomtype" runat="server" class="form-control">
                                        <asp:ListItem Text="Single" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Double Sharing" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="Triple Sharing" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="Four Sharing" Value="4"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label for="vdate" class="color">Visiting Date / Booking Date</label>
                                    <asp:TextBox ID="txtdate" runat="server" class="form-control" placeholder="Enter Date (dd/mm/yyyy)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvCoName" runat="server" ForeColor="red" ControlToValidate="txtdate" Display="Dynamic" ErrorMessage="Please Select Date" ValidationGroup="signup"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label for="vdate" class="color">Visiting Time Slot</label>
                                    <asp:DropDownList ID="ddlVisitingTime" runat="server" class="form-control">
                                        <asp:ListItem Text="9am - 10am" Value="9am - 10am"></asp:ListItem>
                                        <asp:ListItem Text="10am - 11am" Value="10am - 11am"></asp:ListItem>
                                        <asp:ListItem Text="11am - 12pm" Value="11am - 12pm"></asp:ListItem>
                                        <asp:ListItem Text="12pm - 1pm" Value="12pm - 1pm"></asp:ListItem>
                                        <asp:ListItem Text="1pm - 2pm" Value="1pm - 2pm"></asp:ListItem>
                                        <asp:ListItem Text="2pm - 3pm" Value="2pm - 3pm"></asp:ListItem>
                                        <asp:ListItem Text="3pm - 4pm" Value="3pm - 4pm"></asp:ListItem>
                                        <asp:ListItem Text="4pm - 5pm" Value="4pm - 5pm"></asp:ListItem>
                                        <asp:ListItem Text="5pm - 6pm" Value="5pm - 6pm"></asp:ListItem>
                                        <asp:ListItem Text="6pm - 7pm" Value="6pm - 7pm"></asp:ListItem>
                                        <asp:ListItem Text="7pm - 8pm" Value="7pm - 8pm"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>


                                <div class="row" style="margin-left: 13%">
                                    <div class="columnbtn">
                                        <asp:Button ID="btnVisiting" runat="server" Text="Schedule Now" OnClick="btnVisiting_Click" class="btn btn-primary mt-1" ValidationGroup="signup" />

                                    </div>
                                </div>
                                <div class="alert alert-success" runat="server" id="lblMsg" style="display: none;">
                                    <strong>Your Visiting</strong> is confirmed  <a href="index.aspx">Home</a>Or<a href="../UserDasboard/myaccount.aspx">MyAccount</a>
                                </div>
                                <div class="alert alert-success" runat="server" id="lblbok" style="display: none;">
                                    <strong>Your Booking</strong> is confirmed  <a href="index.aspx">Home</a>Or<a href="../UserDasboard/myaccount.aspx">MyAccount</a>
                                    <div class="alert alert-danger" runat="server" id="lblError" style="display: none;">

                                        <strong>Oh snap!</strong>Due Some technical error Visiting not confirmed.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

