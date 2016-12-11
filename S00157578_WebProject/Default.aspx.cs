using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S00157578_WebProject
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NameValueCollection securePath = (NameValueCollection)ConfigurationManager.GetSection("genericAppSettings");
            if (Request.IsSecureConnection && !User.Identity.IsAuthenticated)
            {

                string url = securePath["UnsecurePath"] + "/WebPages/Home.aspx";
                Response.Redirect(url);
            }
            else
            {
                securePath = (NameValueCollection)ConfigurationManager.GetSection("genericAppSettings");
                string url = securePath["SecurePath"] + "/WebPages/Home.aspx";
                Response.Redirect(url);
            }
        }
    }
}