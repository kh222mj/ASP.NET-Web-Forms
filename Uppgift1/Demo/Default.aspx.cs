using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            string text = Textarea.Text;        
            int capitals = Model.TextAnalyzer.GetNumberOfCapitals(text);
            Result.Text = "Texten innehåller " + capitals + " versaler";
            Textarea.Enabled = false;
            Reset.Visible = true;
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }
    }
}