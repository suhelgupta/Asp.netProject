using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdvCurrencyConverter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            Currency.Items.Add(new ListItem("Euro", "0.85"));
            Currency.Items.Add(new ListItem("Japanese Yen", "110.33"));
            Currency.Items.Add(new ListItem("Canadian Dollars", "1.2"));
        }
    }

    protected void Convert_ServerClick(object sender, EventArgs e)
    {
        decimal oldAmmount;
        bool Success = Decimal.TryParse(US.Value, out oldAmmount);
        if (Success)
        {
            ListItem item = Currency.Items[Currency.SelectedIndex];
            decimal newAmount = oldAmmount * Decimal.Parse(item.Value);
            Result.Style["color"] = "LimeGreen";
            Result.InnerText = oldAmmount.ToString() + " U.S. dollars =";
            Result.InnerText += newAmount.ToString() + " " + item.Text;
        }
        else
        {
            Result.Style["color"] = "Red";
            Result.InnerText = "Plese enter the valid number";
        }
    }
}