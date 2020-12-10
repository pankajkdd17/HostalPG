using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Stayello_StayelloDesign_propertydashboard : System.Web.UI.Page
{
    AddUsers uc = new AddUsers();
    protected void Page_Load(object sender, EventArgs e)
    {
        loadProperty();
    }

    private void loadProperty()
    {
        try
        {
            ListViewproperty.DataSource = uc.LoadPropert();
            ListViewproperty.DataBind();
        }
        catch (Exception ex)
        {
            string text = ex.Message.ToString();
            ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", "<script>showpoperror('" + text + "')</script>", false);
        }
    }

    protected void btnBookNow_Click(object sender, EventArgs e)
    {

    }

    protected void btnScheduleNow_Click(object sender, EventArgs e)
    {

    }

    protected void ListViewproperty_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

    }
}