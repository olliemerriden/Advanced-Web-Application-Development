using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Xml.Linq;

namespace NaturalGarden
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null) //if varible is empty, user has already logged in
            {
                Response.Redirect("AdminHome.aspx"); // take us to admin home page 
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {


            flowerDSTableAdapters.loginTableAdapter loginTable = new flowerDSTableAdapters.loginTableAdapter(); // calls the logintableadapter through the flowerDSTableAdapter with the name loginTable so it can be referenced later on, and gives a new instance of it

            DataTable resultLogin = new DataTable(); // gives the data table the name resultLogin, and gives a new instance of it
            resultLogin = loginTable.GetUsernameAndPassword(txtUsername.Text, txtPassword.Text); //stores the result in resultLogin, calls query to see if the entered values match the values in the table

            if (resultLogin.Rows.Count == 0) //if query doesnt get a result
            {
                
                

                MessageBox.Show("Wrong username and password, please try again."); //display a message to the user
                Response.Redirect(Request.RawUrl); // go to the same page


            }
            else
            {
                MessageBox.Show("You have successfully logged in!"); // displays a message to the user
                Session["user"] = txtUsername.Text; //takes the username value and stores it to put in admin home page
                Response.Redirect("AdminHome.aspx"); //takes us to admin home page
            }


        }
            
    }
}