using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserDasboard_refund_settlement : System.Web.UI.Page
{
    AddUsers uc = new AddUsers();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["s_mobile"] != null)
        {
            getexitApplied();
        }
        else
        {
            Response.Redirect("~/StayelloDesign/index.aspx");

        }
    }

    private void getexitApplied()
    {
        try
        {
            string mobile = Session["s_mobile"].ToString();
            GridView1.DataSource = uc.LoadexitApplied(mobile);
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            string text = ex.Message.ToString();
            ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpoperror('" + text + "')</script>", false);
        }
    }



    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string mobile = Session["s_mobile"].ToString();
            SqlDataReader sdr = uc.getTenants(mobile);
            if (sdr.HasRows)
            {
                if (sdr.Read())
                {
                    string t_PropertyName = sdr["t_PropertyName"].ToString();
                    string t_PropertyVale = sdr["t_PropertyVale"].ToString();
                    string t_RoomNo = sdr["t_RoomNo"].ToString();
                    string t_Name = sdr["t_Name"].ToString();
                    string t_MobileNo = sdr["t_MobileNo"].ToString();
                    uc.AddExitPropertyTenants(t_PropertyName, t_PropertyVale, t_RoomNo, t_Name, t_MobileNo, lbltext.Text, txtDateOfExit.Text, txtReason.Text);
                    string text = "Your Application submited succesfully !";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpopsuccess('" + text + "')</script>", false);
                    txtDateOfExit.Text = string.Empty;
                    txtReason.Text = string.Empty;
                    getexitApplied();
                }
            }

        }
        catch (Exception ex)
        {
            string text = ex.Message.ToString();
            ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpoperror('" + text + "')</script>", false);
        }
    }

}