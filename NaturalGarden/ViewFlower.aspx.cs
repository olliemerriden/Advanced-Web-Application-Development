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
    public partial class ViewFlower : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            flowerDSTableAdapters.flowerTableAdapter flowerTable = new flowerDSTableAdapters.flowerTableAdapter(); // calls the flowertableadapter through the flowerDSTableAdapter with the name flowerTable so it can be referenced later on, and gives a new instance of it
            
            gvView.DataSource = flowerTable.GetAllFlowersAndSuppliers(); /*calls the GetAllFlowersAndSuppliers query when the page loads*/
            gvView.DataBind(); // binds the data together and brings it closed
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            flowerDSTableAdapters.flowerTableAdapter flowerTable = new flowerDSTableAdapters.flowerTableAdapter();  // calls the flowertableadapter through the flowerDSTableAdapter with the name flowerTable so it can be referenced later on, and gives a new instance of it
            
            flowerDSTableAdapters.supplierTableAdapter supplierTable = new flowerDSTableAdapters.supplierTableAdapter(); // calls the suppliertableadapter through the flowerDSTableAdapter with the name supplierTable so it can be referenced later on, and gives a new instance of it
            //gvView.DataSource = flowerTable.GetAllFlowers();




            if (ddlSort.SelectedValue.ToString() == "Ascending") //if the selected sort value is ascending then...
            {
                gvView.DataSource = flowerTable.GetFlowerByColourSortByPriceAsc(ddlFilter.SelectedValue); // retrives the query that puts the price in ascending order



            }
            else // if the selected value is not ascending (descending) 
            {
                gvView.DataSource = flowerTable.GetFlowerByColourSortByPriceDesc(ddlFilter.SelectedValue); // retrives the query that puts the price in ascending order
            }
            gvView.DataBind(); // binds all the data together and brings it closed

            

              
            


            





        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            flowerDSTableAdapters.flowerTableAdapter flowerTable = new flowerDSTableAdapters.flowerTableAdapter(); // calls the flowertableadapter through the flowerDSTableAdapter with the name flowerTable so it can be referenced later on, and gives a new instance of it

            flowerDSTableAdapters.supplierTableAdapter supplierTable = new flowerDSTableAdapters.supplierTableAdapter(); // calls the suppliertableadapter through the flowerDSTableAdapter with the name supplierTable so it can be referenced later on, and gives a new instance of it

            gvView.DataSource = flowerTable.GetAllFlowersAndSuppliers(); // makes the datasource through the query GetAllFlowersAndSuppliers
            gvView.DataBind(); // binds all the data together and brings it closed

        }

        protected void gvView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}