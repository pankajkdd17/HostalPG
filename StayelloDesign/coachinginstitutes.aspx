<%@ Page Title="" Language="C#" MasterPageFile="~/StayelloDesign/UserMaster.master" AutoEventWireup="true" CodeFile="coachinginstitutes.aspx.cs" Inherits="StayelloDesign_coachinginstitutes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid main">
        <div class="row">
            <div class="col-lg-12 stayellotext"  >
                <fieldset>
                    <legend style="color:#00adef; text-align:center">Partner With StayEllo
                        <br />
                    </legend>
                    <p style="text-align: center">Stay environment matters. Students spend more than 2/3rd of their day where they stay!</p>
                </fieldset>
                <div class="card-body store-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-1 col-sm-1 col-lg-3">
                            </div>
                            <div class="col-sm-10 col-md-10 col-lg-6" style="background-color: #fddd01;">
                                <div class="well well-sm" style="margin-top: 2%">
                                    <div class="form-horizontal">
                                        <div class="form-group">
                                            <label class="col control-label" for="name">Name of Coaching Institute*:</label>
                                            <div class="col">
                                                <asp:TextBox ID="txtCoachingName" runat="server" placeholder="Name of Coaching Institute" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="reqCoachingName" ControlToValidate="txtCoachingName" ValidationGroup="coaching" runat="server" ErrorMessage="* Please Enter Name of Coaching Institute" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col control-label" for="name">Your full Name:</label>
                                            <div class="col">
                                                <asp:TextBox ID="txtFullName" runat="server" placeholder="Full Name" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="reqFullName" ControlToValidate="txtFullName" ValidationGroup="coaching" runat="server" ErrorMessage="* Please Enter Full Name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col control-label" for="phone">Your Designation*:</label>
                                            <div class="col">
                                                <asp:TextBox ID="txtDesignation" runat="server" placeholder="Your Designation" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="reqDesignation" ControlToValidate="txtDesignation" ValidationGroup="coaching" runat="server" ErrorMessage="* Please Enter Your Designation" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col control-label" for="phone">Your Mobile Number:</label>
                                            <div class="col">
                                                <asp:TextBox ID="txtMobile" MaxLength="10" runat="server" placeholder="+91 9898933993" class="form-control"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="reguMobile" runat="server" ControlToValidate="txtMobile" ValidationExpression="((\d+)((\.\d{1})?))$" ErrorMessage="Enter only Number" Display="Dynamic" ForeColor="Red" ValidationGroup="coaching" />
                                                <asp:RequiredFieldValidator ID="reqMobile" ControlToValidate="txtMobile" ValidationGroup="coaching" runat="server" ErrorMessage="* Please Enter Mobile" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col control-label" for="phone">Your Email ID*:</label>
                                            <div class="col">
                                                <asp:TextBox ID="txtemail" runat="server" placeholder="Email" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="reqEmail" ControlToValidate="txtemail" ValidationGroup="coaching" runat="server" ErrorMessage="* Please Enter Email" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="reqexEmail" runat="server" ControlToValidate="txtemail" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ErrorMessage="Enter only email" Display="Dynamic" ForeColor="Red" ValidationGroup="coaching" />
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-sm-4 col-md-4">
                                                </div>
                                                <div class="col-sm-4 col-md-4">
                                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-success btn-lg" OnClick="btnSubmit_Click" ValidationGroup="coaching" />

                                                </div>
                                                <div class="col-sm-4">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-1 col-lg-3">
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
