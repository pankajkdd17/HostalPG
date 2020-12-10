using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserDasboard_Transaction_History : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["s_mobile"] != null)
        {
            //foodMenu();
        }
        else
        {
            Response.Redirect("~/StayelloDesign/index.aspx");

        }
    }
}