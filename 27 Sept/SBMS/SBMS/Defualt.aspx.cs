using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using SBMS.Config;

namespace SBMS
{
    public partial class Defualt : System.Web.UI.Page
    {
        Conncetion con = new Conncetion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btnSingIn_Click(object sender, EventArgs e)
        {
            try
            {
                string employeeID = txtEmloyeeID.Text;
                string phoneNumber = txtMobileNumber.Text;
                con.conn.Open();
                string qry = "SELECT      Pin, PhoneNumber FROM Login WHERE(Pin = N'" + txtEmloyeeID.Text + "') AND(PhoneNumber = N'" + txtMobileNumber.Text + "')";
                SqlCommand cmd = new SqlCommand(qry, con.conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                // string dept = 
                if (sdr.Read())
                {



                    ;
                    Response.Redirect("~/Catagory/Catagory.aspx");


                }
                else
                {

                    LblMessage.Text = "Login Fail......!!";

                }
                con.conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    
        }
    
}