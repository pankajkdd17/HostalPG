<%@ Page Title="" Language="C#" MasterPageFile="~/UserDasboard/user.master" AutoEventWireup="true" CodeFile="kyc_documents.aspx.cs" Inherits="UserDasboard_kyc_documents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="card-header card-header-icon">
                                    <i class="material-icons">note_add</i>
                                </div>
                                <h4 class="card-title" style="margin-top: 15px">KYC Documents
                                </h4>
                            </div>
                            <div class="card-content">
                                <!-- BEGIN FORM WIZARD -->
                                <div id="formwizard_simple" class="form-wizard form-wizard-horizontal">
                                    <form class="form floating-label">
                                        <div class="form-wizard-nav">
                                            <div class="progress" style="width: 75%;">
                                                <div class="progress-bar progress-bar-primary" style="width: 0%;"></div>
                                            </div>
                                            <ul class="nav nav-justified nav-pills">
                                                <li class="active"><a href="#fws_tab1" data-toggle="tab"><span class="step">1</span> <span class="title">Documentation</span></a></li>
                                                <li><a href="#fws_tab2" data-toggle="tab"><span class="step">2</span> <span class="title">Bank Account Details</span></a></li>
                                                <%--<li><a href="#fws_tab3" data-toggle="tab"><span class="step">3</span> <span class="title">SETTINGS</span></a></li>
                                                <li><a href="#fws_tab4" data-toggle="tab"><span class="step">4</span> <span class="title">CONFIRM</span></a></li>--%>
                                            </ul>
                                        </div>
                                        <!--end .form-wizard-nav -->

                                        <div class="tab-content clearfix p-30">
                                            <div class="tab-pane active" id="fws_tab1" style="margin-top: -7%">
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label for="City" class="control-label">Select Identity Proof</label>
                                                            <asp:DropDownList ID="ddlidentityProof" runat="server" class="form-control">
                                                                <asp:ListItem Text="Aadhaar Card" Value="Aadhaar Card"></asp:ListItem>
                                                                <asp:ListItem Text="Voter Id" Value="Voter Id"></asp:ListItem>
                                                                <asp:ListItem Text="Passport" Value="Passport"></asp:ListItem>
                                                                <asp:ListItem Text="Rasan Card" Value="Rasan Card"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label for="State" class="control-label">Name On Identity Proof</label>
                                                            <asp:TextBox ID="txtNameOnIdentity" runat="server" class="form-control"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNameOnIdentity" Display="Dynamic" ErrorMessage="Please Enter Name On Identity Proof" ValidationGroup="docs" ForeColor="red"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label for="City" class="control-label">Identity Proof Id No </label>
                                                            <asp:TextBox ID="txtIdentityNo" runat="server" class="form-control"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIdentityNo" Display="Dynamic" ErrorMessage="Please Enter Identity Proof Id No " ValidationGroup="docs" ForeColor="red"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6 col-sm-6">
                                                        <legend>Upload Front Side</legend>
                                                        <div class="fileinput fileinput-new text-center" data-provides="fileinput">
                                                            <div class="fileinput-new thumbnail">
                                                                <img src="../assets/img/image_placeholder.jpg" alt="...">
                                                            </div>
                                                            <div class="fileinput-preview fileinput-exists thumbnail"></div>
                                                            <div>

                                                                <span>
                                                                    <asp:FileUpload ID="FileFront" runat="server" class="fileinput-new btn btn-round btn-file" /></span>

                                                                <span>
                                                                    <a href="#pablo" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i>Remove</a></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 col-sm-6">
                                                        <legend>Upload Back Side</legend>
                                                        <div class="fileinput fileinput-new text-center" data-provides="fileinput">
                                                            <div class="fileinput-new thumbnail">
                                                                <img src="../assets/img/image_placeholder.jpg" alt="...">
                                                            </div>
                                                            <div class="fileinput-preview fileinput-exists thumbnail"></div>
                                                            <div>

                                                                <span>
                                                                    <asp:FileUpload ID="FileBack" runat="server" class="fileinput-new  btn btn-round btn-file" /></span>
                                                                <span>
                                                                    <a href="#pablo" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i>Remove</a></span>
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <div class="form-group">
                                                            <p>&nbsp</p>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <div class="form-group">
                                                            <asp:Button ID="btnSaveDocs" runat="server" Text="Save Documents" class="btn btn-primary" OnClick="btnSaveDocs_Click" ValidationGroup="docs" />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-5">
                                                        <div class="form-group">
                                                            <p>&nbsp</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="alert alert-danger" style="display: none;" id="lblError" runat="server">
                                                </div>
                                                <div class="alert alert-warrning" style="display: none;" id="lblFileselect" runat="server">
                                                    <strong>select</strong> File.
                                                </div>
                                                <div class="alert alert-success" style="display: none;" id="lblMsg" runat="server">
                                                    <strong>Well done!</strong> Document Save successfully. 
                                                </div>
                                            </div>
                                            <!--end #tab1 -->

                                            <div class="tab-pane" id="fws_tab2" style="margin-top: -7%">
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label for="Zipcode" class="control-label">Bank Name</label>
                                                            <asp:TextBox ID="txtBankName" runat="server" class="form-control" MaxLength="100"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBankName" Display="Dynamic" ErrorMessage="Please Enter Bank Name" ValidationGroup="bank" ForeColor="red"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label for="Country" class="control-label">Account Holder Name</label>
                                                            <asp:TextBox ID="txtAccountHolderName" runat="server" class="form-control" MaxLength="200"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAccountHolderName" Display="Dynamic" ErrorMessage="Please Enter Account Holder Name" ValidationGroup="bank" ForeColor="red"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label for="Country" class="control-label">Bank Account No.</label>
                                                            <asp:TextBox ID="txtBankAccountNo" runat="server" class="form-control" MaxLength="25" TextMode="Password"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtBankAccountNo" Display="Dynamic" ErrorMessage="Please Enter Bank Account No" ValidationGroup="bank" ForeColor="red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                                                                runat="server" ErrorMessage="Enter only positive integer values."
                                                                ControlToValidate="txtBankAccountNo" ValidationExpression="^(?!0+$)[0-9]+$"
                                                                Display="Dynamic" ForeColor="red" />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label for="Zipcode" class="control-label">Confirm Bank Account No.</label>
                                                            <asp:TextBox ID="txtConBankAccountNo" runat="server" class="form-control" MaxLength="25"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtConBankAccountNo" Display="Dynamic" ErrorMessage="Please Enter For Confirm Bank Account No" ValidationGroup="bank" ForeColor="red"></asp:RequiredFieldValidator>
                                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                                                runat="server" ErrorMessage="Enter only positive integer values."
                                                                ControlToValidate="txtConBankAccountNo" ValidationExpression="^(?!0+$)[0-9]+$"
                                                                Display="Dynamic" ForeColor="red" />
                                                             <asp:CompareValidator id="compareAccountNo" 
              runat="server"
              ControlToCompare="txtBankAccountNo"
              ControlToValidate="txtConBankAccountNo"
              ErrorMessage="Your Bank Account No do not match up!"
              Display="Dynamic"  ForeColor="red"/>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label for="Country" class="control-label">IFSC CODE</label>
                                                            <asp:TextBox ID="txtifsccode" runat="server" class="form-control" MaxLength="12"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtifsccode" Display="Dynamic" ErrorMessage="Please Enter IFSC CODE" ValidationGroup="bank" ForeColor="red"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label for="Zipcode" class="control-label">Branch</label>
                                                            <asp:TextBox ID="txtBranch" runat="server" class="form-control" MaxLength="20"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtBranch" Display="Dynamic" ErrorMessage="Please Enter txtBranch" ValidationGroup="bank" ForeColor="red" ></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <div class="form-group">
                                                            <p>&nbsp</p>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <div class="form-group">
                                                            <asp:Button ID="btnSaveBankDetails" runat="server" Text="Save Bank Details" class="btn btn-primary" OnClick="btnSaveBankDetails_Click" ValidationGroup="bank" />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-5">
                                                        <div class="form-group">
                                                            <p>&nbsp</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="alert alert-danger" style="display: none;" id="lblBankError" runat="server">
                                                </div>
                                                <div class="alert alert-success" style="display: none;" id="lblBankmsg" runat="server">
                                                    <strong>Well done!</strong> Bank Details Save successfully. 
                                                </div>
                                            </div>
                                            <!--end #tab2 -->

                                            <%-- <div class="tab-pane" id="fws_tab3">
                                                <br>
                                                <br>
                                                <div class="form-group">
                                                    <input type="text" name="URL" id="URL" class="form-control">
                                                    <label for="URL" class="control-label">URL</label>
                                                    <p class="help-block">Starts with http://</p>
                                                </div>
                                                <div class="form-group">
                                                    <input type="text" name="rangelength" id="rangelength" class="form-control">
                                                    <label for="rangelength" class="control-label">Range restriction</label>
                                                    <p class="help-block">Between 5 and 10</p>
                                                </div>
                                            </div>
                                            <!--end #tab3 -->

                                            <div class="tab-pane" id="fws_tab4">
                                                <br>
                                                <br>
                                                <div class="form-group">
                                                    <select id="Age1" name="Age" class="form-control">
                                                        <option value="">&nbsp;</option>
                                                        <option value="30">30</option>
                                                        <option value="40">40</option>
                                                        <option value="50">50</option>
                                                        <option value="60">60</option>
                                                        <option value="70">70</option>
                                                    </select>
                                                    <label for="Age1">Age</label>
                                                    <p class="help-block">This is supporting text for this field.</p>
                                                </div>
                                            </div>--%>
                                            <!--end #tab4 -->

                                            <%--<ul class="pager wizard ">
                                                <li class="previous first disabled"><a class="btn-raised" href="javascript:void(0);">First</a></li>
                                                <li class="previous disabled"><a class="btn-raised" href="javascript:void(0);">Previous</a></li>
                                                <li class="next last"><a class="btn-raised" href="javascript:void(0);">Last</a></li>
                                                <li class="next"><a class="btn-raised" href="javascript:void(0);">Next</a></li>
                                            </ul>--%>
                                        </div>
                                        <!--end .tab-content -->


                                    </form>
                                </div>
                                <!--end #rootwizard -->
                                <!-- END FORM WIZARD -->

                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
</asp:Content>

