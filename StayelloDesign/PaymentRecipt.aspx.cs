using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InstamojoAPI;
using System.IO;
using System.Net;
using System.Collections.Specialized;

public partial class StayelloDesign_PaymentRecipt : System.Web.UI.Page
{
    AddUsers uc = new AddUsers();
    protected void Page_Load(object sender, EventArgs e)
    {  // original
         string Insta_client_id = "iPIrkm4IcKS5wjsecdkfWmELDFyAYVhswZhZ4yhp";
        string Insta_client_secret = "Va4Pf3kaDP5FFkpPyDrTKDhJCUjnA0gHVUemb0ZaN3PRRpKQ6N2vHWKO46azr3z5jNaAzaFS9mg7B2b9MIVQRsHSvt4bSBAjXckuyfeJrYr8Q5ztjqpB9SkjvL0lPDzi";
        //test
       // string Insta_client_id = "test_v7Y6MII7rXktV4X7uBe9oS9IAoswj04buKX";
       // string Insta_client_secret = "test_Wps6is09QZW5F11ROckzWWObVUJPmdLqTuVDnIkak9WnQLCWq6IynqfMIoqcHbdxO8JWFpU0YyUoyL59RELau23FSxRBVQqI2RsPDH6uCeDdg54xJFWBn7pFUqi";
        string Insta_Endpoint = InstamojoConstants.INSTAMOJO_API_ENDPOINT;
        string Insta_Auth_Endpoint = InstamojoConstants.INSTAMOJO_AUTH_ENDPOINT;
        Instamojo objClass = InstamojoImplementation.getApi(Insta_client_id, Insta_client_secret, Insta_Endpoint, Insta_Auth_Endpoint);
        DetailsofPayment(objClass);
    }

    private void DetailsofPayment(Instamojo objClass)
    {
        PaymentOrderDetailsResponse paymentOrderDetailsResponse = objClass.getPaymentOrderDetailsByTransactionId(Session["transID"].ToString());
        lblname.Text = paymentOrderDetailsResponse.name;
        lblMobile.Text = paymentOrderDetailsResponse.phone;
        lbltransID.Text = Session["transID"].ToString();
        lblBookingId.Text = paymentOrderDetailsResponse.id;
        lblBookingAmount.Text = paymentOrderDetailsResponse.amount.ToString();
        lblStatus.Text = paymentOrderDetailsResponse.status;
        lbldate.Text = paymentOrderDetailsResponse.created_at;
        if (paymentOrderDetailsResponse.status == "completed")
        {
            string transID = Session["transID"].ToString();
            string s_mobile = Session["s_mobile"].ToString();
            uc.UpdateStatus(transID, s_mobile);
            sendSmsToBookingComp();
            sendSmsTovisiterBooking();
            sendSmsToPgManagerBooking();
        }
        else
        {
            sendSmsToBookingNotComp();
        }
    }

    private string sendSmsTovisiterBooking()
    {
        string s_mobile = Session["s_mobile"].ToString();
        string s_name = Session["s_fullname"].ToString();
        string pgmMobile = Session["pgm_mobile"].ToString();
        string pgmName = Session["pgm_name"].ToString();
        string p_address = Session["p_address"].ToString();
        string p_name = "Stayello-Accasia";

        String message = HttpUtility.UrlEncode("Dear '" + s_name + "' , Thank you for Booking with us .Your Booking Amount Is '" + lblBookingAmount.Text + "' Rs-/ Kindly reach at '" + p_name + "'  . Address:'" + p_address + "' Our PG Manager '" + pgmName + "' Phone : '" + pgmMobile + "' will show you the rooms and facilities. For Any Help : 7081521234 ");
        using (var wb = new WebClient())
        {
            byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "m6PQ8S6Ivr4-v7VgZ9cmflrCh8TxDnrz8n9iNbZGRr"},
                {"numbers" , s_mobile },
                {"message" , message},
                {"sender" , "TXTLCL"}
                });
            string result = System.Text.Encoding.UTF8.GetString(response);
            return result;
        }

    }


    private string sendSmsToPgManagerBooking()
    {
        string s_mobile = Session["s_mobile"].ToString();
        string s_name = Session["s_fullname"].ToString();
        string pgmMobile = Session["pgm_mobile"].ToString();
        string pgmName = Session["pgm_name"].ToString();
        string p_address = Session["p_address"].ToString();
        string p_name = "Stayello-Accasia";
        String message = HttpUtility.UrlEncode("Dear '" + pgmName + "' , The Booking  Amount ('" + lblBookingAmount.Text + "')Rs-/  of visiter:'" + s_name + "' and Mobile : '" + s_mobile + "' for '" + p_name + "' booking is confirmed . Address:'" + p_address + "' Kindly contact them  For Making  Visiting more comfort ");
        using (var wb = new WebClient())
        {
            byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "m6PQ8S6Ivr4-v7VgZ9cmflrCh8TxDnrz8n9iNbZGRr"},
                {"numbers" , pgmMobile },
                {"message" , message},
                {"sender" , "TXTLCL"}
                });
            string result = System.Text.Encoding.UTF8.GetString(response);
            return result;
        }

    }


    private string sendSmsToBookingComp()
    {
        string s_mobile = Session["s_mobile"].ToString();
        string s_name = Session["s_fullname"].ToString();

        String message = HttpUtility.UrlEncode("Dear '" + s_name + "' , Thank you for Booking with us .Your Booking ID : '" + lblBookingId.Text + "' and Your Booking Amount Is '" + lblBookingAmount.Text + "' and booking date " + lbldate.Text + " Rs-/ transaction is '" + lblStatus.Text + "'. For Any Help : 7081521234 ");
        using (var wb = new WebClient())
        {
            byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "m6PQ8S6Ivr4-v7VgZ9cmflrCh8TxDnrz8n9iNbZGRr"},
                {"numbers" , s_mobile },
                {"message" , message},
                {"sender" , "TXTLCL"}
                });
            string result = System.Text.Encoding.UTF8.GetString(response);
            return result;
        }

    }
    private string sendSmsToBookingNotComp()
    {
        string s_mobile = Session["s_mobile"].ToString();
        string s_name = Session["s_fullname"].ToString();

        String message = HttpUtility.UrlEncode("Dear '" + s_name + "' , Thank you for Booking with us .Your Booking ID : '" + lblBookingId.Text + "' and Your Booking Amount Is '" + lblBookingAmount.Text + "' and booking date " + lbldate.Text + " Rs-/ transaction is '" + lblStatus.Text + "'. For Any Help : 7081521234 ");
        using (var wb = new WebClient())
        {
            byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "m6PQ8S6Ivr4-v7VgZ9cmflrCh8TxDnrz8n9iNbZGRr"},
                {"numbers" , s_mobile },
                {"message" , message},
                {"sender" , "TXTLCL"}
                });
            string result = System.Text.Encoding.UTF8.GetString(response);
            return result;
        }

    }
    protected void btnBackToHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/StayelloDesign/index.aspx");
    }
}