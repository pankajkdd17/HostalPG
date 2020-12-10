using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserDasboard_kyc_documents : System.Web.UI.Page
{
    AddUsers uc = new AddUsers();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["s_mobile"] != null)
        {
           // showtenants();
        }
        else
        {
            Response.Redirect("~/StayelloDesign/index.aspx");

        }
    }
    protected void btnSaveDocs_Click(object sender, EventArgs e)
    {

        if (FileFront.HasFile && FileBack.HasFile)
        {
            string fileExtensionPhotoFront = System.IO.Path.GetExtension(FileFront.FileName);
            int fileSizeFront = FileFront.PostedFile.ContentLength;

            string filenamePhotoFront = System.IO.Path.GetFileNameWithoutExtension(FileFront.FileName) + DateTime.Now.ToString("ddMMyyyyHHmmssms") + System.IO.Path.GetExtension(fileExtensionPhotoFront);
            FileFront.PostedFile.SaveAs(Server.MapPath("~/UserDasboard/Documents/") + filenamePhotoFront);
            string filepathFront = Server.MapPath("UserDasboard/Documents/");
            string pathPhotoFront = "UserDasboard/Documents/" + filenamePhotoFront;

            string fileExtensionPhotoBack = System.IO.Path.GetExtension(FileBack.FileName);
            int fileSizeBack = FileBack.PostedFile.ContentLength;

            string filenamePhotoBack = System.IO.Path.GetFileNameWithoutExtension(FileBack.FileName) + DateTime.Now.ToString("ddMMyyyyHHmmssms") + System.IO.Path.GetExtension(fileExtensionPhotoBack);
            FileBack.PostedFile.SaveAs(Server.MapPath("~/UserDasboard/Documents/") + filenamePhotoBack);
            string filepathBack = Server.MapPath("UserDasboard/Documents/");
            string pathPhotoBack = "UserDasboard/Documents/" + filenamePhotoBack;

            try
            {
                if (((fileExtensionPhotoFront == ".jpg") || (fileExtensionPhotoFront == ".jpeg") || (fileExtensionPhotoFront == ".png") || (fileExtensionPhotoFront == ".pdf")) && ((fileExtensionPhotoBack == ".jpg") || (fileExtensionPhotoBack == ".jpeg") || (fileExtensionPhotoBack == ".png") || (fileExtensionPhotoBack == ".pdf")))
                {
                    string mobile = Session["s_mobile"].ToString();
                    uc.AddKycDocuments(mobile, ddlidentityProof.SelectedValue, txtNameOnIdentity.Text, txtIdentityNo.Text, filenamePhotoFront, pathPhotoFront, filenamePhotoBack, pathPhotoBack);
                    lblMsg.Style.Add("display", "block");
                    txtNameOnIdentity.Text = string.Empty;
                    txtIdentityNo.Text = string.Empty;

                }
                else
                {
                    lblError.Style.Add("display", "block");

                }
            }
            catch (Exception ex)
            {
                lblError.Style.Add("display", "block");
                lblError.InnerText = ex.Message;
            }
        }
        else {
            lblFileselect.Style.Add("display", "block");
        }
    }
    protected void btnSaveBankDetails_Click(object sender, EventArgs e)
    {
        try
        {
            string mobile = Session["s_mobile"].ToString();
            uc.AddBankDetails(mobile , txtBankName.Text  ,txtAccountHolderName.Text ,txtBankAccountNo.Text ,txtifsccode.Text ,txtBranch.Text );
            lblBankmsg.Style.Add("display", "block");
            txtBankName.Text = string.Empty;
            txtAccountHolderName.Text = string.Empty;
            txtBankAccountNo.Text = string.Empty;
            txtifsccode.Text = string.Empty;
            txtBranch.Text = string.Empty;
        }
        catch (Exception ex)
        {
            lblBankError.Style.Add("display", "block");
            lblBankError.InnerText = ex.Message;
        }
    }
}