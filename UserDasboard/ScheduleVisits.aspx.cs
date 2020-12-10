using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserDasboard_ScheduleVisits : System.Web.UI.Page
{
    AddUsers us = new AddUsers();
    GeneralFunctions.GeneralFunctions Gf = new GeneralFunctions.GeneralFunctions();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["s_mobile"] != null)
        {
            showdata();
        }
        else
        {
            Response.Redirect("~/StayelloDesign/index.aspx");

        }
    }
    protected void showdata()
    {
        string s_mobile = Session["s_mobile"].ToString();
        repeaterID.DataSource = us.ViewVisitings(s_mobile);
        repeaterID.DataBind();
        //Gvw.HeaderRow.TableSection = TableRowSection.TableHeader;
        //Gvw.GridLines = GridLines.None;

    }

}