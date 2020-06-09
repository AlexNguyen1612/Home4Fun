using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Assignment1_WebDev.Models;

namespace Assignment1_WebDev.Controllers
{
    public class Home4FunController : Controller
    {
        Home4FunDBEntities db = new Home4FunDBEntities();

        [Route("FunIdeas/{id?}")]
        public ActionResult FunIdeas(string id = "")
        {
            if (String.IsNullOrEmpty(id))
            {
                var ideas = from i in db.FunIdeas1
                            orderby i.ideaTitle ascending
                            select i;

                return View(ideas.ToList());
            }
            else
            {
                var ideas = from i in db.FunIdeas1
                            where String.Equals(i.category,id)
                            orderby i.ideaTitle ascending
                            select i;

                return View(ideas.ToList());
            }
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}