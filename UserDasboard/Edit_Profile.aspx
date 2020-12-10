<%@ Page Title="" Language="C#" MasterPageFile="~/UserDasboard/user.master" AutoEventWireup="true" CodeFile="Edit_Profile.aspx.cs" Inherits="UserDasboard_Edit_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .rbl input[type="radio"] {
            margin-left: 10px;
            margin-right: 10px; padding-top:2px
        }
    </style>
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="card" id="profile-main">
                            <div class="card-content">
                                <div role="tabpanel">
                                    <ul class="nav nav-pills">
                                        <li class="active"><a href="#profile11" aria-controls="profile11" role="tab" data-toggle="tab">Profile</a>
                                        </li>
                                        <%-- <li><a href="#activities11" aria-controls="messages11" role="tab" data-toggle="tab">Activities</a>
                                        </li>
                                        <li><a href="#settings11" aria-controls="settings11" role="tab" data-toggle="tab">Settings</a>
                                        </li>--%>
                                    </ul>
                                    <h3>Welcome
                                    <asp:Label ID="lblName" runat="server" ForeColor="#ff9900"></asp:Label></h3>
                                    <div class="tab-content">

                                        <div role="tabpanel" class="tab-pane active" id="profile11">
                                            <p></p>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="p-15">
                                                        <h6>What best describes your food preferences?</h6>
                                                        <hr>
                                                        <div class="row m-l-5">
                                                            <div class="col-sm-8 p-5">
                                                                <asp:RadioButtonList ID="rdbfood" runat="server" RepeatDirection="Vertical" Class="rbl">
                                                                    <asp:ListItem Text="Veg" Value="Veg"></asp:ListItem>
                                                                    <asp:ListItem Text="Non Veg" Value="Non Veg"></asp:ListItem>
                                                                    <asp:ListItem Text="Eggeterian" Value="Eggeterian"></asp:ListItem>
                                                                    <asp:ListItem Text="Pisceterian" Value="Pisceterian"></asp:ListItem>
                                                                    <asp:ListItem Text="Doesn't Matter" Value="Doesn't Matter"></asp:ListItem>
                                                                </asp:RadioButtonList>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="p-15">
                                                        <h6>Do you smoke?</h6>
                                                        <hr>
                                                        <div class="row m-l-5">
                                                            <div class="col-sm-8 p-5">
                                                                <asp:RadioButtonList ID="rdbSmoke" runat="server" RepeatDirection="Vertical" Class="rbl">
                                                                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                                                    <asp:ListItem Text="Socialy" Value="Socialy"></asp:ListItem>
                                                                    <asp:ListItem Text="No Answer" Value="No Answer"></asp:ListItem>
                                                                </asp:RadioButtonList>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-5">
                                                    <div class="p-15">
                                                        <h6>Do you drink?</h6>
                                                        <hr>
                                                        <div class="row m-l-5">
                                                            <div class="col-sm-8 p-5">
                                                                <asp:RadioButtonList ID="rdbDrink" runat="server" RepeatDirection="Vertical" Class="rbl">
                                                                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                                                    <asp:ListItem Text="Socialy" Value="Socialy"></asp:ListItem>
                                                                    <asp:ListItem Text="No Answer " Value="No Answer"></asp:ListItem>
                                                                </asp:RadioButtonList>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-7">
                                                    <div class="p-15">
                                                        <h6>How long are you planning to stay?</h6>
                                                        <hr>
                                                        <div class="row m-l-5">
                                                            <div class="col-sm-10 p-5 ">
                                                                <asp:RadioButtonList ID="rdbStay" runat="server" RepeatDirection="Vertical" Class="rbl">
                                                                    <asp:ListItem Text="Less than 3 month" Value="Less than 3 month"></asp:ListItem>
                                                                    <asp:ListItem Text="3-6 month" Value="3-6 month"></asp:ListItem>
                                                                    <asp:ListItem Text="6-12 month" Value="6-12 month"></asp:ListItem>
                                                                    <asp:ListItem Text="More Than 12 Month" Value="More Than 12 Month"></asp:ListItem>
                                                                </asp:RadioButtonList>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="p-15">
                                                        <h6>Do you Have Any food allergies ?</h6>
                                                        <hr>
                                                        <div class="row m-l-5">
                                                            <div class="col-sm-12 p-5">
                                                                <asp:TextBox ID="txtallergies" runat="server" class="form-control" TextMode="MultiLine" placeholder=" Write Somthing about your food allergies"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="p-15">
                                                        <div class="row m-l-5">
                                                            <div class="col-sm-4 p-5">
                                                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" class="btn btn-primary" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                             <div class="alert alert-success" style="display: none;" id="lblProfileUpdate" runat="server">
                                <strong>Well done!</strong>Record Save successfully . <a href="login.aspx"></a>
                            </div>
                            <div class="alert alert-danger" style="display: none;" id="lblprofileerror" runat="server">
                                <strong>Well done!</strong> Record Update successfully.
                            </div>

                                        </div>

                                        <%-- <div role="tabpanel" class="tab-pane" id="activities11">
                                            <div class="widget p-25">

                                                <div class="widget-body">
                                                    <div class="streamline sl-style-2">
                                                        <div class="sl-item sl-primary">
                                                            <div class="sl-content">
                                                                <small class="text-muted">5 mins ago</small>
                                                                <p>Williams has just joined Project X</p>
                                                            </div>
                                                        </div>
                                                        <div class="sl-item sl-danger">
                                                            <div class="sl-content">
                                                                <small class="text-muted">25 mins ago</small>
                                                                <p>Jane sent you a request to grant access to the project folder</p>
                                                            </div>
                                                        </div>
                                                        <div class="sl-item sl-success">
                                                            <div class="sl-content">
                                                                <small class="text-muted">40 mins ago</small>
                                                                <p>Kate added you to her team</p>
                                                            </div>
                                                        </div>
                                                        <div class="sl-item">
                                                            <div class="sl-content">
                                                                <small class="text-muted">55</small>
                                                                <p>John has finished his task</p>
                                                            </div>
                                                        </div>
                                                        <div class="sl-item sl-warning">
                                                            <div class="sl-content">
                                                                <small class="text-muted">60 mins ago</small>
                                                                <p>Jim shared a folder with you</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="settings11">
                                            <div class="widget p-25">
                                                <div class="widget-body">
                                                    <div class="select">
                                                        <select class="form-control">
                                                            <option>Select an Option</option>
                                                            <option>Option 1</option>
                                                            <option>Option 2</option>
                                                            <option>Option 3</option>
                                                            <option>Option 4</option>
                                                            <option>Option 5</option>
                                                        </select>
                                                    </div>
                                                    <div class="select m-t-15">
                                                        <select class="form-control">
                                                            <option>Select an Option</option>
                                                            <option>Option 1</option>
                                                            <option>Option 2</option>
                                                            <option>Option 3</option>
                                                            <option>Option 4</option>
                                                            <option>Option 5</option>
                                                        </select>
                                                    </div>

                                                    <div class="togglebutton m-t-30">
                                                        <label>
                                                            <input type="checkbox">
                                                            Toggle Setting 1
                                                        </label>
                                                    </div>
                                                    <div class="togglebutton m-t-15">
                                                        <label>
                                                            <input type="checkbox" checked>
                                                            Toggle Setting 2
                                                        </label>
                                                    </div>

                                                    <div class="checkbox m-b-15 m-t-30">
                                                        <label>
                                                            <input type="checkbox" value=""><i class="input-helper f-10"></i>Settings option 1</label>
                                                    </div>
                                                    <div class="checkbox m-b-15 m-t-10">
                                                        <label>
                                                            <input type="checkbox" value=""><i class="input-helper f-10"></i>Settings option 2</label>
                                                    </div>

                                                    <div class="m-t-30">
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="optionsRadios" checked="true">
                                                                Option 1
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="optionsRadios">
                                                                Option 2
                                                            </label>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>--%>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card card-profile">
                            <h4 class="card-title">Update Your Profile</h4>
                            <div class="card-avatar">
                                <a href="#pablo">
                                    <asp:Image ID="Image1" runat="server" class="img"  />
                                </a>
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <asp:FileUpload ID="UploadPhoto" runat="server" BackColor="#ffff66" />
                                </span>
                                <div class="form-group label-floating">
                                </div>
                            </div>
                            <div class="alert alert-danger" style="display: none;" id="lblUploaderror" runat="server">
                                <strong>Only</strong> .jpeg , jpg ,png File are allowed and Photo size maxmimum 25kb
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <div class="form-group label-floating">
                                    <asp:Button ID="btnUpdatePhoto" runat="server" Text="Save Photo" class="btn btn-warning" OnClick="btnUpdatePhoto_Click" />
                                </div>
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="material-icons">dialpad</i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Mobile</label>
                                    <asp:TextBox ID="txtPhone" runat="server" class="form-control" MaxLength="10"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegExOwnersMobile" runat="server" Display="Dynamic"
                                        ControlToValidate="txtPhone" ErrorMessage="Invalid Mobile Format"
                                        ValidationExpression="[0-9]{10}" ForeColor="#00adef"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="material-icons">face</i>
                                </span>
                                <asp:TextBox ID="txtfullname" runat="server" class="form-control" placeholder="Full Name..."></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCoName" runat="server" ForeColor="#00adef" ControlToValidate="txtfullname" Display="Dynamic" ErrorMessage="Please Enter full name" ValidationGroup="signup"></asp:RequiredFieldValidator>
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="material-icons">email</i>
                                </span>
                                <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Email..." MaxLength="200"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Please Enter Email" ForeColor="#00adef" ValidationGroup="signup">

                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                                    ForeColor="#00adef" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                    Display="Dynamic" ErrorMessage="Invalid email address" />
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="material-icons">face</i>
                                </span>
                                <asp:DropDownList ID="ddlgender" runat="server" class="form-control">
                                    <asp:ListItem Text="--Select Gender--" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                    <asp:ListItem Text="Transgender" Value="Transgender"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <asp:Button ID="btnUpdateProfile" runat="server" Text="Update" class="btn btn-primary" OnClick="btnUpdateProfile_Click" />
                                </span>
                            </div>

                            <div class="alert alert-danger" style="display: none;" id="lblerror" runat="server">
                                <strong>Well done!</strong> Due To some technical . <a href="login.aspx"></a>
                            </div>
                            <div class="alert alert-success" style="display: none;" id="lblUpdate" runat="server">
                                <strong>Well done!</strong> Record Update successfully.
                            </div>
                            <div class="alert alert-danger" style="display: none;" id="lblfile" runat="server">
                                <strong>No File</strong> Found !
                            </div>

                        </div>

                    </div>
                </div>
            </div>

        </div>
   
</asp:Content>
