using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["M-LocalTicketConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["Username"] != null)
        {

            BOOKTICKET.Visible = true;
            BOOKINGHISTORY.Visible = true;

        }
        }
        protected void login_click(object sender, EventArgs e)
    {
        string temp = "select count(*) from [SignUp] where email='" + emailid.Value + "' and password= '" + password.Value + "' ";
        SqlCommand cmd = new SqlCommand(temp, con);
        try
        {
            if (con.State != System.Data.ConnectionState.Open)
            {
                con.Open();
            }
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();

            if (check == 1)
            {
                Session["Username"] = emailid.Value;
               
                
                SignUp.Visible = false;
                Login.Visible = false;
                SignUp1.Visible = false;
                Login1.Visible = false;
                Logout.Visible = true;
                Logout1.Visible = true;
             
             
                //BOOKTICKET.Visible = true;
                //BOOKINGHISTORY.Visible = true;


            }

            else
            {

                Invalid.ForeColor = System.Drawing.Color.Red;
                Invalid.Text = "Please Enter A Valid EmailId And Password..";
            }
        }
        catch (Exception ex)
        {

        }
 }
    /*
    protected void signup_click(object sender, EventArgs e)
    {

        string insert = "Insert Into [SignUp]([fname],[lname],[age],[mobileno],[address],[email],[password]) values(@fname,@lname,@age,@mobileno,@address,@email1,@password)";
        SqlCommand cmd = new SqlCommand(insert, con);
        cmd.Parameters.AddWithValue("@fname", fname.Value);
        cmd.Parameters.AddWithValue("@lname", lname.Value);
        cmd.Parameters.AddWithValue("@age", age.Value);
        cmd.Parameters.AddWithValue("@mobileno", mobileno.Value);
        cmd.Parameters.AddWithValue("@address", address.Value);
        cmd.Parameters.AddWithValue("@email1", email1.Value);
        cmd.Parameters.AddWithValue("@password", password1.Value);
        try
        {
            if (con.State != System.Data.ConnectionState.Open)
            {
                con.Open();
            }
            int i = cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception ex) { }
        }
      */


    
    public void Logout_Click(object sender, EventArgs e)
    {
        
        Session.RemoveAll();
        Response.Redirect("Default.aspx");
    }
}

