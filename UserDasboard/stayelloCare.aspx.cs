using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserDasboard_stayelloCare : System.Web.UI.Page
{
    GeneralFunctions.GeneralFunctions Gf = new GeneralFunctions.GeneralFunctions();
    AddUsers uc = new AddUsers();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Gf.fillTicket("tc_id", "tc_name", "TicketCategory", ddlTicketOfIssue, "");
            ddlFacingissue.Attributes.Add("disabled", "disabled");
            ddlFacingissueSubcategory.Attributes.Add("disabled", "disabled");
            Showcomplaints();
        }
        if (Session["s_mobile"] != null)
        {
           
            Showcomplaints();
        }
        else
        {
            Response.Redirect("~/StayelloDesign/index.aspx");

        }

        
    }

    private void Showcomplaints()
    {
        try
        {
            string mobile = Session["s_mobile"].ToString();
            ListView1.DataSource = uc.GetNewComplaints(mobile);
            ListView1.DataBind();



        }
        catch (Exception ex)
        {
            string text = ex.Message.ToString();
            ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpoperror('" + text + "')</script>", false);
        }

    }
    protected void btnCreateTicket_Click(object sender, EventArgs e)
    {
        try
        {

            if((ddlTicketOfIssue.SelectedItem.Value != "0")&&(checkDublicatUser() !=false))
            {

              string t_name =  Session["t_name"].ToString(); 
              string t_MobileNo =   Session["t_MobileNo"].ToString(); 
              string t_RoomNo  =  Session["t_RoomNo"].ToString();

              SqlDataReader sdr1 = uc.GetProperty(t_MobileNo);
                    if(sdr1.HasRows)
                    {
                        if(sdr1.Read())
                        {
                            Session["t_PropertyName"] =sdr1["t_PropertyName"].ToString();
                            Session["t_PropertyVale"] =sdr1["t_PropertyVale"].ToString();
                        }
                    }
                    string t_property = Session["t_PropertyName"].ToString();
                    string t_PropertyVale = Session["t_PropertyVale"].ToString();

                    uc.AddComplaints(t_name, t_property, t_PropertyVale , t_MobileNo, t_RoomNo, ddlTicketOfIssue.SelectedItem.Text, ddlTicketOfIssue.SelectedItem.Value, ddlFacingissue.SelectedItem.Text, ddlFacingissue.SelectedItem.Value, ddlFacingissueSubcategory.SelectedItem.Text, ddlFacingissueSubcategory.SelectedItem.Value, txtmsg.Text);
              SqlDataReader sdr = uc.GetToken(t_MobileNo);
             if (sdr.HasRows)
              {
                 if (sdr.Read())
                 {
                     string TokenNo = sdr["tc_id"].ToString();
                     string textmsg = "Your Complaints Ticket Token No [ " + TokenNo + "] Genrated Successfully !";
                      ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpopsuccess('" + textmsg + "')</script>", false);
                 }
              }
             ddlFacingissue.Attributes.Add("disabled", "disabled");
             ddlFacingissueSubcategory.Attributes.Add("disabled", "disabled");
              ddlTicketOfIssue.Items.Clear();
              ddlFacingissue.Items.Clear();
              ddlFacingissueSubcategory.Items.Clear();
              txtmsg.Text = string.Empty;
              Showcomplaints();
            }
            else
            {

            }
        }
        catch (Exception ex)
        {
            string text = ex.Message.ToString();
            ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpoperror('" + text + "')</script>", false);
        }
        
    }
    protected void ddlTicketOfIssue_SelectedIndexChanged(object sender, EventArgs e)
    {
        if ((ddlTicketOfIssue.SelectedItem.Text != "Select") && (ddlTicketOfIssue.SelectedItem.Value != null))
        {
            ddlFacingissue.Attributes.Remove("disabled");
            ddlFacingissueSubcategory.Attributes.Add("disabled", "disabled");
            Gf.fillFacingIssue("fi_id", "fi_name", "FacingIssue", ddlFacingissue, "", ddlTicketOfIssue.SelectedItem.Value);
        }
        else
        {
            ddlFacingissue.Attributes.Add("disabled", "disabled");
        }
    }
    protected void ddlFacingissue_SelectedIndexChanged(object sender, EventArgs e)
    {
        if ((ddlFacingissue.SelectedItem.Text != "Select") && (ddlFacingissue.SelectedItem.Value != null))
        {
            ddlFacingissueSubcategory.Attributes.Remove("disabled");
            Gf.fillFacingSubCategoryIssue("fsc_id", "fsc_Name", "FacingSubCategoryIssue", ddlFacingissueSubcategory, "", ddlFacingissue.SelectedItem.Value);
        }
        else
        {
            ddlFacingissueSubcategory.Attributes.Add("disabled", "disabled");
        }
    }



    private bool checkDublicatUser()
    {
        bool result = false;
        try
        {

            string s_mobile = Session["s_mobile"].ToString();
            SqlDataReader sdr = uc.GetTenants(s_mobile);
            if (sdr.HasRows)
            {
                if (sdr.Read())
                {
                     Session["t_name"] = sdr["t_name"].ToString();
                    Session["t_MobileNo"] = sdr["t_MobileNo"].ToString();
                    Session["t_RoomNo"] = sdr["t_RoomNo"].ToString();
                    GenrateTicket.Visible = true;
                    result = true;
                    // string text = "Please Upload Your CV";
                    // ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpoperror('" + text + "')</script>", false);

                }
            }
            else
            {
                GenrateTicket.Visible = false;
                result =  false;
                string text = "Please Talk To P.G. Manager your " + s_mobile + " have not aloted any Room ";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpoperror('" + text + "')</script>", false);
            }

        }
        catch (Exception ex)
        {
            string text = ex.Message.ToString();
            ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpoperror('" + text + "')</script>", false);
        }
        return result;
    }
    protected void btnGenrateTicket_Click(object sender, EventArgs e)
    {
        checkDublicatUser();
    }
}