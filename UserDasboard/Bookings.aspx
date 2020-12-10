<%@ Page Title="" Language="C#" MasterPageFile="~/UserDasboard/user.master" AutoEventWireup="true" CodeFile="Bookings.aspx.cs" Inherits="UserDasboard_Bookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="content">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-md-12" >
                        <div class="card">
                            <div class="card-header card-header-icon">
                                <i class="material-icons">event_note</i>
                            </div>
                            <div class="card-content">
                                <h4 class="card-title">My Bookings
                                </h4>
                                <div class="chart-edge">
                                    <div class="demo-placeholder">
                                        <asp:Repeater ID="repeaterID" runat="server">
                                            <HeaderTemplate>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table class="box" style="margin-top: 2%">
                                                    <thead>
                                                        <tr>
                                                            <th>&nbsp</th>
                                                            <th>Walk In Booked</th>
                                                            <th>Your Booking Details</th>
                                                        </tr>
                                                    </thead>
                                                    <tr runat="server" id="rowID">
                                                        <td style="width: 25%; height: 25%; padding-right: 1%; padding-left: 1%">
                                                            <img src="../StayelloDesign/infrastructure/Updateimage/1.jpeg" />
                                                        </td>
                                                        <td style="text-align: left">Property Name :
                                                                <asp:Label runat="server" ID="lblp_name" Text='<%#Eval("p_name") %>' ForeColor="#00adef"></asp:Label><br />
                                                            Property Address :  
                                                                <asp:Label runat="server" ID="lblp_address" Text='<%#Eval("p_address") %>' ForeColor="#00adef"></asp:Label><br />
                                                            P.G. Manager Mobile :      
                                                                <asp:Label runat="server" ID="lblpgm_mobile" Text='<%#Eval("pgm_mobile") %>' ForeColor="#00adef"></asp:Label><br />
                                                            P.G. Manager Name  
                                                                <asp:Label runat="server" ID="lblpgm_name" Text='<%#Eval("pgm_name") %>' ForeColor="#00adef"></asp:Label><br />
                                                              Booking Status  
                                                                <asp:Label runat="server" ID="lblb_status" Text='<%#Eval("b_status") %>' ForeColor="green"></asp:Label>
                                                        </td>
                                                        <td style="text-align: left">
                                                            Booking Amount:   
                                                                <asp:Label runat="server" ID="lblb_amount" Text='<%#Eval("b_amount") %>' ForeColor="#00adef"></asp:Label><br />
                                                            Visiting date:   
                                                                <asp:Label runat="server" ID="lblv_date" Text='<%#Eval("b_date") %>' ForeColor="#00adef"></asp:Label><br />
                                                            Visiting Time Slot :     
                                                                <asp:Label runat="server" ID="lblv_timeslot" Text='<%#Eval("b_timeslot") %>' ForeColor="#00adef"></asp:Label><br />

                                                            Your Name :    
                                                            <asp:Label runat="server" ID="lbls_name" Text='<%#Eval("s_name") %>' ForeColor="#00adef"></asp:Label>
                                                            <br />
                                                            Your Mobile :    
                                                                <asp:Label runat="server" ID="lbls_mobile" Text='<%#Eval("s_mobile") %>' ForeColor="#00adef"></asp:Label><br />
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td>

                                                        </td>
                                                        <td>
                                                           <%-- <asp:LinkButton ID="btnPayNow"  Text = '<%#Eval("b_id")%>' runat="server" class="btn-success" OnClick="btnPayNow_Click" >Pay Now</asp:LinkButton>--%>
                                                           
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>

                                                        </td>
                                                    </tr>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                </table>
                                                   
                                                               
                                                            
                                            </FooterTemplate>
                                        </asp:Repeater>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
</asp:Content>
