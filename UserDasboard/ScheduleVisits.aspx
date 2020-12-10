<%@ Page Title="" Language="C#" MasterPageFile="~/UserDasboard/user.Master" AutoEventWireup="true" CodeFile="ScheduleVisits.aspx.cs" Inherits="UserDasboard_ScheduleVisits" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

        <div class="content">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header card-header-icon">
                                <i class="material-icons">event_note</i>
                            </div>
                            <div class="card-content">
                                <h4 class="card-title">Schedule Visits
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
                                                            <th>Walk In Visit</th>
                                                            <th>Your Visit Details</th>
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
                                                                <asp:Label runat="server" ID="lblpgm_name" Text='<%#Eval("pgm_name") %>' ForeColor="#00adef"></asp:Label>
                                                        </td>
                                                        <td style="text-align: left">Visiting date:   
                                                                <asp:Label runat="server" ID="lblv_date" Text='<%#Eval("v_date") %>' ForeColor="#00adef"></asp:Label><br />
                                                            Visiting Time Slot :     
                                                                <asp:Label runat="server" ID="lblv_timeslot" Text='<%#Eval("v_timeslot") %>' ForeColor="#00adef"></asp:Label><br />

                                                            Your Name :    
                                                           <asp:Label runat="server" ID="lbls_name" Text='<%#Eval("s_name") %>' ForeColor="#00adef"></asp:Label>
                                                            <br />
                                                            Your Mobile :    
                                                                <asp:Label runat="server" ID="lbls_mobile" Text='<%#Eval("s_mobile") %>' ForeColor="#00adef"></asp:Label><br />
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td>
                                                            <asp:Button ID="Button1" runat="server" Text="Cancel Visit" class="btn-danger" Visible="false" />
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="Button2" runat="server" Text="Reschedule Visit" class="btn-primary" Visible="false" />
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
