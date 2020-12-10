<%@ Page Title="" Language="C#" MasterPageFile="~/logs/logs.Master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="logs_Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="navbar navbar-primary navbar-transparent navbar-absolute">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../StayelloDesign/index.aspx"><b style="color:#ffde00">StayEllo</b></a>
            </div>
        </div>
    </nav>
    <script type="text/javascript">
        function ValidateCheckBox(sender, args) {
            if (document.getElementById("<%=chbTermsCond.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
    </script>
    <div class="wrapper wrapper-full-page">
        <div class="full-page register-page" filter-color="black" style="background-color: #00adef">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="card card-signup">
                            <h2 class="card-title text-center"></h2>
                            <div class="row">
                                <div class="col-md-1 ">
                                    <%-- <div class="card-content">
                                        <div class="info info-horizontal">
                                            <div class="description">
                                                <%--<img src="../../assets/img/signup-image.jpeg">
                                                <h2></h2>
                                            </div>
                                        </div>
                                    </div>--%>
                                </div>
                                <div class="col-md-10">
                                    <div class="card-content">
                                       
                                        <div class="text-center">
                                            <h4 class="card-title" style="color: #00adef">Start your session</h4>
                                        </div>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">dialpad</i>
                                            </span>
                                            <div class="form-group label-floating">
                                                <label class="control-label">Mobile</label>
                                                <asp:TextBox ID="txtPhone" runat="server" class="form-control" MaxLength="10"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegExOwnersMobile" runat="server" Display="Dynamic"
                                                    ControlToValidate="txtPhone" ErrorMessage="Invalid Mobile Format"
                                                    ValidationExpression="[0-9]{10}" ForeColor="#00adef"></asp:RegularExpressionValidator>


                                            </div>
                                            <span class="input-group-addon">
                                                <asp:Button ID="btnSend" runat="server" Text="Send Otp" class="btn btn-primary" OnClick="btnSend_Click" />
                                            </span>
                                        </div>
                                        <div class="input-group" id="otp" runat="server" visible="false">
                                            <span class="input-group-addon">
                                                <i class="material-icons">message</i>
                                            </span>
                                            <div class="form-group label-floating">
                                                <label class="control-label">OTP</label>
                                                <asp:TextBox ID="txtOtp" runat="server" class="form-control" MaxLength="6" placeholder="OTP"></asp:TextBox>
                                            </div>
                                            <span class="input-group-addon">
                                                <asp:Button ID="btnVerify" runat="server" Text="Verify" class="btn btn-success" OnClick="btnVerify_Click" />
                                            </span>
                                        </div>
                                        <div>
                                            <asp:Label ID="lblmessage" runat="server" ForeColor="Red"></asp:Label>
                                        </div>
                                        <div id="signupnow" runat="server" visible="false">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">face</i>
                                                </span>
                                                <asp:TextBox ID="txtfullname" runat="server" class="form-control" placeholder="Full Name..."></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvCoName" runat="server" ForeColor="#00adef" ControlToValidate="txtfullname" Display="Dynamic" ErrorMessage="Please Enter full name" ValidationGroup="signup"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">email</i>
                                                </span>
                                                <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Email..." MaxLength="200"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Please Enter Email" ForeColor="#00adef" ValidationGroup="signup">

                                                </asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                                                    ForeColor="#00adef" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                                    Display="Dynamic" ErrorMessage="Invalid email address" />
                                            </div>
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">face</i>
                                                </span>
                                                <asp:DropDownList ID="ddlgender" runat="server" class="form-control">
                                                    <asp:ListItem Text="--Select Gender--" Value="0"></asp:ListItem>
                                                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                                    <asp:ListItem Text="Transgender" Value="Transgender"></asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">lock_outline</i>
                                                </span>
                                                <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder="Password..." TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpass" Display="Dynamic" ErrorMessage="Please Enter password" ValidationGroup="signup" ForeColor="#00adef"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">lock_outline</i>
                                                </span>
                                                <asp:TextBox ID="txtpassconfirm" runat="server" class="form-control" placeholder="Confirm Password .."></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpassconfirm" Display="Dynamic" ErrorMessage="Please Enter confirm password" ValidationGroup="signup" ForeColor="#00adef"></asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="CompareValidator1" runat="server"
                                                    ControlToCompare="txtpass" Display="Dynamic" ForeColor="#00adef" ControlToValidate="txtpassconfirm" ErrorMessage="Password not match">
                                                </asp:CompareValidator>
                                            </div>
                                            <!-- If you want to add a checkbox to this form, uncomment this code -->
                                            <div class="checkbox">
                                                <label>
                                                    <asp:CheckBox ID="chbTermsCond" runat="server" />
                                                    <%--<input type="checkbox" name="optionsCheckboxes" checked>--%>
                                                I agree to the
                                                    <a href="#something">Terms and conditions</a>.
                                                </label>
                                                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Terms and conditions must be checked" ClientValidationFunction="ValidateCheckBox" ValidationGroup="signup" ForeColor="#ffde00"></asp:CustomValidator>
                                            </div>
                                            <div class="footer text-center">
                                                <<%--a href="#pablo" >Get Started</a>--%>
                                                <asp:Button ID="btnSignup" runat="server" Text="Get Started" OnClick="btnSignup_Click" class="btn btn-primary btn-round" ValidationGroup="signup" />
                                                <div class="alert alert-danger" style="display: none;" id="lblError" runat="server">
                                                </div>
                                                <div class="alert alert-success" style="display: none;" id="lblMsg" runat="server">
                                                    <strong>Well done!</strong> Signup successfully. <a href="login.aspx"></a>
                                                </div>
                                                <div class="alert alert-success" style="display: none;" id="lblUpdate" runat="server">
                                                    <strong>Well done!</strong> Record Update successfully.
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                                <div class="col-md-1 ">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer">
                <div class="container">
                    <%-- <nav class="pull-left">
                        <ul>
                            <li>
                                <a href="http://www.stayello.com">Home
                                </a>
                            </li>
                            <li>
                                <a href="http://www.stayello.com">Company
                                </a>
                            </li>
                            <li>
                                <a href="http://www.stayello.com">Portfolio
                                </a>
                            </li>
                            <li>
                                <a href="http://www.stayello.com">Blog
                                </a>
                            </li>
                        </ul>
                    </nav>--%>
                    <p class="copyright pull-right">
                        &copy;
                       
                        <script>
                            document.write(new Date().getFullYear())
                        </script>
                        <a href="http://www.stayello.com"><b style="color:#ffde00">Stayello</b></a>
                    </p>
                </div>
            </footer>
        </div>
    </div>
</asp:Content>

