using ConnectionString;
using Microsoft.ApplicationBlocks.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserDasboard_Edit_Profile : System.Web.UI.Page
{
    AddUsers uc = new AddUsers();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["s_mobile"] != null)
        {

            LoadProfileData();

        }
        else
        {
            Response.Redirect("~/StayelloDesign/index.aspx");

        }

    }

    private void LoadProfileData()
    {
        string mobile = Session["s_mobile"].ToString();
        SqlDataReader sdr = uc.getprofile(mobile);
        {
            if (sdr.HasRows)
            {
                sdr.Read();
                {
                    txtfullname.Text = sdr["s_fullname"].ToString();
                    txtPhone.Text = sdr["s_mobile"].ToString();
                    txtemail.Text = sdr["s_email"].ToString();
                    ddlgender.SelectedValue = sdr["s_gender"].ToString();
                    if ((sdr["s_photoPath"].ToString() != null) && (sdr["s_photoPath"].ToString() != string.Empty))
                    {
                        Image1.ImageUrl = sdr["s_photoPath"].ToString();
                    }
                    else
                    {
                        Image1.ImageUrl = "~/UserDasboard/PhotoLogo/defaulticon.png";
                    }
                }
            }
            sdr.Close();

        }
    }
    protected void btnUpdateProfile_Click(object sender, EventArgs e)
    {
        try
        {
            uc.UpdateProfileData(txtPhone.Text, txtfullname.Text, txtemail.Text, ddlgender.SelectedValue);
            lblUpdate.Style.Add("display", "block");
            txtPhone.Text = string.Empty;
            txtfullname.Text = string.Empty;
            txtemail.Text = string.Empty;
            LoadProfileData();
        }
        catch (Exception ex)
        {
            lblerror.Style.Add("display", "block");
            lblerror.InnerText = ex.Message;
        }
    }

    protected void btnUpdatePhoto_Click(object sender, EventArgs e)
    {
        if (UploadPhoto.HasFile)
        {
            string fileExtensionPhoto = System.IO.Path.GetExtension(UploadPhoto.FileName);
            int fileSizePhoto = UploadPhoto.PostedFile.ContentLength;

            string filenamePhoto = System.IO.Path.GetFileNameWithoutExtension(UploadPhoto.FileName) + DateTime.Now.ToString("ddMMyyyyHHmmssms") + System.IO.Path.GetExtension(fileExtensionPhoto);
            UploadPhoto.PostedFile.SaveAs(Server.MapPath("~/UserDasboard/Photo/") + filenamePhoto);
            string filepath = Server.MapPath("~/UserDasboard/Photo/");
            string pathPhoto = "~/UserDasboard/Photo/" + filenamePhoto;

            try
            {
                if ((fileExtensionPhoto == ".jpg") || (fileExtensionPhoto == ".jpeg") || (fileExtensionPhoto == ".png"))
                {
                    uc.UpdatePhoto(txtPhone.Text, filenamePhoto, pathPhoto);
                    lblUpdate.Style.Add("display", "none");
                    txtPhone.Text = string.Empty;
                    txtfullname.Text = string.Empty;
                    txtemail.Text = string.Empty;
                    LoadProfileData();
                }
                else
                {
                    lblUploaderror.Style.Add("display", "block");

                }
            }
            catch (Exception ex)
            {
                lblfile.Style.Add("display", "block");
                lblfile.InnerText = ex.Message;
            }
        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string mobile = Session["s_mobile"].ToString();
            uc.AddProfle(mobile, rdbfood.SelectedValue, rdbSmoke.SelectedValue, rdbDrink.SelectedValue, rdbStay.SelectedValue, txtallergies.Text);
            lblProfileUpdate.Style.Add("display", "block");
        }
        catch (Exception ex)
        {
            lblprofileerror.Style.Add("display", "block");
            lblprofileerror.InnerText = ex.Message;
        }
    }
}