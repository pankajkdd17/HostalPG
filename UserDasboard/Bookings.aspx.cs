using ConnectionString;
using InstamojoAPI;
using Microsoft.ApplicationBlocks.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserDasboard_Bookings : System.Web.UI.Page
{

    AddUsers us = new AddUsers();
    GeneralFunctions.GeneralFunctions Gf = new GeneralFunctions.GeneralFunctions();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["s_mobile"] != null)
        {
            showdata();

            //if (Request.QueryString["b_id"] != null)
            //{
            //    string b_id = Request.QueryString["b_id"].ToString();
            //    payment(b_id);
            //}

            //checkPendingPement();
        }
        else
        {
            Response.Redirect("~/StayelloDesign/index.aspx");

        }


    }

    protected void showdata()
    {
        string s_mobile = Session["s_mobile"].ToString();
        repeaterID.DataSource = us.ViewBookings(s_mobile);
        repeaterID.DataBind();
        //Gvw.HeaderRow.TableSection = TableRowSection.TableHeader;
        //Gvw.GridLines = GridLines.None;

    }
    //private void checkPendingPement()
    //{
    //    string s_mobile = Session["s_mobile"].ToString();

    //    string sql = @"SELECT b_status , trascId   FROM BookNow WHERE b_status = 'pending' and s_mobile = '" + s_mobile + "'  ";
    //    using (SqlDataReader sdr = SqlHelper.ExecuteReader(CnSettings.cnString1, CommandType.Text, sql))
    //    {
    //        if (sdr.HasRows)
    //        {
    //            sdr.Read();

    //            foreach (RepeaterItem item in repeaterID.Items)
    //            {
    //                string b_status = sdr["b_status"].ToString();
    //                if (b_status == "pending")
    //                {
    //                    LinkButton ptnPay = item.FindControl("btnPayNow") as LinkButton;
    //                    ptnPay.Visible = true;
    //                }
    //                else
    //                {
    //                    LinkButton ptnPay = item.FindControl("btnPayNow") as LinkButton;
    //                    ptnPay.Visible = false;
    //                }
    //            }
    //        }
    //    }

    //}

    //protected void btnPayNow_Click(object sender, EventArgs e)
    //{

    //    if (Session["s_mobile"] == null)
    //    {
    //        Response.Redirect("~/logs/login.aspx");
    //    }
    //    else if (Session["s_mobile"] != null)
    //    {
    //        DataSet ds = us.getpgManager(); ;
    //        if (ds != null)
    //        {
    //            int tblCount = ds.Tables.Count;
    //            if (tblCount != 0)
    //            {
    //                foreach (DataRow dr in ds.Tables[0].Rows)
    //                {
    //                    HttpContext.Current.Session["pgm_name"] = dr["pgm_name"].ToString();
    //                    HttpContext.Current.Session["pgm_mobile"] = dr["pgm_mobile"].ToString();
    //                    HttpContext.Current.Session["p_name"] = dr["p_name"].ToString();
    //                    HttpContext.Current.Session["p_address"] = dr["p_address"].ToString();
    //                }
    //            }
    //        }
    //        payment(b_id);

    //    }
    //}
    //private void payment(string b_id) 
    //{

    //    string s_mobile = Session["s_mobile"].ToString();

    //    string sql = @"SELECT b_amount , b_status , trascId   FROM BookNow WHERE b_status = 'pending' and b_id = '" + b_id + "' and s_mobile ='" + s_mobile + "'  ";
    //    using (SqlDataReader sdr = SqlHelper.ExecuteReader(CnSettings.cnString1, CommandType.Text, sql))
    //    {
    //        if (sdr.HasRows)
    //        {
    //            sdr.Read();
    //            Session["trascId"] = sdr["trascId"].ToString();
    //            Session["b_status"] = sdr["b_status"].ToString();
    //            Session["b_amount"] = sdr["b_amount"].ToString();

    //            // Original
    //            //string Insta_client_id = "iPIrkm4IcKS5wjsecdkfWmELDFyAYVhswZhZ4yhp";
    //            //string Insta_client_secret = "Va4Pf3kaDP5FFkpPyDrTKDhJCUjnA0gHVUemb0ZaN3PRRpKQ6N2vHWKO46azr3z5jNaAzaFS9mg7B2b9MIVQRsHSvt4bSBAjXckuyfeJrYr8Q5ztjqpB9SkjvL0lPDzi";
    //            // test

    //            string Insta_client_id = "test_v7Y6MII7rXktV4X7uBe9oS9IAoswj04buKX";
    //            string Insta_client_secret = "test_Wps6is09QZW5F11ROckzWWObVUJPmdLqTuVDnIkak9WnQLCWq6IynqfMIoqcHbdxO8JWFpU0YyUoyL59RELau23FSxRBVQqI2RsPDH6uCeDdg54xJFWBn7pFUqi";
    //            string Insta_Endpoint = InstamojoConstants.INSTAMOJO_API_ENDPOINT;
    //            string Insta_Auth_Endpoint = InstamojoConstants.INSTAMOJO_AUTH_ENDPOINT;

    //            Instamojo objClass = InstamojoImplementation.getApi(Insta_client_id, Insta_client_secret, Insta_Endpoint, Insta_Auth_Endpoint);
    //            CreatePaymentOrder(objClass);
    //        }
    //    }



    //}

    //private void CreatePaymentOrder(Instamojo objClass)
    //{
    //    if (Session["s_mobile"] == null)
    //    {
    //        Response.Redirect("~/logs/login.aspx");
    //    }
    //    else if (Session["s_mobile"] != null)
    //    {
    //        string trascId = Session["trascId"].ToString();
    //        string b_status = Session["b_status"].ToString();
    //        string b_amount = Session["b_amount"].ToString();
    //        PaymentOrder objPaymentRequest = new PaymentOrder();
    //        //Required POST parameters

    //        objPaymentRequest.name = Session["s_fullname"].ToString();
    //        objPaymentRequest.email = Session["s_email"].ToString();
    //        objPaymentRequest.phone = Session["s_mobile"].ToString();
    //        objPaymentRequest.description = "Test description";
    //        objPaymentRequest.amount = Convert.ToDouble(b_amount);
    //        objPaymentRequest.currency = "INR";

    //        //string randomName = Path.GetRandomFileName();
    //        //randomName = randomName.Replace(".", string.Empty);
    //        //objPaymentRequest.transaction_id = "test" + randomName;
    //        Session["transID"] = Session["trascId"].ToString();

    //        objPaymentRequest.redirect_url = "http://localhost:1746/Stayello/StayelloDesign/PaymentRecipt.aspx";
    //        //Extra POST parameters 

    //        if (objPaymentRequest.validate())
    //        {
    //            if (objPaymentRequest.emailInvalid)
    //            {
    //                Response.Write("Email is not valid");
    //            }
    //            if (objPaymentRequest.nameInvalid)
    //            {
    //                Response.Write("Name is not valid");
    //            }
    //            if (objPaymentRequest.phoneInvalid)
    //            {
    //                Response.Write("Phone is not valid");
    //            }
    //            if (objPaymentRequest.amountInvalid)
    //            {
    //                Response.Write("Amount is not valid");
    //            }
    //            if (objPaymentRequest.currencyInvalid)
    //            {
    //                Response.Write("Currency is not valid");
    //            }
    //            if (objPaymentRequest.transactionIdInvalid)
    //            {
    //                Response.Write("Transaction Id is not valid");
    //            }
    //            if (objPaymentRequest.redirectUrlInvalid)
    //            {
    //                Response.Write("Redirect Url Id is not valid");
    //            }
    //            if (objPaymentRequest.webhookUrlInvalid)
    //            {
    //                Response.Write("Webhook URL is not valid");
    //            }

    //        }
    //        else
    //        {
    //            try
    //            {
    //                CreatePaymentOrderResponse objPaymentResponse = objClass.createNewPaymentRequest(objPaymentRequest);
    //                Response.Redirect(objPaymentResponse.payment_options.payment_url);
    //            }
    //            catch (ArgumentNullException ex)
    //            {
    //                Response.Write(ex.Message);
    //            }
    //            catch (WebException ex)
    //            {
    //                Response.Write(ex.Message);
    //            }
    //            catch (IOException ex)
    //            {
    //                Response.Write(ex.Message);
    //            }
    //            catch (InvalidPaymentOrderException ex)
    //            {
    //                if (!ex.IsWebhookValid())
    //                {
    //                    Response.Write("Webhook is invalid");
    //                }

    //                if (!ex.IsCurrencyValid())
    //                {
    //                    Response.Write("Currency is Invalid");
    //                }

    //                if (!ex.IsTransactionIDValid())
    //                {
    //                    Response.Write("Transaction ID is Inavlid");
    //                }
    //            }
    //            catch (ConnectionException ex)
    //            {
    //                Response.Write(ex.Message);
    //            }
    //            catch (BaseException ex)
    //            {
    //                Response.Write(ex.Message);
    //            }
    //            catch (Exception ex)
    //            {
    //                Response.Write("Error:" + ex.Message);
    //            }
    //        }
    //    }
    //}

    //public string b_id { get; set; }
}