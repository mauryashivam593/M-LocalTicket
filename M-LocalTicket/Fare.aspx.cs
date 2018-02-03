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
    
        if (DropDownList1.SelectedValue != null)
        {
            XmlDocument doc = new XmlDocument();
            string path = Server.MapPath("") + "\\Fare.xml";
            doc.Load(path);

            foreach (XmlNode node in doc.DocumentElement)
            {
                string name = node.Attributes[0].InnerText;
                if (name ==DropDownList1.SelectedValue)
                {

                    foreach (XmlNode child in node.ChildNodes)
                    {
                        string name1 = child.Attributes[0].InnerText;
                        if (name1 ==DropDownList2.SelectedValue)
                        {
                            Table1.Visible = true;
                            Label4.Text = "" + child.Attributes[3].InnerText;
                            firstticket.Text = "" + child.Attributes[4].InnerText;
                            secondpass.Text = "" + child.Attributes[1].InnerText;
                            firstpass.Text = "" + child.Attributes[2].InnerText;
                            sqp.Text = "" + child.Attributes[5].InnerText;
                            fqp.Text = "" + child.Attributes[6].InnerText;
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