using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NaturalGarden
{
    public partial class Backend : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null) //session variable is empty then user did not log in
            {
                Response.Redirect("Home.aspx");
            }
            else // session variable has value then user has properly logged in
            {
                lblLoggedIAnAs.Text = " (Logged in as: " + Session["user"] + ")";
            }
            
        }

        protected void lblLogout_Click(object sender, EventArgs e)
        {
            Session["user"] = null; //reset the session varibale
            Response.Redirect("Home.aspx");
        }
    }
}