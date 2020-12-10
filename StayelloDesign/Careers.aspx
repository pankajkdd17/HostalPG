<%@ Page Title="" Language="C#" MasterPageFile="~/StayelloDesign/UserMaster.master" AutoEventWireup="true" CodeFile="Careers.aspx.cs" Inherits="StayelloDesign_Careers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid main" style="margin-top: 5px">
        <div class="row">
            <div class="col-lg-12 stayellotext" >
                <fieldset>
                    <legend style="color:#00adef; text-align:center">Careers With StayEllo
                        <br />
                    </legend>
                    <p style="text-align: center"></p>
                </fieldset>
                <div class="card-body store-body">
                    <div class="container">

                        <div class="row">
                            <div class="col-md-2 col-sm-2  col-lg-3" >
                            </div>
                            <div class="col-sm-10 col-md-10 col-lg-6" style="background-color: #fddd01">
                                <div class="well well-sm" style="margin-top: 2%">
                                    <div class="form-horizontal">
                                        <div class="form-group">
                                            <label class="col control-label" for="name">Your full Name:</label>
                                            <div class="col">
                                                <asp:TextBox ID="txtFullName" runat="server" placeholder="Full Name" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="reqFullName" ControlToValidate="txtFullName" ValidationGroup="career" runat="server" ErrorMessage="* Please Enter Full Name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col control-label" for="phone">Your Mobile Number:</label>
                                            <div class="col">
                                                <asp:TextBox ID="txtMobile" MaxLength="10" runat="server" placeholder="+91 9898933993" class="form-control"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="reguMobile" runat="server" ControlToValidate="txtMobile" ValidationExpression="((\d+)((\.\d{1})?))$" ErrorMessage="Enter only Number" Display="Dynamic" ForeColor="Red"  ValidationGroup="career" />
                                                <asp:RequiredFieldValidator ID="reqMobile" ControlToValidate="txtMobile" ValidationGroup="career" runat="server" ErrorMessage="* Please Enter Mobile" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col control-label" for="phone">Your Email:</label>
                                            <div class="col">
                                                <asp:TextBox ID="txtemail" runat="server" placeholder="Email" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="reqEmail" ControlToValidate="txtemail" ValidationGroup="career" runat="server" ErrorMessage="* Please Enter Email" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="reqexEmail" runat="server" ControlToValidate="txtemail" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ErrorMessage="Enter only email" Display="Dynamic" ForeColor="Red" ValidationGroup="career"  />
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col control-label" for="phone">Apply for</label>
                                            <div class="col">
                                                <asp:DropDownList ID="ddlApplyfor" runat="server" class="form-control">
                                                    <asp:ListItem Text="--Select--" Value="0"></asp:ListItem>
                                                    <asp:ListItem Text="Operation" Value="Operation"></asp:ListItem>
                                                    <asp:ListItem Text="Sales and Marketing" Value="Sales and Marketing"></asp:ListItem>
                                                    <asp:ListItem Text="HR" Value="HR"></asp:ListItem>
                                                    <asp:ListItem Text="kitchen Operation" Value="kitchen Operation"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="ddlApplyfor" InitialValue="0" ErrorMessage="Please select Apply for" ForeColor="Red" Display="Dynamic" />
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col control-label" for="phone">Upload Your Curriculum vitae (CV):</label>
                                            <div class="col">
                                                <asp:FileUpload ID="UploadCv" runat="server" class="form-control" />
                                                <asp:RegularExpressionValidator ID="regExUploadCv"
                                                    runat="server" ControlToValidate="UploadCv"
                                                    ErrorMessage="Only .docx, .doc, .pdf formats are allowed." ForeColor="Red"
                                                    ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.doc|.docx|.pdf)$"
                                                    ValidationGroup="PartnerProfileUpdate" SetFocusOnError="true" Display="Dynamic" ></asp:RegularExpressionValidator>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-sm-4 col-md-4">
                                                </div>
                                                <div class="col-sm-4 col-md-4">
                                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-success btn-lg" ValidationGroup="career" OnClick="btnSubmit_Click" />
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

