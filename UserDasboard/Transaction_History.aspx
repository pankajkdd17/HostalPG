<%@ Page Title="" Language="C#" MasterPageFile="~/UserDasboard/user.master" AutoEventWireup="true" CodeFile="Transaction_History.aspx.cs" Inherits="UserDasboard_Transaction_History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                         <div class="row">
                        <div class="col-md-12">
                            <div class="card" style="min-height: 350px">
                                <div class="card-header card-header-icon">
                                    <i class="material-icons">account_tree</i>
                                </div>
                                <div class="card-content">
                                    <h4 class="card-title">Transaction History
                                    </h4>
                                    <div class="chart-edge">
                                        <%--<div id="line-chart" class="demo-placeholder"></div>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    </div>
                </div>
            </div>

</asp:Content>

