<%@ Page Title="" Language="C#" MasterPageFile="~/StayelloDesign/UserMaster.master" AutoEventWireup="true" CodeFile="PaymentRecipt.aspx.cs" Inherits="StayelloDesign_PaymentRecipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12" style="margin-top: 7%">
                <div>
                    <div class="col-sm-4">
                    </div>
                    <div class="col-sm-6">
                        <div>
                            <div class="row">
                                <input type="button" onclick="printDiv('printableArea')" value="print" class="btn-dark" />
                                &nbsp &nbsp<asp:Button ID="btnBackToHome" runat="server" Text="Back To home" OnClick="btnBackToHome_Click" class="btn-primary" />
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-2">
                    </div>

                    <div class="col-sm-8">
                        <section class="table">
                            <div class="row">
                                <table style="border: solid 1px solid #ffd800">

                                    <tr>
                                        <th>Name</th>
                                        <th>Mobile </th>
                                        <th>Transaction  Status </th>
                                        <th>Transaction Date</th>
                                        <th>Transaction Booking Id </th>
                                        <th>Transaction Amount </th>
                                        <th>Transaction Id:</th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblname" runat="server" ForeColor="#00aedf"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblMobile" runat="server" ForeColor="#00aedf"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblStatus" runat="server" ForeColor="#00aedf"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lbldate" runat="server" ForeColor="#00aedf"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblBookingId" runat="server" ForeColor="#00aedf"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblBookingAmount" runat="server" ForeColor="#00aedf"></asp:Label>
                                        </td>
                                        <td>:<asp:Label ID="lbltransID" runat="server" ForeColor="#00aedf"></asp:Label>
                                        </td>
                                    </tr>

                                </table>
                            </div>
                        </section>
                        <div class="col-sm-2">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

