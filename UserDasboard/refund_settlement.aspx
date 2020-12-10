<%@ Page Title="" Language="C#" MasterPageFile="~/UserDasboard/user.master" AutoEventWireup="true" CodeFile="refund_settlement.aspx.cs" Inherits="UserDasboard_refund_settlement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            var today = new Date();
            var month = ('0' + (today.getMonth() + 1)).slice(-2);
            var day = ('0' + today.getDate()).slice(-2);
            var year = today.getFullYear();
            var date = year + '-' + month + '-' + day;
            $('[id*=txtDateOfExit]').attr('min', date);
        });
    </script>
   
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card" style="min-height: 350px">
                            <div class="card-header card-header-icon">
                                <i class="material-icons">account_balance</i>
                            </div>
                            <div class="card-content">
                                <h4 class="card-title">Refund And Settlement
                                </h4>
                                <div class="chart-edge">

                                    <div class="form-horizontal">
                                        <div class="row">
                                            <asp:Label ID="lbltext" class="col-md-3 label-on-left" runat="server" Text="I want to exit stayello property on"></asp:Label>
                                            <div class="col-md-6">
                                                <div class="form-group label-floating is-empty">
                                                    <label class="control-label"></label>
                                                    <asp:TextBox ID="txtDateOfExit"  TextMode="Date" runat="server"></asp:TextBox>

                                                </div>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <label class="col-md-3 label-on-left">Reason</label>
                                            <div class="col-md-6">
                                                <div class="form-group label-floating is-empty">
                                                    <label class="control-label"></label>
                                                    <asp:TextBox ID="txtReason" class="form-control" runat="server"></asp:TextBox>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <label class="col-md-3"></label>
                                            <div class="col-md-9">
                                                <div class="form-group form-button">
                                                    <asp:Button ID="btnSubmit" class="btn btn-fill btn-info" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>

                            <div class="card-content">
                             <h4 class="card-title">Application</h4>
                                 <asp:GridView ID="GridView1" DataKeyNames="ep_id" runat="server" class="table table-bordered table-hover" AutoGenerateColumns="false">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Name">
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" ID="lblep_tenantsname" Text='<%#Eval("ep_tenantsname") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Mobile">
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" ID="lbla_crdate" Text='<%#Eval("ep_tenantsmobile") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="Application">
                                                    <ItemTemplate> 
                                                        <asp:Label runat="server" ID="lblep_text" Text='<%#Eval("Application") %> ' ForeColor="#00adef" Font-Size="17px"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <%--<asp:TemplateField HeaderText="Reason">
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" ID="lbla_crdate" Text='<%#Eval("ep_reason") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Status">
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" ID="lbla_crdate" Text='<%#Eval("ep_status") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                 <asp:TemplateField HeaderText="Applied Date">
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" ID="lbla_crdate" Text='<%#Eval("ep_crdate") %>' ForeColor="#00adef" Font-Size="17px"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>--%>
                                            </Columns>
                                        </asp:GridView>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


</asp:Content>

