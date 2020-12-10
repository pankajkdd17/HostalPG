using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StayelloDesign_Contact : System.Web.UI.Page
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
            uc.AddContact(txtfullName.Text, txtemail.Text, txtNumber.Text, ddlGender.SelectedItem.Text, txtmsg.Text);
            string textmsg = "Record Submited Successfully !";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpopsuccess('" + textmsg + "')</script>", false);
            txtfullName.Text = String.Empty;
            txtemail.Text = String.Empty;
            txtNumber.Text = String.Empty;
            txtemail.Text = String.Empty;
            txtmsg.Text = String.Empty;

        }
        catch (Exception ex)
        {
            string text = ex.Message.ToString();
            ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpoperror('" + text + "')</script>", false);
        }

    }
}