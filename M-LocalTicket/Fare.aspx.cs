using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Fare : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)

    {

        if (TextBox1.Text != null)
        {
            XmlDocument doc = new XmlDocument();
            string path = Server.MapPath("") + "\\Fare.xml";
            doc.Load(path);

            foreach (XmlNode node in doc.DocumentElement)
            {
                string name = node.Attributes[0].InnerText;
                if (name == TextBox1.Text)
                {

                    foreach (XmlNode child in node.ChildNodes)
                    {
                        string name1 = child.Attributes[0].InnerText;
                        if (name1 == TextBox2.Text)
                        {
                            Label3.Text = "Regular Ticket For Second Class        " + child.Attributes[3].InnerText +"<br>" +"Regular Ticket For First Class        " +child.Attributes[4].InnerText +"<br>" +"1 Month Pass For Second Class        " + child.Attributes[1].InnerText +"<br>" + "1 Month Pass For First Class" + child.Attributes[2].InnerText ;
                        }
                    }
                }
            }




        }

        else
        {
            Label3.Text = "Invalid";
        }


    }
}