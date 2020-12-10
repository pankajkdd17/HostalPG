<%@ Page Title="" Language="C#" MasterPageFile="~/StayelloDesign/UserMaster.master" AutoEventWireup="true" CodeFile="Coliving.aspx.cs" Inherits="StayelloDesign_Coliving" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid " >
       
        <div class="row">
            <div class="col-md-12 stayellotext" >
                <h2 style="color:#00adef; text-align:center">Select your own StayEllo</h2>
                <p class="text-center">Explore our most loved acomodations and chose as per your needs...</p>

                <div class="row">
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
                </div>
            </div>
        </div>
    </div>
</asp:Content>

