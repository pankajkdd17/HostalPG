using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserDasboard_dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["s_mobile"] != null)
        {

        }
        else
        {
            Response.Redirect("~/StayelloDesign/index.aspx");

        }
    }
}