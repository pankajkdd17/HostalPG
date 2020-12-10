using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using ConnectionString;
using System.Drawing;

public partial class logs_login : System.Web.UI.Page
{
    DataTable dt = new DataTable();
   // static int sentOtp = 0;

    UserClass Um = new UserClass();
    AddUsers us = new AddUsers();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            // Response.Redirect("~/logs/login.aspx");
        }
    }
    //protected void btnSignIn_Click(object sender, EventArgs e)
    //{
    //    if (Um.UserLogin(txtEmail_Mobile.Text, txtpassword.Text))
    //    {
    //        Session["s_id"] = txtEmail_Mobile.Text;
    //        //Response.Redirect("~/UserDasboard/myaccount.aspx");
    //        Response.Redirect("~/StayelloDesign/index.aspx");

    //    }
    //    else
    //    {
    //        lblMsg.Style.Add("display", "block");
    //    }
    //}

    //sendsms for otp varify

    static int count = 0;

    protected void btnSend_Click(object sender, EventArgs e)
    {
        if (txtPhone.Text.Length > 0)
        {
            count++;
            Session["countclick"] = count;
            if (Session["countclick"] != null)
            {
                if (Convert.ToInt32(Session["countclick"]) <= 4)
                {
                    btnSend.Text = "Resent Otp";
                    btnSend.BackColor = Color.Green;
                    sendotp();
                }
                else if (Convert.ToInt32(Session["countclick"]) > 4)
                {
                    btnSend.Attributes["disabled"] = "disabled";
                    btnSend.BackColor = Color.AliceBlue;
                    lblmessage.Text = "You have cross maximum limit of sending sms please try afer 60 minute";
                }
            }
            else
            {
               count = 0;
            }
            // lblmessage.Text = count.ToString();
        }
        else
        {
            lblmessage.Text = "Please enter valid mobile no.";
        }
    }

    protected void sendotp()
    {
        if (txtPhone.Text.Length > 0)
        {
            string numbers = txtPhone.Text;
            DataSet ds = us.GetUserDetails(numbers);
            if (ds.Tables[0].Rows.Count != 0)
            {
                Random rand = new Random();
                // string apikey = "m6PQ8S6Ivr4-v7VgZ9cmflrCh8TxDnrz8n9iNbZGRr";
                string sentOtp = (rand.Next(100000, 999999)).ToString();
                string sentOtpText = "" + sentOtp + " is your OTP to login to your stayello platform. It is valid for next 10 minutes";
                //string senders = "TXTLCL";
                string senders = "STAYLO";
                String url = "http://37.59.76.46/api/mt/SendSMS?user=STAYLO&password=8604@sms&senderid=" + senders + "&channel=TRANS&DCS=0&flashsms=0&number=" + numbers + "&text=" + sentOtpText + "&route=02";
                // String url = "https://api.textlocal.in/send/?apikey=" + apikey + "&numbers=" + numbers + "&message=" + sentOtp + "&sender=" + senders;
                //Store the OTP in session to verify in next page.
                //If you want to verify from DB store the OTP in DB for verification. But it will take space
                Session["OTP"] = sentOtp;
                try
                {
                    //Create the request and send data to Ozeki NG SMS Gateway Server by HTTP connection;

                    HttpWebRequest myReq = (HttpWebRequest)WebRequest.Create(url);
                    HttpWebResponse myResp = (HttpWebResponse)myReq.GetResponse();
                    System.IO.StreamReader respStreamReader = new System.IO.StreamReader(myResp.GetResponseStream());
                    string responseString = respStreamReader.ReadToEnd();
                    respStreamReader.Close();
                    myResp.Close();

                    //inform the user
                    // lblmessage.Text = responseString;
                    lblmessage.Text = "OTP Sent Successfully";
                    lblmessage.ForeColor = System.Drawing.Color.Green;
                    lblmessage.Visible = true;
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        HttpContext.Current.Session["s_mobile"] = dr["s_mobile"].ToString();
                        HttpContext.Current.Session["s_fullname"] = dr["s_fullname"].ToString();
                        HttpContext.Current.Session["s_gender"] = dr["s_gender"].ToString();
                        HttpContext.Current.Session["s_photo"] = dr["s_photo"].ToString();
                        HttpContext.Current.Session["s_photoPath"] = dr["s_photoPath"].ToString();
                    }

                    txtOtp.Visible = true;
                    btnVerify.Visible = true;
                    otp.Visible = true;
                }
                catch (Exception ex)
                {
                    //if sending request or getting response is not successful, Ozeki NG - SMS Gateway Server may not be running
                    lblmessage.Text = ex.Message.ToString();
                    lblmessage.ForeColor = System.Drawing.Color.Blue;
                    txtOtp.Text = string.Empty;
                    lblmessage.Visible = true;
                }


            }
            else
            {
                lblmessage.Text = "This Phone Number is not a staff Please Contact to Admin";
                lblmessage.ForeColor = System.Drawing.Color.Blue;
                txtOtp.Text = string.Empty;
                // signupnow.Visible = true;
            }
        }
        else
        {
            lblmessage.Text = "Please Enter Valid  Mobile Nomber";
            lblmessage.ForeColor = System.Drawing.Color.Red;
        }
    }

    protected void btnVerify_Click(object sender, EventArgs e)
    {
        if (Session["OTP"] != null)
        {
            if (Session["OTP"].ToString() == txtOtp.Text)
            // if (sentOtp == Convert.ToInt32(txtOtp.Text))
            {
                lblmessage.Text = "You have enter correct OTP.";
                Session["OTP"] = null;
                Session.Remove("OTP");
                Session["Result"] = "Successful";
                Session["s_mobile"].ToString();
                Session["s_fullname"].ToString();
                Session["s_gender"].ToString();
                Session["s_photo"].ToString();
                Session["s_photoPath"].ToString();
                Response.Redirect("~/StayelloDesign/index.aspx");
            }
            else
            {
                lblmessage.Text = "OTP does not matches";
                lblmessage.ForeColor = System.Drawing.Color.Red;
            }
        }
        else
        {
            lblmessage.Text = "OTP does not matches";
            lblmessage.ForeColor = System.Drawing.Color.Red;
        }
        //Session["Result"] = "Successful";
        //HttpContext.Current.Session["s_mobile"] = txtPhone.Text;
        //Response.Redirect("~/StayelloDesign/index.aspx");
    }
}