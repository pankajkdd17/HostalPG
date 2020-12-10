using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StayelloDesign_Careers : System.Web.UI.Page
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
            if (UploadCv.HasFile)
            {
                string fileExtensionUploadCv = System.IO.Path.GetExtension(UploadCv.FileName);
                int fileSizeUploadCv = UploadCv.PostedFile.ContentLength;

                string filenameUploadCv = System.IO.Path.GetFileNameWithoutExtension(UploadCv.FileName) + DateTime.Now.ToString("ddMMyyyyHHmmssms") + System.IO.Path.GetExtension(fileExtensionUploadCv);
                UploadCv.PostedFile.SaveAs(Server.MapPath("~/StayelloDesign/UploadedCV/") + filenameUploadCv);
                string filepathUploadCv = Server.MapPath("~/StayelloDesign/UploadedCV/");
                string pathUploadCv = "StayelloDesign/UploadedCV/" + filenameUploadCv;

                uc.AddCareers(txtFullName.Text, txtMobile.Text, txtemail.Text, ddlApplyfor.SelectedItem.Text, filenameUploadCv, pathUploadCv);
                string textmsg = "Record Submited Successfully !";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpopsuccess('" + textmsg + "')</script>", false);

                txtFullName.Text = String.Empty;
                txtMobile.Text = String.Empty;
                txtemail.Text = String.Empty;
            }
            else {
                string text = "Please Upload Your CV";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpoperror('" + text + "')</script>", false);
            }
        }
        catch(Exception ex)
        {
            string text = ex.Message.ToString();
            ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpoperror('" + text + "')</script>", false);
        }

    }
}