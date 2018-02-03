using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Signup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["M-LocalTicketConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
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
            Response.Redirect("Default.aspx");

            con.Close();
        }
        catch (Exception ex) { }
    }
    protected void cancel_click(object sender ,EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}