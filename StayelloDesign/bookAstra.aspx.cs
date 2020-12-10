using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InstamojoAPI;
using System.IO;

public partial class StayelloDesign_Astra : System.Web.UI.Page
{
    AddUsers us = new AddUsers();
    GeneralFunctions.GeneralFunctions gf = new GeneralFunctions.GeneralFunctions();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnBookNow_Click(object sender, EventArgs e)
    {
        if (Session["s_mobile"] == null)
        {
            Response.Redirect("~/logs/login.aspx");
        }
        else if (Session["s_mobile"] != null)
        {
            DataSet ds = us.getpgManager(); ;
            if (ds != null)
            {
                int tblCount = ds.Tables.Count;
                if (tblCount != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        HttpContext.Current.Session["pgm_name"] = dr["pgm_name"].ToString();
                        HttpContext.Current.Session["pgm_mobile"] = dr["pgm_mobile"].ToString();
                        HttpContext.Current.Session["p_name"] = dr["p_name"].ToString();
                        HttpContext.Current.Session["p_address"] = dr["p_address"].ToString();
                    }
                }
            }
            payment();

        }
    }
    private void addBooking()
    {

        if (txtbookingAmount.Text.Length >= 4)
        {
            string s_mobile = Session["s_mobile"].ToString();
            string s_name = Session["s_fullname"].ToString();
            string s_email = Session["s_email"].ToString();
            string s_gender = Session["s_gender"].ToString();
            string pgmName = Session["pgm_name"].ToString();
            string pgmMobile = Session["pgm_mobile"].ToString();
            string p_name = Session["p_name"].ToString();
            string p_address = Session["p_address"].ToString();
            string trascId = Session["transID"].ToString();
            txtProperty.Text = "Stayello-Astra";
            try
            {
                us.addBookingUseracc(trascId, s_name, s_mobile, s_gender, txtbookingAmount.Text, txtProperty.Text, p_address, pgmName, pgmMobile, ddlroomtype.SelectedValue);
                lblbok.Style.Add("display", "block");
                //txtdate.Text = string.Empty;

                // Response.Redirect("~/UserDasboard/myaccount.aspx");
            }
            catch (Exception ex)
            {
                lblError.Style.Add("display", "block");
                lblError.InnerText = ex.Message;
            }
        }
        else
        {
            lblbookmsg.Text = "Please Enter Minimum 1000 Rs-/ Of Booking Amount";
        }
    }

    private void payment()
    {
        // Original
        string Insta_client_id = "iPIrkm4IcKS5wjsecdkfWmELDFyAYVhswZhZ4yhp";
        string Insta_client_secret = "Va4Pf3kaDP5FFkpPyDrTKDhJCUjnA0gHVUemb0ZaN3PRRpKQ6N2vHWKO46azr3z5jNaAzaFS9mg7B2b9MIVQRsHSvt4bSBAjXckuyfeJrYr8Q5ztjqpB9SkjvL0lPDzi";
        // test
        //string Insta_client_id = "test_v7Y6MII7rXktV4X7uBe9oS9IAoswj04buKX";
        //string Insta_client_secret = "test_Wps6is09QZW5F11ROckzWWObVUJPmdLqTuVDnIkak9WnQLCWq6IynqfMIoqcHbdxO8JWFpU0YyUoyL59RELau23FSxRBVQqI2RsPDH6uCeDdg54xJFWBn7pFUqi";
        string Insta_Endpoint = InstamojoConstants.INSTAMOJO_API_ENDPOINT;
        string Insta_Auth_Endpoint = InstamojoConstants.INSTAMOJO_AUTH_ENDPOINT;

        Instamojo objClass = InstamojoImplementation.getApi(Insta_client_id, Insta_client_secret, Insta_Endpoint, Insta_Auth_Endpoint);
        CreatePaymentOrder(objClass);
    }

    private void CreatePaymentOrder(Instamojo objClass)
    {
        if (Session["s_mobile"] == null)
        {
            Response.Redirect("~/logs/login.aspx");
        }
        else if (Session["s_mobile"] != null)
        {

            PaymentOrder objPaymentRequest = new PaymentOrder();
            //Required POST parameters

            objPaymentRequest.name = Session["s_fullname"].ToString();
            objPaymentRequest.email = Session["s_email"].ToString();
            objPaymentRequest.phone = Session["s_mobile"].ToString();
            objPaymentRequest.description = txtDescription.Text;
            objPaymentRequest.amount = Convert.ToInt32(txtbookingAmount.Text);
            objPaymentRequest.currency = "INR";

            string randomName = Path.GetRandomFileName();
            randomName = randomName.Replace(".", string.Empty);
            objPaymentRequest.transaction_id = "test" + randomName;
            Session["transID"] = objPaymentRequest.transaction_id;

            //  objPaymentRequest.redirect_url = "http://localhost:1746/Stayello/StayelloDesign/PaymentRecipt.aspx";
            objPaymentRequest.redirect_url = "https://www.stayello.com/StayelloDesign/PaymentRecipt.aspx";
            //Extra POST parameters 
            addBooking();
            if (objPaymentRequest.validate())
            {
                if (objPaymentRequest.emailInvalid)
                {
                    Response.Write("Email is not valid");
                }
                if (objPaymentRequest.nameInvalid)
                {
                    Response.Write("Name is not valid");
                }
                if (objPaymentRequest.phoneInvalid)
                {
                    Response.Write("Phone is not valid");
                }
                if (objPaymentRequest.amountInvalid)
                {
                    Response.Write("Amount is not valid");
                }
                if (objPaymentRequest.currencyInvalid)
                {
                    Response.Write("Currency is not valid");
                }
                if (objPaymentRequest.transactionIdInvalid)
                {
                    Response.Write("Transaction Id is not valid");
                }
                if (objPaymentRequest.redirectUrlInvalid)
                {
                    Response.Write("Redirect Url Id is not valid");
                }
                if (objPaymentRequest.webhookUrlInvalid)
                {
                    Response.Write("Webhook URL is not valid");
                }

            }
            else
            {
                try
                {
                    CreatePaymentOrderResponse objPaymentResponse = objClass.createNewPaymentRequest(objPaymentRequest);
                    Response.Redirect(objPaymentResponse.payment_options.payment_url);
                }
                catch (ArgumentNullException ex)
                {
                    Response.Write(ex.Message);
                }
                catch (WebException ex)
                {
                    Response.Write(ex.Message);
                }
                catch (IOException ex)
                {
                    Response.Write(ex.Message);
                }
                catch (InvalidPaymentOrderException ex)
                {
                    if (!ex.IsWebhookValid())
                    {
                        Response.Write("Webhook is invalid");
                    }

                    if (!ex.IsCurrencyValid())
                    {
                        Response.Write("Currency is Invalid");
                    }

                    if (!ex.IsTransactionIDValid())
                    {
                        Response.Write("Transaction ID is Inavlid");
                    }
                }
                catch (ConnectionException ex)
                {
                    Response.Write(ex.Message);
                }
                catch (BaseException ex)
                {
                    Response.Write(ex.Message);
                }
                catch (Exception ex)
                {
                    Response.Write("Error:" + ex.Message);
                }
            }
        }
    }
   
}