using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StayelloDesign_aura : System.Web.UI.Page
{
    AddUsers us = new AddUsers();
    GeneralFunctions.GeneralFunctions gf = new GeneralFunctions.GeneralFunctions();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void btnVisiting_Click(object sender, EventArgs e)
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
            addvisiting();
        }
    }

    private void addvisiting()
    {
        string s_mobile = Session["s_mobile"].ToString();
        string s_name = Session["s_fullname"].ToString();
        string s_gender = Session["s_gender"].ToString();
        string pgmName = Session["pgm_name"].ToString();
        string pgmMobile = Session["pgm_mobile"].ToString();
        string p_name = Session["p_name"].ToString();
        string p_address = Session["p_address"].ToString();
        txtProperty.Text = "Stayello-aura";
        try
        {

            us.addvisitedUser(s_name, s_mobile, s_gender, txtProperty.Text, p_address, pgmName, pgmMobile, ddlroomtype.SelectedValue, txtdate.Text, ddlVisitingTime.SelectedValue);
            lblMsg.Style.Add("display", "block");
            sendSmsToPgManager();
            sendSmsTovisiter();
            // Response.Redirect("~/UserDasboard/myaccount.aspx");
        }
        catch (Exception ex)
        {
            lblError.Style.Add("display", "block");
            lblMsg.Style.Add("display", "none");
            lblError.InnerText = ex.Message;
        }

    }

    private string sendSmsTovisiter()
    {
        string s_mobile = Session["s_mobile"].ToString();
        string s_name = Session["s_fullname"].ToString();
        string pgmMobile = Session["pgm_mobile"].ToString();
        string pgmName = Session["pgm_name"].ToString();
        string p_address = Session["p_address"].ToString();
        string p_name = "Stayello-aura";

        String message = HttpUtility.UrlEncode("Dear '" + s_name + "' , Thank you for scheduling a visit with us . Kindly reach at '" + p_name + "' between '" + ddlVisitingTime.SelectedValue + "'  on '" + txtdate.Text + "' . Address:'" + p_address + "' Our PG Manager '" + pgmName + "' Phone : '" + pgmMobile + "' will show you the rooms and facilities. For Any Help : 7081521234 ");
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

    private string sendSmsToPgManager()
    {
        string s_mobile = Session["s_mobile"].ToString();
        string s_name = Session["s_fullname"].ToString();
        string pgmMobile = Session["pgm_mobile"].ToString();
        string pgmName = Session["pgm_name"].ToString();
        string p_address = Session["p_address"].ToString();
        string p_name = "Stayello-aura";
        String message = HttpUtility.UrlEncode("Dear '" + pgmName + "' , The scheduling of visiter:'" + s_name + "' and Mobile : '" + s_mobile + "' for '" + p_name + "' is confirmed ,  between '" + ddlVisitingTime.SelectedValue + "'  on '" + txtdate.Text + "' . Address:'" + p_address + "' Kindly contact them  For Making  Visiting more comfort ");
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

  
}