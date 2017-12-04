using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace webasp.Admin
{
    public partial class Admin : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Literal1.Text = "Xin chào: ";
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
         
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
        }
    }
}
