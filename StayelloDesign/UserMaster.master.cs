using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StayelloDesign_UserMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["s_mobile"] != null)
        {
            loginmob.Visible = false;
            logindesk.Visible = false;
            accdesk.Visible = true;
            accmob.Visible = true;
        }
        else
        {
            loginmob.Visible = true;
            logindesk.Visible = true;
            accdesk.Visible = false;
            accmob.Visible = false;

        }
    }
}
