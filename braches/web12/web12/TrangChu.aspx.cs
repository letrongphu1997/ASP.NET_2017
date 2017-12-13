using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

namespace web12
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       



       
        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (!IsPostBack)
            {

                string productID = Request.QueryString["Product_ID"];
               

            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
