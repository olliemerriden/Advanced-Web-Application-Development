using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace NaturalGarden
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnmanage_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageFlower.aspx"); // directs user to the manage flower page when button is clicked
        }

        protected void btnview_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewFlower.aspx"); // directs user to the view flower page when button is clicked
        }
    }
}