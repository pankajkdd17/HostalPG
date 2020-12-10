using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StayelloDesign_coachinginstitutes : System.Web.UI.Page
{
    AddUsers uc = new AddUsers();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            //UploadCv
            uc.AddCoaching( txtCoachingName.Text, txtFullName.Text, txtMobile.Text, txtemail.Text , txtDesignation.Text);
            string textmsg = "Record Submited Successfully !";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpopsuccess('" + textmsg + "')</script>", false);
            txtCoachingName.Text = String.Empty;
            txtFullName.Text = String.Empty;
            txtMobile.Text = String.Empty;
            txtemail.Text = String.Empty;
            txtDesignation.Text = String.Empty;
           
        }
        catch (Exception ex)
        {
            string text = ex.Message.ToString();
            ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpoperror('" + text + "')</script>", false);
        }
    }
}