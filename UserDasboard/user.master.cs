using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserDasboard_user : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["s_mobile"] != null)
        {
            lblmobile.Text = Session["s_mobile"].ToString();
            lblName.Text = Session["s_fullname"].ToString();
            if (Session["s_photoPath"] != null)
            {
                Image1.ImageUrl = Session["s_photoPath"].ToString(); 
            }
            else
            {
                Image1.ImageUrl = "~/UserDasboard/PhotoLogo/defaulticon.png";
            }
        }
        else
        {
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            Response.Redirect("~/StayelloDesign/index.aspx");
           
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("~/StayelloDesign/index.aspx");
    }
}
