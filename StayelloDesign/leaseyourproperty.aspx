<%@ Page Title="" Language="C#" MasterPageFile="~/StayelloDesign/UserMaster.master" AutoEventWireup="true" CodeFile="leaseyourproperty.aspx.cs" Inherits="StayelloDesign_leaseyourproperty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid main" style="margin-top: 5px">
        <div class="row">
            <div class="col-lg-12 stayellotext">
                <fieldset>
                    <legend class="textstyle">Lease Your Property
                        <br />
                    </legend>
                    <p style="text-align: center">Join our growing club of happy property owners.</p>
                </fieldset>
                <div class="card-body store-body">
                    <div class="container">

                        <div class="row">
                            <div class="col-md-2 col-sm-2  col-lg-3" >
                            </div>
                            <div class="col-sm-10 col-md-10 col-lg-6" style="background-color:#fddd01">
                                <div class="well well-sm" style="margin-top: 2%">
                                    <div class="form-horizontal">
                                        <div class="form-group">
                                            <label class="col control-label" for="name">Your full Name:</label>
                                            <div class="col">
                                                <asp:TextBox ID="txtFullName" runat="server" class="form-control" placeholder="Full Name"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="reqFullName" ControlToValidate="txtFullName" ValidationGroup="leasp" runat="server" ErrorMessage="* Please Enter Full Name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                               
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col control-label" for="phone">Your Mobile Number:</label>
                                            <div class="col">
                                                 <asp:TextBox ID="txtMobile" runat="server"  MaxLength="10" class="form-control" placeholder="Mobile"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="reqMobile" ControlToValidate="txtMobile" ValidationGroup="leasp" runat="server" ErrorMessage="* Please Enter Mobile" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col control-label" for="phone">Your City:</label>
                                            <div class="col">
                                                <asp:DropDownList ID="ddlCity" runat="server" class="form-control">
                                                    <asp:ListItem Text="--Select City--" Value="0"></asp:ListItem>
                                                    <asp:ListItem Text="Lucknow" Value="Lucknow"></asp:ListItem>
                                                    <asp:ListItem Text="Kanpur" Value="Kanpur"></asp:ListItem>
                                                    <asp:ListItem Text="Agara" Value="Agara"></asp:ListItem>
                                                     <asp:ListItem Text="Delhi" Value="Delhi"></asp:ListItem>
                                                </asp:DropDownList>
                                                
                                                  <asp:RequiredFieldValidator ID="reqddlCity"  runat="server" ControlToValidate="ddlCity" InitialValue="0" ErrorMessage="Please select City" ForeColor="Red" Display="Dynamic" ValidationGroup="leasp"  />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col control-label" for="phone">Number Of Bedroom</label>
                                            <div class="col">
                                               <asp:TextBox ID="txtNoBedRoom" runat="server"  MaxLength="5" class="form-control" placeholder="Number Of Bedroom"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="reqNobedRooms" ControlToValidate="txtNoBedRoom" ValidationGroup="leasp" runat="server" ErrorMessage="* Please Enter Number Of Bedroom" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col control-label" for="phone">Number Of Washroom</label>
                                            <div class="col">
                                                 <asp:TextBox ID="txtNoOfWashrooom" runat="server"  MaxLength="5" class="form-control" placeholder="Number Of Washroom"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="reqNoOfWashrooom" ControlToValidate="txtNoOfWashrooom" ValidationGroup="leasp" runat="server" ErrorMessage="* Please Enter Number Of Washroom" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col control-label" for="phone">Property Address:</label>
                                            <div class="col">
                                                <asp:TextBox ID="txtPropertyAddress" runat="server"  class="form-control" placeholder="Property Address"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="reqProAdd" ControlToValidate="txtPropertyAddress" ValidationGroup="leasp" runat="server" ErrorMessage="* Please Enter Property Address" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col control-label" for="phone">Select Status:</label>
                                            <div class="col">

                                                <asp:DropDownList ID="ddlStatus" runat="server" class="form-control">
                                                    <asp:ListItem Text="--Select Status--" Value="0"></asp:ListItem>
                                                    <asp:ListItem Text="Fully Furnished" Value="Fully Furnished"></asp:ListItem>
                                                    <asp:ListItem Text="Semi Furnished" Value="Semi Furnished"></asp:ListItem>
                                                    <asp:ListItem Text="Unfurnished" Value="Unfurnished"></asp:ListItem>
                                                </asp:DropDownList>
                                                 <asp:RequiredFieldValidator ID="rfv1"  runat="server" ControlToValidate="ddlStatus" InitialValue="0" ErrorMessage="Please  Select Status" ForeColor="Red" Display="Dynamic" ValidationGroup="leasp" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col control-label" for="phone">Google Link Of Property(Optional):</label>
                                            <div class="col">
                                                <asp:TextBox ID="txtMap" runat="server"  class="form-control" placeholder="Google Link Of Property"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="reqMap" ControlToValidate="txtMap" ValidationGroup="leasp" runat="server" ErrorMessage="* Please Enter Google Link Of Property" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-sm-4 col-md-4">
                                                </div>
                                                <div class="col-sm-4 col-md-4">
                                                    <asp:Button ID="btnLeasProperty" runat="server" Text="Submit" class="btn btn-success btn-lg" OnClick="btnLeasProperty_Click" ValidationGroup="leasp" />
                                                  
                                                </div>
                                                <div class="col-sm-2  col-md-4">
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-1 col-sm-2 col-lg-3">
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>

