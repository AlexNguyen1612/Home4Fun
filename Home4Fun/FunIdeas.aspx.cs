using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1_WebDev
{
    public partial class FunIdeas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            displayAllIdeas();
        }

        public static string getDifficultyLevel(int? level)
        {
            string visualDifficultyLevelDisplay = "";
            for (int i = 0; i < level; i++)
            {
                visualDifficultyLevelDisplay += "<img src ='https://img.icons8.com/emoji/48/000000/star-emoji.png' alt='rating' style='width:30px;height:30px;margin-bottom:5px;margin-left:5px' />";
            }
            for (int i = 0; i < 5 - level; i++)
            {
                visualDifficultyLevelDisplay += "<img src='https://img.icons8.com/color/48/000000/star--v1.png' alt='rating' style='width:30px;height:30px;margin-bottom:5px;margin-left:5px'/>";
            }
            return visualDifficultyLevelDisplay;
        }

        public void displayAllIdeas()
        {
            RListOfFunIdeas.DataSource = SDSListOfFunIdeas;
            RListOfFunIdeas.DataBind();
        }

        public void readMore_Click()
        {

        }
    }
}