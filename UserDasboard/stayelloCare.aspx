<%@ Page Title="" Language="C#" MasterPageFile="~/UserDasboard/user.master" AutoEventWireup="true" CodeFile="stayelloCare.aspx.cs" Inherits="UserDasboard_stayelloCare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
       
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card" style="min-height: 400px">
                                <div class="card-header card-header-icon">
                                    <i class="material-icons">self_improvement</i>
                                </div>
                                <div class="card-content">
                                    <h4 class="card-title">Stayello Care
                                    </h4>
                                    <div class="row">
                                        <div class="col-md-1"></div>
                                        <div class="col-md-8">
                                            <div class="form-group label-floating">
                                                <asp:Button ID="btnGenrateTicket" runat="server" Text="CREATE TICKET FOR ANY ISSUE REGARDS STAY" Class="btn btn-info btn-lg" OnClick="btnGenrateTicket_Click" />
                                            </div>
                                        </div>
                                        <div class="col-md-3"></div>
                                    </div>
                                    <div class="row" id="GenrateTicket" runat="server" visible="false">
                                        <div class="col-md-1"></div>
                                        <div class="col-md-9">
                                            <div class="card">
                                                <div class="card-content">
                                                    <div class="form-group label-floating">

                                                        <label class="control-label">Choose your ticket category</label>
                                                        <asp:DropDownList ID="ddlTicketOfIssue" runat="server" OnSelectedIndexChanged="ddlTicketOfIssue_SelectedIndexChanged" AutoPostBack="true" class="selectpicker " data-style="select-with-transition">
                                                        </asp:DropDownList>

                                                    </div>
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">I am facing an issue with</label>
                                                        <asp:DropDownList ID="ddlFacingissue" runat="server" class="selectpicker" OnSelectedIndexChanged="ddlFacingissue_SelectedIndexChanged" AutoPostBack="true" data-style="select-with-transition">
                                                        </asp:DropDownList>

                                                    </div>
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">Subcategory of my issue</label>
                                                        <asp:DropDownList ID="ddlFacingissueSubcategory" runat="server" class="selectpicker" data-style="select-with-transition">
                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">Your message</label>
                                                        <asp:TextBox ID="txtmsg" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                                    </div>

                                                    <asp:Button ID="btnCreateTicket" runat="server" Text="Create Ticket" class="btn btn-success" OnClick="btnCreateTicket_Click" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-2"></div>
                                    </div>

                                     <div class="row">
                                <div class="pad">
                                    <div class="col-md-12">
                                        <!-- MAP & BOX PANE -->
                                        <div class="box box-danger ">
                                            <!-- /.box-header -->
                                            <div class="box-body no-padding  ">

                                                <asp:ListView ID="ListView1"  runat="server">
                                                    <ItemTemplate>
                                                        
                                                        <div class="col-md-4">
                                                            <div class="pad">
                                                            <!-- MAP & BOX PANE -->
                                                            <div class="box box-success">
                                                                <div class="box-header with-border">
                                                                    <h5 class="box-title">
                                                                     Token No. <asp:Label runat="server" ID="lblp_name" Text='<%#Eval("tc_id") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label></h5>

                                                                    <div class="box-tools pull-right">
                                                                        <asp:LinkButton ID="lbtnedit" class="btn btn-box-tool"  Visible="false" runat="server"><i class="fa fa-pencil-square-o edt " ></i></asp:LinkButton>

                                                                         <asp:LinkButton ID="lbtnDelete" class="btn btn-box-tool" Visible="false"  runat="server"><i class="fa fa-trash  dlt"></i></asp:LinkButton>
                                                                    </div>
                                                                </div>
                                                                <!-- /.box-header -->
                                                                <div class="box-body no-padding">
                                                                    
                                                                        <div class="row">
                                                                            <div class="col-md-4 col-sm-4">
                                                                               
                                                                                    <!-- Map will be created here -->
                                                                                    <div id="Div2" style="min-height: 222px;">
                                                                                       <table style="text-align: left">
                                                                                <tr style="white-space: nowrap">
                                                                                    <td>Name:
                                                                                    </td>
                                                                                    <td>
                                                                                        <i class="fa fa-user" style="font-size: 17px"></i>
                                                                                        <asp:Label runat="server" ID="Label5" Text='<%#Eval("tc_Name") %>' ForeColor="#00adef" Font-Size="17px" Style="white-space: nowrap"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="white-space: nowrap">
                                                                                    <td>Room No:
                                                                                    </td>
                                                                                    <td>
                                                                                        <i class="fa fa-home" style="font-size: 17px"></i>
                                                                                        <asp:Label runat="server" ID="Label6" Text='<%#Eval("tc_RoomNo") %>' ForeColor="#00adef" Font-Size="17px" Style="white-space: nowrap"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="white-space: nowrap">
                                                                                    <td>Mobile:
                                                                                    </td>
                                                                                    <td>
                                                                                        <i class="fa fa-mobile" style="font-size: 17px"></i>
                                                                                        <asp:Label runat="server" ID="lbltc_Mobile" Text='<%#Eval("tc_Mobile") %>' ForeColor="#00adef" Font-Size="17px" Style="white-space: nowrap"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>Complaints:</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    
                                                                                    <td>
                                                                                        
                                                                                       <i class="fa fa-arrow-right "></i> &nbsp<asp:Label runat="server" ID="lblrent" Text='<%#Eval("tc_MainIssueText") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label> 

                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="white-space: nowrap;">
                                                                                    
                                                                                    <td>
                                                                                       
                                                                                      <i class="fa fa-arrow-right "></i> &nbsp  <asp:Label runat="server" ID="lblr_SecurityDeposit" Text='<%#Eval("tc_issueText") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>

                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="white-space: nowrap;">
                                                                                    
                                                                                    <td>
                                                                                       
                                                                                       <i class="fa fa-arrow-right "></i> &nbsp  <asp:Label runat="server" ID="Label1" Text='<%#Eval("tc_subCatIssueText") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>

                                                                                    </td>
                                                                                </tr>
                                                                                <tr  style="white-space: nowrap;">
                                                                                    <td>Description :</td>
                                                                                </tr>
                                                                                <tr style="white-space: nowrap;">
                                                                                    
                                                                                    <td>
                                                                                        <asp:Label runat="server" ID="Label2" Text='<%#Eval("tc_message") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>
                                                                                    </td>
                                                                                </tr>

                                                                                 <tr style="white-space: nowrap;">
                                                                                    <td>Status:</td>
                                                                                    <td>
 <asp:Label runat="server" ID="tc_status" Text='<%#Eval("tc_status") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                
                                                                            </table>
                                                                                    </div>
                                                                                
                                                                            </div>
                                                                            <!-- /.col -->
                                                                            <!-- /.col -->
                                                                        </div>
                                                                    
                                                                    <!-- /.row -->
                                                                </div>
                                                                <!-- /.box-body -->
                                                             </div>
                                                        </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:ListView>

                                            </div>
                                            <!-- /.col -->
                                            <!-- /.col -->

                                            <!-- /.box-body -->
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
        </div>

   

</asp:Content>

