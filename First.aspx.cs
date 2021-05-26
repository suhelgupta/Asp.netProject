using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class First : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Name = Text1.Value;
        string Email = Text2.Value;
        string Question = quaries.Value;
        pid.Style.Add("display", "block");
        pid.InnerHtml = "<center><h3>Your Deatials</h3>Name: " + Name + "<br>Email: " + Email + "<br>Query: " + Question + "<br> Deatials are succesfully submitted <br> You will get the answer in 24hrs</center>";
        DateTime myDate = DateTime.Now;
        string Deatials = "\n\n" + myDate + "\nName: " + Name + "\nEmail: " + Email + "\nQuestion: " + Question;
        //string dir = Directory.GetCurrentDirectory();
        //File.WriteAllText(@dir+"\\TextFile.txt",Deatials);
        //File.AppendText (@"E:\AWP\WebwithBoot\TextFile.txt", Deatials);
        string path = @"E:\AWP\WebwithBoot\TextFile.txt";
        // This text is added only once to the file.
        if (!File.Exists(path))
        {
            // Create a file to write to.
            using (StreamWriter sw = File.CreateText(path))
            {
                sw.WriteLine("DATA OF PEOPLE WHO TRYING TO CONTACT ME");
                sw.Write(Deatials);
            }
        }

        // This text is always added, making the file longer over time
        // if it is not deleted.
        using (StreamWriter sw = File.AppendText(path))
        {
            sw.Write(Deatials);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Text1.Value = "";
        Text2.Value = "";
        quaries.Value = "";
        pid.InnerHtml = "";
    }
}