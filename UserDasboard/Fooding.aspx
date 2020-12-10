<%@ Page Title="" Language="C#" MasterPageFile="~/UserDasboard/user.master" AutoEventWireup="true" CodeFile="Fooding.aspx.cs" Inherits="UserDasboard_Fooding" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <div class="content">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header card-header-icon">
                                <i class="material-icons">food_bank</i>
                            </div>
                            <div class="card-content">
                                <h4 class="card-title">My Fooding
                                </h4>

                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="chart-edge" style="background-color: antiquewhite">
                                            <div class="demo-placeholder">
                                               
                                                 <asp:Repeater ID="repeater1" runat="server">
                                                    <HeaderTemplate>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <table class="box" style="margin-top: 3%; text-align: center">
                                                            <tr>
                                                                <td>
                                                                    <b><asp:Label runat="server" ID="lblf_WeekdaysText" Text='<%#Eval("f_WeekdaysText") %>' ForeColor="#cc0000"></asp:Label></b></td>
                                                            </tr>

                                                            <tr>
                                                                <td>Break Fast :
                                                                <asp:Label runat="server" ID="lblf_Breakfast" Text='<%#Eval("f_Breakfast") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_BreakfastTime" Text='<%#Eval("f_BreakfastTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label3" Text='<%#Eval("f_BreakfastTimeto") %>' ForeColor="#0000ff"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Lunch  :  
                                                                <asp:Label runat="server" ID="lblf_Lunch" Text='<%#Eval("f_Lunch") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_LunchTime" Text='<%#Eval("f_LunchTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label2" Text='<%#Eval("f_LunchTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Snacks :      
                                                                <asp:Label runat="server" ID="lblf_Snacks" Text='<%#Eval("f_Snacks") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_SnacksTime" Text='<%#Eval("f_SnacksTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To 
                                                                    <asp:Label runat="server" ID="Label4" Text='<%#Eval("f_SnacksTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Diner  : 
                                                                <asp:Label runat="server" ID="lblf_Dinner" Text='<%#Eval("f_Dinner") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_DinnarTime" Text='<%#Eval("f_DinnarTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label5" Text='<%#Eval("f_DinnarTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
                                                            </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="chart-edge " style="background-color: antiquewhite">
                                            <div class="demo-placeholder">
                                                <asp:Repeater ID="repeater2" runat="server">
                                                    <HeaderTemplate>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <table class="box" style="margin-top: 3%; text-align: center">
                                                            <tr>
                                                                <td>
                                                                    <b><asp:Label runat="server" ID="lblf_WeekdaysText" Text='<%#Eval("f_WeekdaysText") %>' ForeColor="#cc0000"></asp:Label></b></td>
                                                            </tr>

                                                            <tr>
                                                                <td>Break Fast :
                                                                <asp:Label runat="server" ID="lblf_Breakfast" Text='<%#Eval("f_Breakfast") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_BreakfastTime" Text='<%#Eval("f_BreakfastTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label3" Text='<%#Eval("f_BreakfastTimeto") %>' ForeColor="#0000ff"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Lunch  :  
                                                                <asp:Label runat="server" ID="lblf_Lunch" Text='<%#Eval("f_Lunch") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_LunchTime" Text='<%#Eval("f_LunchTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label2" Text='<%#Eval("f_LunchTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Snacks :      
                                                                <asp:Label runat="server" ID="lblf_Snacks" Text='<%#Eval("f_Snacks") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_SnacksTime" Text='<%#Eval("f_SnacksTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To 
                                                                    <asp:Label runat="server" ID="Label4" Text='<%#Eval("f_SnacksTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Diner  : 
                                                                <asp:Label runat="server" ID="lblf_Dinner" Text='<%#Eval("f_Dinner") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_DinnarTime" Text='<%#Eval("f_DinnarTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label5" Text='<%#Eval("f_DinnarTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
                                                            </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                   
                                                               
                                                            
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="chart-edge " style="background-color: antiquewhite">
                                            <div class="demo-placeholder">
                                                <asp:Repeater ID="repeater3" runat="server">
                                                    <HeaderTemplate>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <table class="box" style="margin-top: 3%; text-align: center">
                                                            <tr>
                                                                <td>
                                                                    <b><asp:Label runat="server" ID="lblf_WeekdaysText" Text='<%#Eval("f_WeekdaysText") %>' ForeColor="#cc0000"></asp:Label></b></td>
                                                            </tr>

                                                            <tr>
                                                                <td>Break Fast :
                                                                <asp:Label runat="server" ID="lblf_Breakfast" Text='<%#Eval("f_Breakfast") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_BreakfastTime" Text='<%#Eval("f_BreakfastTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label3" Text='<%#Eval("f_BreakfastTimeto") %>' ForeColor="#0000ff"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Lunch  :  
                                                                <asp:Label runat="server" ID="lblf_Lunch" Text='<%#Eval("f_Lunch") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_LunchTime" Text='<%#Eval("f_LunchTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label2" Text='<%#Eval("f_LunchTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Snacks :      
                                                                <asp:Label runat="server" ID="lblf_Snacks" Text='<%#Eval("f_Snacks") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_SnacksTime" Text='<%#Eval("f_SnacksTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To 
                                                                    <asp:Label runat="server" ID="Label4" Text='<%#Eval("f_SnacksTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Diner  : 
                                                                <asp:Label runat="server" ID="lblf_Dinner" Text='<%#Eval("f_Dinner") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_DinnarTime" Text='<%#Eval("f_DinnarTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label5" Text='<%#Eval("f_DinnarTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
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
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="chart-edge " style="background-color: antiquewhite">
                                            <div class="demo-placeholder">
                                               <asp:Repeater ID="repeater4" runat="server">
                                                    <HeaderTemplate>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <table class="box" style="margin-top: 3%; text-align: center">
                                                            <tr>
                                                                <td>
                                                                    <b><asp:Label runat="server" ID="lblf_WeekdaysText" Text='<%#Eval("f_WeekdaysText") %>' ForeColor="#cc0000"></asp:Label></b></td>
                                                            </tr>

                                                            <tr>
                                                                <td>Break Fast :
                                                                <asp:Label runat="server" ID="lblf_Breakfast" Text='<%#Eval("f_Breakfast") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_BreakfastTime" Text='<%#Eval("f_BreakfastTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label3" Text='<%#Eval("f_BreakfastTimeto") %>' ForeColor="#0000ff"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Lunch  :  
                                                                <asp:Label runat="server" ID="lblf_Lunch" Text='<%#Eval("f_Lunch") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_LunchTime" Text='<%#Eval("f_LunchTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label2" Text='<%#Eval("f_LunchTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Snacks :      
                                                                <asp:Label runat="server" ID="lblf_Snacks" Text='<%#Eval("f_Snacks") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_SnacksTime" Text='<%#Eval("f_SnacksTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To 
                                                                    <asp:Label runat="server" ID="Label4" Text='<%#Eval("f_SnacksTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Diner  : 
                                                                <asp:Label runat="server" ID="lblf_Dinner" Text='<%#Eval("f_Dinner") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_DinnarTime" Text='<%#Eval("f_DinnarTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label5" Text='<%#Eval("f_DinnarTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
                                                            </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                            
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="chart-edge " style="background-color: antiquewhite">
                                            <div class="demo-placeholder">
                                                <asp:Repeater ID="repeater5" runat="server">
                                                    <HeaderTemplate>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <table class="box" style="margin-top: 3%; text-align: center">
                                                            <tr>
                                                                <td>
                                                                    <b><asp:Label runat="server" ID="lblf_WeekdaysText" Text='<%#Eval("f_WeekdaysText") %>' ForeColor="#cc0000"></asp:Label></b></td>
                                                            </tr>

                                                            <tr>
                                                                <td>Break Fast :
                                                                <asp:Label runat="server" ID="lblf_Breakfast" Text='<%#Eval("f_Breakfast") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_BreakfastTime" Text='<%#Eval("f_BreakfastTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label3" Text='<%#Eval("f_BreakfastTimeto") %>' ForeColor="#0000ff"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Lunch  :  
                                                                <asp:Label runat="server" ID="lblf_Lunch" Text='<%#Eval("f_Lunch") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_LunchTime" Text='<%#Eval("f_LunchTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label2" Text='<%#Eval("f_LunchTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Snacks :      
                                                                <asp:Label runat="server" ID="lblf_Snacks" Text='<%#Eval("f_Snacks") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_SnacksTime" Text='<%#Eval("f_SnacksTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To 
                                                                    <asp:Label runat="server" ID="Label4" Text='<%#Eval("f_SnacksTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Diner  : 
                                                                <asp:Label runat="server" ID="lblf_Dinner" Text='<%#Eval("f_Dinner") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_DinnarTime" Text='<%#Eval("f_DinnarTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label5" Text='<%#Eval("f_DinnarTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
                                                            </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>

                                                        </table>
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="chart-edge " style="background-color: antiquewhite">
                                            <div class="demo-placeholder">
                                                <asp:Repeater ID="repeater6" runat="server">
                                                    <HeaderTemplate>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <table class="box" style="margin-top: 3%; text-align: center">
                                                            <tr>
                                                                <td>
                                                                    <b><asp:Label runat="server" ID="lblf_WeekdaysText" Text='<%#Eval("f_WeekdaysText") %>' ForeColor="#cc0000"></asp:Label></b></td>
                                                            </tr>

                                                            <tr>
                                                                <td>Break Fast :
                                                                <asp:Label runat="server" ID="lblf_Breakfast" Text='<%#Eval("f_Breakfast") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_BreakfastTime" Text='<%#Eval("f_BreakfastTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label3" Text='<%#Eval("f_BreakfastTimeto") %>' ForeColor="#0000ff"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Lunch  :  
                                                                <asp:Label runat="server" ID="lblf_Lunch" Text='<%#Eval("f_Lunch") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_LunchTime" Text='<%#Eval("f_LunchTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label2" Text='<%#Eval("f_LunchTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Snacks :      
                                                                <asp:Label runat="server" ID="lblf_Snacks" Text='<%#Eval("f_Snacks") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_SnacksTime" Text='<%#Eval("f_SnacksTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To 
                                                                    <asp:Label runat="server" ID="Label4" Text='<%#Eval("f_SnacksTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Diner  : 
                                                                <asp:Label runat="server" ID="lblf_Dinner" Text='<%#Eval("f_Dinner") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_DinnarTime" Text='<%#Eval("f_DinnarTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label5" Text='<%#Eval("f_DinnarTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
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
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="chart-edge " style="background-color: antiquewhite">
                                            <div class="demo-placeholder">
                                                <asp:Repeater ID="repeater0" runat="server">
                                                    <HeaderTemplate>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <table class="box" style="margin-top: 3%; text-align: center">
                                                            <tr>
                                                                <td>
                                                                    <b><asp:Label runat="server" ID="lblf_WeekdaysText" Text='<%#Eval("f_WeekdaysText") %>' ForeColor="#cc0000"></asp:Label></b></td>
                                                            </tr>

                                                            <tr>
                                                                <td>Break Fast :
                                                                <asp:Label runat="server" ID="lblf_Breakfast" Text='<%#Eval("f_Breakfast") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_BreakfastTime" Text='<%#Eval("f_BreakfastTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label3" Text='<%#Eval("f_BreakfastTimeto") %>' ForeColor="#0000ff"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Lunch  :  
                                                                <asp:Label runat="server" ID="lblf_Lunch" Text='<%#Eval("f_Lunch") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_LunchTime" Text='<%#Eval("f_LunchTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label2" Text='<%#Eval("f_LunchTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Snacks :      
                                                                <asp:Label runat="server" ID="lblf_Snacks" Text='<%#Eval("f_Snacks") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_SnacksTime" Text='<%#Eval("f_SnacksTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To 
                                                                    <asp:Label runat="server" ID="Label4" Text='<%#Eval("f_SnacksTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Diner  : 
                                                                <asp:Label runat="server" ID="lblf_Dinner" Text='<%#Eval("f_Dinner") %>' ForeColor="#00adef"></asp:Label></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblf_DinnarTime" Text='<%#Eval("f_DinnarTime") %>' ForeColor="#0000ff"></asp:Label>
                                                                    To
                                                                    <asp:Label runat="server" ID="Label5" Text='<%#Eval("f_DinnarTimeTo") %>' ForeColor="#0000ff"></asp:Label></td>
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
            </div>
        </div>
</asp:Content>

