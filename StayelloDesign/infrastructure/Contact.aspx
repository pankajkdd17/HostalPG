<%@ Page Title="" Language="C#" MasterPageFile="~/StayelloDesign/UserMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Stayello.StayelloDesign.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid main" style="margin-top: 5px">
        <div class="row">
            <div class="col-lg-12">
                <fieldset>
                    <legend class="text-center text-muted mt-2">Contact us</legend>
                </fieldset>
                 <div class="row">
                      <div class="col-sm-3 " >
                          </div>
                        <div class="col-sm-6" >
                             <div class="card-body store-body">
                            <div class="container" style="background-color: #fddd01;">

                                <div class="row">
                                    <div class="col-sm-2 col-md-2">
                                    </div>
                                    <div class="col-md-8 col-sm-12  col-lg-12" style="padding-top: 3%">
                                        <div>
                                            <div class="row">
                                                <div class="col-sm-2 col-md-2">
                                                </div>
                                                <div class="col-sm-2 col-lg-2 col-md-1 ">
                                                    <p>
                                                        <img src="infrastructure/img/CallUs.jpg" class="rounded-circle img-fluid" alt="Responsive image" />
                                                    </p>
                                                </div>
                                                <div class="col-md-8 col-sm-8">
                                                    <p>
                                                        Call us to know more:
                                                    <br />
                                                        <span class="text-muted"><b>Customer Care:</b> +917081521234 </span>
                                                        <br />
                                                        <span class="text-muted"><a href="#" style="white-space: nowrap"><b>Email:</b>info@stayello.com</a></span>
                                                    </p>
                                                </div>
                                                <div class="col-sm-2 col-md-2">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-1 col-sm-2">
                                    </div>
                                    <div class="col-md-8 col-sm-12  col-lg-12">
                                        <img src="infrastructure/img/line.png" class="img-fluid" alt="Responsive image" />
                                    </div>
                                    <div class="col-md-1">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12 col-md-12">
                                        <div class="well well-sm">
                                            <div class="form-horizontal">
                                                <div class="form-group">
                                                    <label class="col control-label" for="name">Your full Name:</label>
                                                    <div class="col">
                                                        <input id="name" name="name" type="text" placeholder="Full Name" class="form-control">
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col control-label" for="email">Your E-mail:</label>
                                                    <div class="col">
                                                        <input id="email" name="email" type="text" placeholder="email@mail.com" class="form-control">
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col control-label" for="phone">Your Phone Number:</label>
                                                    <div class="col">
                                                        <input id="Text1" name="email" type="text" placeholder="12345678910" class="form-control">
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col control-label" for="phone">Your Gender:</label>
                                                    <div class="col">
                                                        <select name="sub" class="form-control">
                                                            <option value="">Select Gender</option>
                                                            <option value="Girls">Girl</option>
                                                            <option value="Boys">Boys</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col control-label" for="message">Your message:</label>
                                                    <div class="col">
                                                        <textarea class="form-control" id="message" name="message" placeholder="Hello meassge is " rows="5"></textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-sm-4 col-md-4">
                                                        </div>
                                                        <div class="col-sm-4 col-md-4">
                                                            <button type="submit" class="btn btn-success btn-lg">Submit</button>
                                                        </div>
                                                        <div class="col-sm-4">
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
                      <div class="col-sm-3" >
                          </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
