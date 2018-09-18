using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cookies_Pref : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Check if cookie exists, if not then create one with an expiration date of 1 hour.
        if (Request.Cookies["colorCookie"] == null)
        {
            HttpCookie colorCookie = new HttpCookie("colorCookie");
            colorCookie.Expires = DateTime.Today.AddHours(1);
            Response.Cookies.Add(colorCookie);
        }
        if (Request.Cookies["fontCookie"] == null)
        {
            HttpCookie fontCookie = new HttpCookie("fontCookie");
            fontCookie.Expires = DateTime.Today.AddHours(1);
            Response.Cookies.Add(fontCookie);
        }

        //If the color cookie exists, then set color.
        if (Request.Cookies["colorCookie"] != null)
        {
            PageBody.Attributes["bgcolor"] = "red";
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
    }
}