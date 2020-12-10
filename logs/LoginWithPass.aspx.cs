using ConnectionString;
using Microsoft.ApplicationBlocks.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class LoginWithPass : System.Web.UI.Page
{
    AddUsers us = new AddUsers();
    GeneralFunctions.GeneralFunctions Gf = new GeneralFunctions.GeneralFunctions();
    static int sentOtp = 0;
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();

        }
    }
    //protected void btnSignup_Click(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        if (!checkDublicate())
    //        {
    //            string terms = chbTermsCond.Checked ? "1" : "0";
    //            us.AddUser(txtfullname.Text.Trim(), txtemail.Text.Trim(), txtPhone.Text, ddlgender.SelectedValue, txtpass.Text.Trim(), terms);
    //            lblError.Style.Add("display", "none");
    //            lblMsg.Style.Add("display", "block");
    //            Session["s_mobile"] = txtPhone.Text;
    //            Session["s_fullname"] = txtfullname.Text;
    //            Session["s_gender"] = ddlgender.SelectedValue;
    //            txtfullname.Text = string.Empty;
    //            txtemail.Text = string.Empty;
    //            txtpass.Text = string.Empty;
    //            txtpassconfirm.Text = string.Empty;
    //            Response.Redirect("~/StayelloDesign/index.aspx");
    //        }
    //        else
    //        {
    //            lblError.Style.Add("display", "block");
    //            lblMsg.Style.Add("display", "none");
    //            lblError.InnerText = "This Email/Mobile Already Exists!";
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        lblError.Style.Add("display", "block");
    //        lblMsg.Style.Add("display", "none");
    //        lblError.InnerText = ex.Message;
    //    }

    //}
    //private bool checkDublicate()
    //{
    //    bool result = false;

    //    SqlDataReader sdr = us.getdublicateSignup(txtemail.Text.Trim(), txtPhone.Text.Trim());
    //    {
    //        if (sdr.HasRows)
    //        {
    //            sdr.Read();
    //            result = true;
    //        }
    //    }
    //    return result;
    //}
    protected void btnLogin_Click(object sender, EventArgs e)  
    {  
        lblError.Text = string.Empty;  
        DataTable dtUser = new DataTable();  
        string userSession = Guid.NewGuid().ToString();  
        Session["UserSession"] = userSession;  
        try  
        {  
            dtUser = checkUserLogin(userSession, "LOGIN");  
  
            if (dtUser != null)  
            {  
                if (dtUser.Columns.Contains("RES"))  
                {  
                    lblError.Text = dtUser.Rows[0][0].ToString();  
                    ClearPage();  
                }  
                else  
                {  
                    Session["UserID"] = dtUser.Rows[0]["UserID"];  
                    Session["UserName"] = dtUser.Rows[0]["UserName"];  
                    Session["LastLogin"] = dtUser.Rows[0]["LastLogin"];  
  
                    if (string.Equals(dtUser.Rows[0]["IsLogin"].ToString(), "True"))  
                    {  
                        tblAlert.Visible = true;  
                        tblLogin.Visible = false;  
                    }  
                    else  
                    {  
                        Response.Redirect("~/Welcome.aspx");  
                    }  
                }  
            }  
            else  
            {  
                ClearPage();  
                lblError.Text = "Unexpected error.";  
            }  
        }  
        catch  
        {  
            throw;  
        }  
        finally  
        {  
            dtUser.Dispose();  
        }  
    }  
  
    protected void btnOk_Click(object sender, EventArgs e)  
    {  
        checkUserLogin(Session["UserSession"].ToString(), "CHANGELOGIN");  
        Response.Redirect("~/Welcome.aspx");  
    }  
  
    protected void btnCancel_Click(object sender, EventArgs e)  
    {  
        Response.Redirect("~/login.aspx");  
    }  
    //endregion  
 
    //region " [ Private Function ] "  
    private DataTable checkUserLogin(string userSession, string mode)  
    {  
        DataSet dsData = new DataSet();  
        SqlConnection sqlCon = null;  
        SqlDataAdapter sqlCmd = null;  
  
        try  
        {  
            using (sqlCon = new SqlConnection(CnSettings.cnString1))  
            {  
                sqlCmd = new SqlDataAdapter("USP_UserLogin", sqlCon);  
                sqlCmd.SelectCommand.CommandType = CommandType.StoredProcedure;  
                sqlCmd.SelectCommand.Parameters.AddWithValue("@loginID", txtLogin.Text.Trim());  
                sqlCmd.SelectCommand.Parameters.AddWithValue("@password", txtPassword.Text.Trim());  
                sqlCmd.SelectCommand.Parameters.AddWithValue("@sessionID", userSession);  
                sqlCmd.SelectCommand.Parameters.AddWithValue("@mode", mode);  
  
                sqlCon.Open();  
                sqlCmd.Fill(dsData);  
  
                sqlCon.Close();  
            }  
        }  
        catch  
        {  
            throw;  
        }  
        return dsData.Tables[0];  
    }  
  
    private void ClearPage()  
    {  
        txtCode.Text = string.Empty;  
        txtPassword.Text = string.Empty;  
        txtCode.Text = string.Empty;  
       // UpdateCaptchaText();  
    }  
  ////  static int count = 0;
  //  protected void btnSend_Click(object sender, EventArgs e)
  //  {
  //      sendotp();
  //      //if (txtPhone.Text.Length > 0)
  //      //{
  //      //    if (!checkDublicate())
  //      //    {
  //      //       // count++;
  //      //       // Session["countclick"] = count;
  //      //       // if (Session["countclick"] != null)
  //      //       // {
  //      //        //    if (Convert.ToInt32(Session["countclick"]) <= 4)
  //      //         //   {
  //      //                btnSend.Text = "Resend Otp";
  //      //                btnSend.BackColor = Color.Green;
  //      //                sendotp();
  //      //            }
  //      //            else if (Convert.ToInt32(Session["countclick"]) > 4)
  //      //            {
  //      //                btnSend.Attributes["disabled"] = "disabled";
  //      //                btnSend.BackColor = Color.AliceBlue;
  //      //                lblmessage.Text = "You have cross maximum limit of sending sms please try afer 60 minute";
  //      //            }
  //      //        }
  //      //        else
  //      //        {
  //      //            count = 0;
  //      //        }

  //      //    }
  //      //    else
  //      //    {
  //      //        lblError.Style.Add("display", "block");
  //      //        lblMsg.Style.Add("display", "none");
  //      //        lblError.InnerText = "This Email/Mobile Already Exists!";
  //      //    }
  //      //    // lblmessage.Text = count.ToString();
  //      //}
  //      //else
  //      //{
  //      //    lblmessage.Text = "Please enter valid mobile no.";
  //      //}
  //  }

  //  protected void sendotp()
  //  {
  //      if (txtPhone.Text.Length > 0)
  //      {
  //          string numbers = txtPhone.Text;
  //          DataSet ds = us.GetUserDetails(numbers);
  //          if (ds.Tables[0].Rows.Count != 0)
  //          {
  //              Random rand = new Random();
  //              // string apikey = "m6PQ8S6Ivr4-v7VgZ9cmflrCh8TxDnrz8n9iNbZGRr";
  //              string sentOtp = (rand.Next(100000, 999999)).ToString();
  //              string sentOtpText = "" + sentOtp + " is your OTP to login to your stayello platform. It is valid for next 10 minutes";
  //              //string senders = "TXTLCL";
  //              string senders = "STAYLO";
  //              String url = "http://37.59.76.46/api/mt/SendSMS?user=STAYLO&password=8604@sms&senderid=" + senders + "&channel=TRANS&DCS=0&flashsms=0&number=" + numbers + "&text=" + sentOtpText + "&route=02";
  //              // String url = "https://api.textlocal.in/send/?apikey=" + apikey + "&numbers=" + numbers + "&message=" + sentOtp + "&sender=" + senders;
  //              //Store the OTP in session to verify in next page.
  //              //If you want to verify from DB store the OTP in DB for verification. But it will take space
  //              Session["OTP"] = sentOtp;
  //              try
  //              {
  //                  //Create the request and send data to Ozeki NG SMS Gateway Server by HTTP connection;

  //                  HttpWebRequest myReq = (HttpWebRequest)WebRequest.Create(url);
  //                  HttpWebResponse myResp = (HttpWebResponse)myReq.GetResponse();
  //                  System.IO.StreamReader respStreamReader = new System.IO.StreamReader(myResp.GetResponseStream());
  //                  string responseString = respStreamReader.ReadToEnd();
  //                  respStreamReader.Close();
  //                  myResp.Close();

  //                  //inform the user
  //                  // lblmessage.Text = responseString;
  //                  lblmessage.Text = "OTP Sent Successfully";
  //                  lblmessage.ForeColor = System.Drawing.Color.Green;
  //                  lblmessage.Visible = true;
  //                  foreach (DataRow dr in ds.Tables[0].Rows)
  //                  {
  //                      HttpContext.Current.Session["s_mobile"] = dr["s_mobile"].ToString();
  //                      HttpContext.Current.Session["s_fullname"] = dr["s_fullname"].ToString();
  //                      HttpContext.Current.Session["s_email"] = dr["s_email"].ToString();
  //                      HttpContext.Current.Session["s_gender"] = dr["s_gender"].ToString();
  //                      HttpContext.Current.Session["s_photo"] = dr["s_photo"].ToString();
  //                      HttpContext.Current.Session["s_photoPath"] = dr["s_photoPath"].ToString();
  //                  }

  //                  txtOtp.Visible = true;
  //                  btnVerify.Visible = true;
  //                  otp.Visible = true;
  //                  btnSend.Text = "Resend Otp";
  //                  btnSend.BackColor = Color.Green;
  //              }
  //              catch (Exception ex)
  //              {
  //                  //if sending request or getting response is not successful, Ozeki NG - SMS Gateway Server may not be running
  //                  lblmessage.Text = ex.Message.ToString();
  //                  lblmessage.ForeColor = System.Drawing.Color.Blue;
  //                  txtOtp.Text = string.Empty;
  //                  lblmessage.Visible = true;
  //                  btnSend.Text = "Resend Otp";
  //                  btnSend.BackColor = Color.Green;
  //              }


  //          }
  //          else
  //          {
  //              lblmessage.Text = "This Phone Number is not Register Please SignUp";
  //              lblmessage.ForeColor = System.Drawing.Color.Blue;
  //              signupnow.Visible = true;
  //              btnSend.Visible = false;
  //              txtOtp.Visible = false;
  //              btnVerify.Visible = false;
  //              otp.Visible = false;
  //          }
  //      }
  //      else
  //      {
  //          lblmessage.Text = "Please Enter Valid  Mobile Nomber";
  //          lblmessage.ForeColor = System.Drawing.Color.Red;
  //      }
  //  }

  //  protected void btnVerify_Click(object sender, EventArgs e)
  //  {
  //      if (Session["OTP"] != null)
  //      {
  //          if (Session["OTP"].ToString() == txtOtp.Text.ToString())
  //          {
  //              HttpContext.Current.Session["s_mobile"] = Session["s_mobile"].ToString();
  //              HttpContext.Current.Session["s_fullname"] = Session["s_fullname"].ToString();
  //              HttpContext.Current.Session["s_email"] = Session["s_email"].ToString();
  //              HttpContext.Current.Session["s_gender"] = Session["s_gender"].ToString();
  //              HttpContext.Current.Session["s_photo"] = Session["s_photo"].ToString();
  //              HttpContext.Current.Session["s_photoPath"] = Session["s_photoPath"].ToString();
  //              HttpContext.Current.Session["s_mobile"] = txtPhone.Text;
  //              Response.Redirect("~/StayelloDesign/index.aspx");
  //              lblmessage.Text = "You have enter correct OTP.";
  //              Session["Result"] = "Successful";
  //              Session.Remove("OTP");
  //          }
  //          else
  //          {
  //              lblmessage.Text = "OTP does not matches";
  //              lblmessage.ForeColor = System.Drawing.Color.Red;
  //          }
  //      }
  //      else
  //      {
  //      }

  //  }
}