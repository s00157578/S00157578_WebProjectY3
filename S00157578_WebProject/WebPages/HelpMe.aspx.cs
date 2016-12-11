using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S00157578_WebProject.WebPages
{
    public partial class HelpMe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //so page is not loaded on secure connection
            if (Request.IsSecureConnection && !User.Identity.IsAuthenticated)
            {
                NameValueCollection securePath = (NameValueCollection)ConfigurationManager.GetSection("genericAppSettings");
                string url = securePath["UnsecurePath"] + "/WebPages/HelpMe.aspx";
                Response.Redirect(url);
            }
        }
    }
}