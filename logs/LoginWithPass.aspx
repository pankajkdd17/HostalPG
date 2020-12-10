<%@ Page Title="" Language="C#" MasterPageFile="~/logs/logs.Master" AutoEventWireup="true" CodeFile="LoginWithPass.aspx.cs" Inherits="LoginWithPass" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
                <a class="navbar-brand" href="../StayelloDesign/index.aspx"><b style="color: #ffde00">StayEllo</b></a>
            </div>
        </div>
    </nav>
    
    <div class="wrapper wrapper-full-page">
        <div class="full-page register-page" filter-color="black" style="background-color: #00adef">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="card card-signup">
                            <h1>Login</h1>
                            <table id="tblLogin" runat="server" width="40%" border="0" cellpadding="0" cellspacing="4"
                                style="background-color: #cecece;" align="center">
                                <tbody>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                                            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                            </asp:ToolkitScriptManager>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="30%" align="right">User ID :  
                                        </td>
                                        <td width="70%">
                                            <asp:TextBox ID="txtLogin" runat="server" Width="175px" MaxLength="20" AutoCompleteType="Disabled"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="req_txtLogin" runat="server" ErrorMessage="Enter Login ID."
                                                ToolTip="Enter Login ID." ControlToValidate="txtLogin" Text="*" Display="Static"
                                                ForeColor="Red" ValidationGroup="vldLogin">
                                            </asp:RequiredFieldValidator>
                                            <asp:FilteredTextBoxExtender ID="fltr_txtLogin" runat="server" FilterType="UppercaseLetters,LowercaseLetters,Numbers"
                                                TargetControlID="txtLogin">
                                            </asp:FilteredTextBoxExtender>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">Password :  
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtPassword" runat="server" Width="175px" MaxLength="20" AutoCompleteType="Disabled"
                                                TextMode="Password">
                                            </asp:TextBox>
                                            <asp:RequiredFieldValidator ID="req_txtPassword" runat="server" ErrorMessage="Enter Password."
                                                ToolTip="Enter Password." ControlToValidate="txtPassword" Text="*" Display="Static"
                                                ForeColor="Red" ValidationGroup="vldLogin">
                                            </asp:RequiredFieldValidator>
                                            <asp:FilteredTextBoxExtender ID="fltr_txtPassword" runat="server" FilterType="Numbers, LowercaseLetters, UppercaseLetters, Custom"
                                                TargetControlID="txtPassword" ValidChars="@!_%$#">
                                            </asp:FilteredTextBoxExtender>
                                        </td>
                                    </tr>
                                   
                                    <tr>
                                        <td align="right">Enter Code :  
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtCode" runat="server" Width="175px" MaxLength="5" AutoCompleteType="Disabled"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="req_txtCode" runat="server" ErrorMessage="Enter captcha code."
                                                ToolTip="Enter captcha code." ControlToValidate="txtCode" Text="*" Display="Static"
                                                ForeColor="Red" ValidationGroup="vldLogin">
                                            </asp:RequiredFieldValidator>
                                            <asp:FilteredTextBoxExtender ID="fltr_txtCode" runat="server" FilterType="Numbers"
                                                TargetControlID="txtCode">
                                            </asp:FilteredTextBoxExtender>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center">
                                            <asp:Button ID="btnLogin" runat="server" Text="Login" ValidationGroup="vldLogin"
                                                OnClick="btnLogin_Click" />
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="vldLogin"
                                                ShowSummary="false" ShowMessageBox="true" HeaderText="You have received following errors." />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table id="tblAlert" runat="server" width="40%" border="0" cellpadding="0" cellspacing="4"
                                style="background-color: #cecece;" align="center" visible="false">
                                <tr>
                                    <td align="center">This user is already logged in. Do you want to terminate other active session.  
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:Button ID="btnOk" runat="server" Text="OK" OnClick="btnOk_Click" />
                                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                                    </td>
                                </tr>
                            </table>
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
                    <a href="http://www.stayello.com"><b style="color: #ffde00">Stayello</b></a>
                </p>
            </div>
        </footer>
    </div>
    </div>
</asp:Content>

