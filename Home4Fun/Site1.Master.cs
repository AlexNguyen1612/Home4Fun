using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Assignment1_WebDev
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void filterByCategory(object sender, CommandEventArgs e)
        {
            if (String.Equals(CPBody.Page.Title, "Fun Ideas"))
            {
                string category = e.CommandArgument.ToString();
                string dataSourceName = "SDSFunIdeas_" + Regex.Replace(category,@"\s+","");
                Repeater r = CPBody.FindControl("RListOfFunIdeas") as Repeater;
                SqlDataSource data = CPBody.FindControl(dataSourceName) as SqlDataSource;
                r.DataSource = data;
                r.DataBind();
            }
            else if(String.Equals(CPBody.Page.Title, "Fun Ideas EF"))
            {
                var db = new Models.Home4FunDBEntities();
                var ideas = (from fi in db.FunIdeas1
                             where String.Equals(fi.category, e.CommandArgument.ToString())
                             orderby fi.ideaTitle ascending
                             select fi).ToList();
                Repeater r = CPBody.FindControl("RListOfFunIdeas") as Repeater;
                r.DataSource = ideas;
                r.DataBind();
            }
        }

        public void displayAllIdeas(object sender, EventArgs e)
        {
            if (String.Equals(CPBody.Page.Title, "Fun Ideas"))
            {
                Repeater r = CPBody.FindControl("RListOfFunIdeas") as Repeater;
                SqlDataSource data = CPBody.FindControl("SDSListOfFunIdeas") as SqlDataSource;
                r.DataSource = data;
                r.DataBind();
            }
        }
    }
}