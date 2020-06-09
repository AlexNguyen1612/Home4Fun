using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Assignment1_WebDev.Models;

namespace Assignment1_WebDev.Management
{
    public partial class FunIdeas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            displayAllIdeas();
        }

        public List<Models.FunIdeas> displayAllIdeas()
        {
            var db = new Models.Home4FunDBEntities();
            var ideas = (from fi in db.FunIdeas1
                         orderby fi.ideaTitle ascending
                         select fi).ToList();

            RListOfFunIdeas.DataSource = ideas;
            RListOfFunIdeas.DataBind();

            return ideas;
        }
    }
}
