using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net;
using System.Net.Mail;
using System.Drawing;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

using System.Collections.Specialized;

public partial class Forgotpass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   protected void SendEmail(object sender,EventArgs e)
    {
        string mobile;
        string password;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["M-LocalTicketConnectionString"].ToString());
        string myquery = "Select * from SignUp where email='" + txtEmail.Value + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if(ds.Tables[0].Rows.Count > 0)
        {
            mobile = ds.Tables[0].Rows[0]["mobileno"].ToString();
            password = ds.Tables[0].Rows[0]["password"].ToString();
            sendpassword(mobile, password, txtEmail.Value);
        }
        else
        {
            lblMessage.Text = "Your Email Id is Not Valid";
        }
        con.Close();

    }
    private void sendpassword(String mobileno1, String password1, String email)
    {
        string message = "Hi " +"<br/>"+ " Your Password is " + password1 ;

        String message1 = HttpUtility.UrlEncode(message);
        using (var wb = new WebClient())
        {
            byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "6my3b445EKc-7R8vCax7K48dYzxYBFqRTYotKs5bRd"},
                {"numbers" , mobileno1},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
            string result = System.Text.Encoding.UTF8.GetString(response);
            string mobilelast = "*******" + mobileno1.Substring(8);
            lblMessage.Text = "Your Password Has Been Sent to Registered Mobile Number " + mobilelast;
        }
    }

}
