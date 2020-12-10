using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserDasboard_myaccount : System.Web.UI.Page
{
    AddUsers uc = new AddUsers();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["s_mobile"] != null)
        {
            showtenants();
        }
        else
        {
            Response.Redirect("~/StayelloDesign/index.aspx");

        }
    }

    private void showtenants()
    {
        string mobile = Session["s_mobile"].ToString();
        if (checktenants() != false)
        {

            ListView1.DataSource = uc.Loadtenants(mobile);
            ListView1.DataBind();
            ListView3.DataSource = uc.getDues(mobile);
            ListView3.DataBind();
            Notadded.Visible = false;
            anounce.Visible = true;
            details.Visible = true;
        }
        else
        {
            Notadded.Visible = true;
            anounce.Visible = false;
            details.Visible = false;
        }
        GridView1.DataSource = uc.LoadAnnouncement(mobile);
        GridView1.DataBind();

    }

    private bool checktenants()
    {
        bool result = false;
        string mobile = Session["s_mobile"].ToString();
        SqlDataReader sdr = uc.checkTenants(mobile);
        if (sdr.HasRows)
        {
            if (sdr.Read())
            {
                string tenants = sdr["t_MobileNo"].ToString();
                result = true;
                Notadded.Visible = false;
                anounce.Visible = true;
                details.Visible = true;
            }
            sdr.Close();
        }
        Notadded.Visible = true;
        anounce.Visible = false;
        details.Visible = false;
        return result;
    }
}