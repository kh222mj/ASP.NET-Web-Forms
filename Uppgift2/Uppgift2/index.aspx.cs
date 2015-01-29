using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Uppgift2
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (IsValid) 
            {
                var subtotalText = SumTextBox.Text;
                var subtotal = double.Parse(subtotalText);         
                Model.Receipt receipt = new Model.Receipt(subtotal);
                NumberLiteral.Text = subtotalText;
                NumPanel.Visible = true;

                Totalt.Text = String.Format("Totalt         : {0:c}", receipt.Subtotal);
                Rabattsats.Text = String.Format("Rabattsats : {0} %", receipt.DiscountRate);
                Rabatt.Text = String.Format("Rabatt         : {0:c}", receipt.MoneyOff);
                AttBetala.Text = String.Format("Att betala  : {0:c}", receipt.Total);
                Kvitto.Visible = true;
            }

        }
    }
}