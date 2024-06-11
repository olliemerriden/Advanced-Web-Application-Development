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
    public partial class ManageFlower : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // sever sends back the results without reseting (blank page)
            {
                flowerDSTableAdapters.flowerTableAdapter flowerTable = new flowerDSTableAdapters.flowerTableAdapter();  // calls the flowertableadapter through the flowerDSTableAdapter with the name flowerTable so it can be referenced later on, and gives a new instance of it
                                                                                                                        
                ddlID.DataSource = flowerTable.GetAllFlowerIDs(); // makes sure that the id dropdown is populated with the datasource
                ddlID.DataTextField = "FlowerID"; //collumn name for the user to see
                ddlID.DataValueField = "FlowerID"; //value of the dropdown list used for identification
                ddlID.DataBind(); // binds the data together and brings it closed
            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            //flowerDSTableAdapters.flowerTableAdapter flowerTable = new flowerDSTableAdapters.flowerTableAdapter();




            //flowerTable.InsertFlower(txtName.Text, decimal.Parse(txtPrice.Text), txtColour.Text, txtDate.Text, txtImageName.Text);



            //Response.Redirect(Request.RawUrl);


            flowerDSTableAdapters.flowerTableAdapter flowerTable = new flowerDSTableAdapters.flowerTableAdapter(); // calls the flowertableadapter through the flowerDSTableAdapter with the name flowerTable so it can be referenced later on, and gives a new instance of it










            if (txtColour != null) //is the colour text box is not empty then...
            {

                flowerTable.InsertFlower(txtName.Text, decimal.Parse(txtPrice.Text), txtColour.Text, txtDate.Text, txtImageName.Text); // inserts the correct values into the table using the InsertFlower query
                MessageBox.Show("You have successfully created a record."); // message for the user to say succesfully created record
                Response.Redirect(Request.RawUrl); // goes back to the same page if button is pressed

            }
            else // if it is null then...
            {
                MessageBox.Show("Record was not created, please try again!"); // error messaege for user
                Response.Redirect(Request.RawUrl); // goes back to the same page if button is pressed
            }

        }

        protected void btnRetrieve_Click(object sender, EventArgs e)
        {
            flowerDSTableAdapters.flowerTableAdapter flowerTable = new flowerDSTableAdapters.flowerTableAdapter(); // calls the flowertableadapter through the flowerDSTableAdapter with the name flowerTable so it can be referenced later on, and gives a new instance of it




            //get query result into data table
            DataTable resultFlower = new DataTable(); // gives the data table the name resultFlower, and gives a new instance of it
            resultFlower = flowerTable.GetFlowerByID(int.Parse(ddlID.SelectedValue.ToString())); // uses the query GetFlowerByID and ignores the fact it is an int and converts the selected value to a string

            //write for controls
            txtName.Text = resultFlower.Rows[0]["FlowerName"].ToString(); // converts the inputed value to a string to put into the table in correct collumn
            txtPrice.Text = resultFlower.Rows[0]["FlowerPrice"].ToString(); // converts the inputed value to a string to put into the table in correct collumn
            txtColour.Text = resultFlower.Rows[0]["FlowerColour"].ToString(); // converts the inputed value to a string to put into the table in correct collumn



            DateTime rDate = (DateTime)resultFlower.Rows[0]["FlowerExpiryDate"]; // converts the stored date using the rDate variable
            txtDate.Text = rDate.ToString("yyyy-MM-dd"); // converts to a string using yyyy-MM-dd format




            txtImageName.Text = resultFlower.Rows[0]["FlowerImg"].ToString(); // converts the inputed value to a string to put into the table in correct collumn
            imFlower.ImageUrl = "images/" + resultFlower.Rows[0]["FlowerImg"].ToString(); // shows image using the images/ where the photos are stored and coverts to a string

            

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            flowerDSTableAdapters.flowerTableAdapter flowerTable = new flowerDSTableAdapters.flowerTableAdapter(); // calls the flowertableadapter through the flowerDSTableAdapter with the name flowerTable so it can be referenced later on, and gives a new instance of it

            flowerTable.UpdateFlower(txtName.Text, decimal.Parse(txtPrice.Text), txtColour.Text, txtDate.Text, txtImageName.Text,
                int.Parse(ddlID.SelectedValue.ToString())); // calls the UpdateFlower query and uses the selected values to convert to the nessesary type and store them in the flower table based on what has been updated


            MessageBox.Show("You have successfully updated a record."); // message for the user that the record has been successfully updated

            Response.Redirect(Request.RawUrl); 
            // Redirects the user to page 

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            flowerDSTableAdapters.flowerTableAdapter flowerTable = new flowerDSTableAdapters.flowerTableAdapter(); // calls the flowertableadapter through the flowerDSTableAdapter with the name flowerTable so it can be referenced later on, and gives a new instance of it

            flowerTable.DeleteFlower(int.Parse(ddlID.SelectedValue.ToString()));  // deletes the row with the same selected value for the ID using the DeleteFlower query

            MessageBox.Show("You have successfully deleted a record."); // message for the user that the record has been successfully deleted




            Response.Redirect(Request.RawUrl); // Redirects the user to page 
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl); // Redirects the user to page, resetting the existing filled out form


        }
    }
}