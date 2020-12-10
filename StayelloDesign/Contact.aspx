<%@ Page Title="" Language="C#" MasterPageFile="~/StayelloDesign/UserMaster.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="StayelloDesign_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-fluid main" >
        <div class="row">
            <div class="col-lg-12 stayellotext">
                <fieldset>
                    <legend class="textstyle">Contact us</legend>
                </fieldset>
                 <div class="row">
                      <div class="col-sm-3 " >
                          </div>
                        <div class="col-sm-6" >
                             <div class="card-body store-body">
                            <div class="container" style="background-color: #fddd01;">

                                <div class="row">
                                    <div class="col-sm-2 col-md-2">
                                    </div>
                                    <div class="col-md-8 col-sm-12  col-lg-12" style="padding-top: 3%">
                                        <div>
                                            <div class="row">
                                                <div class="col-sm-2 col-md-2">
                                                </div>
                                                <div class="col-sm-2 col-lg-2 col-md-1 ">
                                                    <p>
                                                        <img src="infrastructure/img/CallUs.jpg" class="rounded-circle img-fluid" alt="Responsive image" />
                                                    </p>
                                                </div>
                                                <div class="col-md-8 col-sm-8">
                                                    <p>
                                                        Call us to know more:
                                                    <br />
                                                        <span class="textstyle"><b>Customer Care:</b> +917081521234 </span>
                                                        <br />
                                                        <span class="textstyle"><a href="#" style="white-space: nowrap"><b>Email:</b>info@stayello.com</a></span>
                                                    </p>
                                                </div>
                                                <div class="col-sm-2 col-md-2">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-1 col-sm-2">
                                    </div>
                                    <div class="col-md-8 col-sm-12  col-lg-12">
                                        <img src="infrastructure/img/line.png" class="img-fluid" alt="Responsive image" />
                                    </div>
                                    <div class="col-md-1">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12 col-md-12">
                                        <div class="well well-sm">
                                            <div class="form-horizontal">
                                                <div class="form-group">
                                                    <label class="col control-label" for="name">Your full Name:</label>
                                                    <div class="col">
                                                        <asp:TextBox ID="txtfullName" runat="server" placeholder="Your full Name" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="reqfullName" ControlToValidate="txtfullName" ValidationGroup="contact" runat="server" ErrorMessage="* Please Enter Your full Name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col control-label" for="email">Your E-mail:</label>
                                                    <div class="col">
                                                         <asp:TextBox ID="txtemail" runat="server" placeholder="Your E-mail" class="form-control"></asp:TextBox>
                                                        <asp:RegularExpressionValidator ID="reqexEmail" runat="server" ControlToValidate="txtemail" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ErrorMessage="Enter only email" Display="Dynamic" ForeColor="Red" ValidationGroup="contact" />
                                                <asp:RequiredFieldValidator ID="reqemail" ControlToValidate="txtemail" ValidationGroup="contact" runat="server" ErrorMessage="* Please Enter Your E-mail" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col control-label" for="phone">Your Phone Number:</label>
                                                    <div class="col">
                                                        <asp:TextBox ID="txtNumber" runat="server" MaxLength="10" placeholder="Your Phone Number" class="form-control"></asp:TextBox>
                                                         <asp:RegularExpressionValidator ID="reguMobile" runat="server" ControlToValidate="txtNumber" ValidationExpression="((\d+)((\.\d{1})?))$" ErrorMessage="Enter only Number" Display="Dynamic" ForeColor="Red" ValidationGroup="contact" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtemail" ValidationGroup="contact" runat="server" ErrorMessage="* Please Enter Your E-mail" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col control-label" for="phone">Your Gender:</label>
                                                    <div class="col">
                                                        <asp:DropDownList ID="ddlGender" runat="server" class="form-control">
                                                            <asp:ListItem Text="Men" Value="Men"></asp:ListItem>
                                                            <asp:ListItem Text="Women" Value="Women"></asp:ListItem>
                                                            <asp:ListItem Text="Transgender" Value="Transgender"></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col control-label" for="message">Your message:</label>
                                                    <div class="col">
                                                         <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" placeholder="Hello meassge is" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="reqtxtmsg" ControlToValidate="txtmsg" ValidationGroup="contact" runat="server" ErrorMessage="* Please Enter Your message" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                                        
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-sm-4 col-md-4">
                                                        </div>
                                                        <div class="col-sm-4 col-md-4">
                                                            <asp:Button ID="btnSubmit" runat="server" class="btn btn-success btn-lg" Text="Submit" OnClick="btnSubmit_Click" ValidationGroup="contact" />
                                                         
                                                        </div>
                                                        <div class="col-sm-4">
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
                      <div class="col-sm-3" >
                          </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

