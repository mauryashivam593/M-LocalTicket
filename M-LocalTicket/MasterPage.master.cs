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

    }
    protected void login_click(object sender, EventArgs e)
    {

    }
    protected void signup_click(object sender, EventArgs e)
    {
        string insert = "Insert Into [SignUp]([fname],[lname],[age],[mobileno],[address],[email],[password]) values(@fname,@lname,@age,@mobileno,@address,@email,@password)";
        SqlCommand cmd = new SqlCommand(insert, con);
        cmd.Parameters.AddWithValue("@fname", fname.Value);
        cmd.Parameters.AddWithValue("@lname", lname.Value);
        cmd.Parameters.AddWithValue("@age", age.Value);
        cmd.Parameters.AddWithValue("@mobileno", mobileno.Value);
        cmd.Parameters.AddWithValue("@address", address.Value);
        cmd.Parameters.AddWithValue("@email", email.Value); 
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();


    }
}
