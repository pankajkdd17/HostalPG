<%@ Page Title="" Language="C#" MasterPageFile="~/logs/logs.Master" AutoEventWireup="true" CodeFile="login1.aspx.cs" Inherits="logs_login" %>

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
    <div class="wrapper wrapper-full-page">
        <div class="full-page login-page" data-color="blue" style="background-color: #00adef">
            <!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
            <div class="content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-sm-8 col-md-offset-3 col-sm-offset-2">

                            <div class="card card-login card-hidden" style="margin-top: -10%">
                                <div class="card-header text-center">
                                    <%-- <h4 class="card-title">Login</h4>--%>
                                </div>
                                <div class="card-content">

                                    <%-- <div class="social-line">
                                        <h5>Connect Using</h5>
                                        <a href="#btn" class="btn btn-just-icon btn-default">
                                            <i class="fa fa-facebook-square"></i>
                                        </a>
                                        <a href="#pablo" class="btn btn-just-icon btn-default">
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                        <a href="#eugen" class="btn btn-just-icon btn-default">
                                            <i class="fa fa-google-plus"></i>
                                        </a>
                                    </div>--%>

                                    <h5 class="text-center" style="color:#00adef">LOGIN WITH MOBILE</h5>
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
                                            <asp:Button ID="btnSend" runat="server" Text="Send OTP" class="btn btn-primary" OnClick="btnSend_Click" />
                                        </span>
                                    </div>
                                    <div class="input-group" id="otp" runat="server" visible="false">
                                        <span class="input-group-addon" >
                                            <i class="material-icons">message</i>
                                        </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label" >OTP</label>
                                            <asp:TextBox ID="txtOtp" runat="server" class="form-control" MaxLength="6" placeholder="OTP" ></asp:TextBox>
                                        </div>
                                        <span class="input-group-addon">
                                            <asp:Button ID="btnVerify" runat="server" Text="Verify"  class="btn btn-success" OnClick="btnVerify_Click" />
                                        </span>
                                    </div>
                                    <div>
                                        <asp:Label ID="lblmessage" runat="server" ForeColor="Red"></asp:Label>
                                    </div>
                                   <%-- <span class="or-rule">OR</span>
                                    <h5 class="text-center" style="color:#00adef">STAYELLO ACCOUNT</h5>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">face</i>
                                        </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label">Email / Mobile</label>
                                            <asp:TextBox ID="txtEmail_Mobile" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">lock_outline</i>
                                        </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label">Password</label>
                                            <asp:TextBox ID="txtpassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                        </div>
                                    </div>--%>
                                </div>
                                <div class="text-center">
                                   <%-- <asp:Button ID="btnSignIn" runat="server" Text="Sign In" class="btn btn-success btn-wd" OnClick="btnSignIn_Click" />--%>
                                    <%--<button type="submit" class="btn btn-rose btn-wd btn-lg " style="color:#0094ff">Sign In</button>--%>
                                    <p>
                                        New to stayello?&nbsp;&nbsp;
                                            <a href="signup.aspx">
                                                <i class="material-icons">person_add</i>Sign Up
                                            </a>
                                    </p>
                                    <div class="alert alert-danger" runat="server" id="lblMsg" style="display: none;">
                                        <strong>Oh snap!</strong> Either Email / Mobile or password is incorrect.
                                    </div>
                                    <div class="alert alert-danger" runat="server" id="lblMsg1" style="display: none;">
                                        <strong>Oh snap!</strong> Either Email / Mobile or password is incorrect.
                                    </div>
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

