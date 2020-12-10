<%@ Page Title="" Language="C#" MasterPageFile="~/UserDasboard/user.Master" AutoEventWireup="true" CodeFile="myaccount.aspx.cs" Inherits="UserDasboard_myaccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card" style="min-height:500px">
                            <div class="card-header card-header-icon">
                                <i class="material-icons">home</i>
                            </div>
                            <div class="card-content">
                                <h4 class="card-title">Dashboard </h4>
                                <div class="row" id="Notadded" runat="server">
                                    <div class="col-md-12 col-sm-12">
                                        <asp:LinkButton ID="lbtninfo" Class="btn btn-info"  runat="server" > Dear Sir You are still Not alloted any room please book room or talk to our P.G. Manager (+917081521234)</asp:LinkButton>
                                    </div>
                                </div>
                                 <div class="row" id="anounce" runat="server">
                                    <div class="col-md-12 col-sm-12">
                                        <h3 class="category" style="text-align: center; white-space: nowrap; color: #0094ff"><b>Announcement</b></h3>
                                        <asp:GridView ID="GridView1" DataKeyNames="a_id" runat="server" class="table table-bordered table-hover" AutoGenerateColumns="false">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Details">
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" ID="lblp_name" Text='<%#Eval("a_Details") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Date">
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" ID="lbla_crdate" Text='<%#Eval("a_crdate") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>

                                    </div>
                                </div>
                                <div class="row" id="details" runat="server">
                                    <%-- <div style="width: 30%; float: left">--%>
                                    <div class="col-md-6 col-sm-6">
                                        <p class="category" style="text-align: left; white-space: nowrap; color: #0094ff"><strong>Your Staying Details</strong></p>
                                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="t_id">
                                            <ItemTemplate>
                                                <div style="min-height: 180px;">
                                                    <table style="text-align: left">
                                                        <tr>
                                                            <td>
                                                                <i class="fa fa-home" style="font-size: 14px; white-space: nowrap"></i>Room no:
                                                            </td>
                                                            <td>
                                                                <asp:Label runat="server" ID="lblp_name" Text='<%#Eval("t_roomNo") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label></td>

                                                        </tr>
                                                        <tr>
                                                            <td><i class="fa fa-user" style="font-size: 14px;"></i>&nbsp Name </td>
                                                            <td>

                                                                <asp:Label runat="server" ID="lblname" Text='<%#Eval("t_Name") %>' ForeColor="#00adef" Font-Size="17px" Style="white-space: nowrap"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fa fa-mobile" style="font-size: 14px;"></i>&nbsp Mobile </td>
                                                            <td>

                                                                <asp:Label runat="server" ID="Label1" Text='<%#Eval("t_MobileNo") %>' ForeColor="#00adef" Font-Size="17px" Style="white-space: nowrap"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fa fa-bed" style="font-size: 14px;"></i>&nbsp Bed Type </td>
                                                            <td>

                                                                <asp:Label runat="server" ID="lblt_BedsText" Text='<%#Eval("t_BedsText") %>' ForeColor="#00adef" Font-Size="17px" Style="white-space: nowrap"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <i class="fa fa-rupee" style="font-size: 14px"></i>&nbsp Monthly Rent:
                                                            </td>
                                                            <td>

                                                                <asp:Label runat="server" ID="lblrent" Text='<%#Eval("t_RentMoney") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>

                                                            </td>
                                                        </tr>
                                                        <tr style="white-space: nowrap;">
                                                            <td style="text-align: left"><i class="fa fa-rupee" style="font-size: 14px"></i>&nbsp Security Deposit:</td>
                                                            <td>
                                                                <asp:Label runat="server" ID="lblr_SecurityDeposit" Text='<%#Eval("t_SecurityMoney") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>

                                                                <i class="fa fa-calendar" style="font-size: 14px"></i>&nbsp  D.O.J :
                                                            </td>
                                                            <td>
                                                                <asp:Label runat="server" ID="lbldoj" Text='<%#Eval("t_DateOfJoining") %>' ForeColor="#00adef"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <i class="fa fa-calendar" style="font-size: 14px"></i>&nbsp Rent Dues Date
                                                            </td>
                                                            <td>
                                                                <asp:Label runat="server" ID="lblrentdate" Text='<%#Eval("t_RentDate") %>' ForeColor="#00adef"></asp:Label>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td>
                                                                <asp:Button ID="btnGetReport" runat="server" Text="Get Report" class="btn btn-primary" />
                                                            </td>

                                                        </tr>
                                                    </table>
                                                </div>
                                            </ItemTemplate>
                                        </asp:ListView>
                                    </div>
                                    <%-- </div>--%>
                                    <%-- <div style="width: 83%; float: none">--%>

                                    <%-- </div>--%>
                                    <%-- <div style="width: 29%; float: right">--%>
                                    <div class="col-md-6 col-sm-6">
                                        <p class="category" style="text-align: left; white-space: nowrap; color: #0094ff"><strong>Your pending Dues</strong></p>
                                        <asp:ListView ID="ListView3" runat="server" DataKeyNames="d_id">
                                            <ItemTemplate>
                                                <div style="min-height: 180px;">
                                                    <table style="text-align: left">

                                                        <tr style="white-space: nowrap">
                                                            <td>Room No:
                                                            </td>
                                                            <td>
                                                                <i class="fa fa-home" style="font-size: 17px"></i>
                                                                <asp:Label runat="server" ID="lblBeds" Text='<%#Eval("d_RoomNo") %>' ForeColor="#00adef" Font-Size="17px" Style="white-space: nowrap"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Mobile:</td>
                                                            <td>
                                                                <i class="fa fa-mobile" style="font-size: 17px"></i>
                                                                <asp:Label runat="server" ID="lblrent" Text='<%#Eval("d_t_Mobile") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>

                                                            </td>
                                                        </tr>
                                                        <tr style="white-space: nowrap;">
                                                            <td>Dues Type :
                                                            </td>
                                                            <td>
                                                                <i class="fa fa-list" style="font-size: 17px"></i>
                                                                <asp:Label runat="server" ID="lblr_SecurityDeposit" Text='<%#Eval("d_DuesTypeText") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>

                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td>Dues Amount:</td>
                                                            <td>
                                                                <i class="fa fa-rupee" style="font-size: 17px"></i>
                                                                <asp:Label runat="server" ID="Label1" Text='<%#Eval("d_DuesAmount") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>

                                                            </td>
                                                        </tr>
                                                        <tr style="white-space: nowrap;">
                                                            <td>Dues Date :
                                                            </td>
                                                            <td>
                                                                <i class="fa fa-calendar" style="font-size: 17px"></i>
                                                                <asp:Label runat="server" ID="Label2" Text='<%#Eval("d_DuesDate") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>

                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td>Dues Month:</td>
                                                            <td>
                                                                <i class="fa fa-calendar" style="font-size: 17px"></i>
                                                                <asp:Label runat="server" ID="Label3" Text='<%#Eval("d_DuesMonth") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>

                                                            </td>
                                                        </tr>
                                                        <tr style="white-space: nowrap;">
                                                            <td>Remark :
                                                            </td>
                                                            <td>
                                                                <i class="fa fa-list" style="font-size: 17px"></i>
                                                                <asp:Label runat="server" ID="Label4" Text='<%#Eval("d_Remark") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>

                                                            </td>
                                                        </tr>
                                                        <tr style="white-space: nowrap;">
                                                            <td>Due Added Date :
                                                            </td>
                                                            <td>
                                                                <i class="fa fa-calendar" style="font-size: 17px"></i>
                                                                <asp:Label runat="server" ID="Label5" Text='<%#Eval("d_crdate") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>

                                                            </td>
                                                        </tr>
                                                        <%-- <tr style="white-space: nowrap;">
                                                                                        <td><asp:LinkButton ID="lbtnRecivedDue" class="btn btn-info" CommandArgument='<%#Eval("d_id")%>' CommandName="ReceivedDue" runat="server"><i class="fa fa-rupee" > Pay Now</i></asp:LinkButton> 
                                                                                            </td>
                                                                                            </tr>--%>
                                                    </table>
                                                </div>
                                            </ItemTemplate>
                                        </asp:ListView>
                                    </div>
                                    <%-- </div>--%>
                                </div>
                               
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
</asp:Content>

