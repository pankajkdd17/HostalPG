using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StayelloDesign_Astra : System.Web.UI.Page
{
    AddUsers us = new AddUsers();
    GeneralFunctions.GeneralFunctions gf = new GeneralFunctions.GeneralFunctions();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnBookNow_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/StayelloDesign/bookAstra.aspx");
    }


    protected void btnVisiting_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/StayelloDesign/VisitAstra.aspx");
    } 
}