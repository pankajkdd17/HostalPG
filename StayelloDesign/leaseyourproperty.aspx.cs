using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StayelloDesign_leaseyourproperty : System.Web.UI.Page
{
    AddUsers uc = new AddUsers();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLeasProperty_Click(object sender, EventArgs e)
    {
        try
        {
            //UploadCv
            uc.AddLeasProperty(txtFullName.Text, txtMobile.Text, ddlCity.SelectedItem.Value, txtNoBedRoom.Text, txtNoOfWashrooom.Text, txtPropertyAddress.Text, ddlStatus.SelectedItem.Value, txtMap.Text );
            string textmsg = "Record Submited Successfully !";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpopsuccess('" + textmsg + "')</script>", false);
            txtFullName.Text = String.Empty;
            txtMobile.Text = String.Empty;
            txtNoBedRoom.Text = String.Empty;
            txtNoOfWashrooom.Text = String.Empty;
            txtPropertyAddress.Text = String.Empty;
            txtMap.Text = String.Empty;
        }
        catch (Exception ex)
        {
            string text = ex.Message.ToString();
            ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpoperror('" + text + "')</script>", false);
        }
    }
}