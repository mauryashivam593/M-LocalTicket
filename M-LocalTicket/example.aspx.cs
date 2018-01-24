using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;


public partial class example : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        string path = Server.MapPath("") + "\\Fare.xml";
        doc.Load(path);

        foreach (XmlNode node in doc.DocumentElement)
        {
            string name = node.Attributes[0].InnerText;
            if (name == DropDownList1.SelectedValue)
            {

                foreach (XmlNode child in node.ChildNodes)
                {
                    string name1 = child.Attributes[0].InnerText;
                    if (name1 == DropDownList2.SelectedValue)
                    {

                        string firstticket = child.Attributes[4].InnerText;
                        string secondticket = child.Attributes[3].InnerText;

                        string cls = DropDownList3.SelectedValue;
                        string person = display.InnerText;
                        if (cls == "FirstClass(I)" && Single.Checked)
                        {
                            int s1 = Convert.ToInt32(person) * Convert.ToInt32(firstticket);
                            Amount.Text = s1.ToString();

                        }
                        else if(cls== "FirstClass(I)" && Return.Checked)
                        {
                            int s1 = 2 * Convert.ToInt32(person) * Convert.ToInt32(firstticket);
                            Amount.Text = s1.ToString();
                        }
                        else if (cls == "SecondClass(II)" && Single.Checked)
                        {
                            int s1 =  Convert.ToInt32(person) * Convert.ToInt32(secondticket);
                            Amount.Text = s1.ToString();
                        }
                        else  
                        {
                            int s1 = 2 * Convert.ToInt32(person) * Convert.ToInt32(secondticket);
                            Amount.Text = s1.ToString();
                        }
                    }
                }
            }
        }
    }
 static int i = 1;
    protected void Increment_Click(object sender, EventArgs e)
    {
        if (i < 10)
        {
            i++;
        }
        else if (i == 10)
        {
            i = 1;
        }
        display.InnerText = Convert.ToString(i);
    }
    protected void Decrement_Click(object sender, EventArgs e)
    {
       
        if (i > 1)
        {
            --i;
        }
        else if (i == 1)
        {
            i = 10;
        }

        
        display.InnerText = Convert.ToString(i) ;
    }
}