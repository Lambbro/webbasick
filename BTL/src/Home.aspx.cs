using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.src
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Product> ProductList = (List<Product>)Application["ProductList"];

            List<Product> womenShirts = new List<Product>();
            List<Product> womenTrousers = new List<Product>();
            List<Product> menShirts = new List<Product>();
            List<Product> menTrousers = new List<Product>();
            List<Product> lipsticks = new List<Product>();
            List<Product> perfumes = new List<Product>();


            foreach (Product p in ProductList)
            {
                if(p.Id > 0 && p.Id <= 3)
                {
                    womenShirts.Add(p);
                }
                if (p.Id > 3 && p.Id <= 6)
                {
                    womenTrousers.Add(p);
                }
                if (p.Id > 6 && p.Id <= 9)
                {
                    menShirts.Add(p);
                }
                if (p.Id > 9 && p.Id <= 12)
                {
                    menTrousers.Add(p);
                }
                if (p.Id > 12 && p.Id <= 15)
                {
                    lipsticks.Add(p);
                }
                if (p.Id > 15 && p.Id <= 18)
                {
                    perfumes.Add(p);
                }
            }

            WomenShirts.DataSource = womenShirts;
            WomenShirts.DataBind();
            WomenTrousers.DataSource = womenTrousers;
            WomenTrousers.DataBind();
            MenShirts.DataSource = menShirts;
            MenShirts.DataBind();
            MenTrousers.DataSource = menTrousers;
            MenTrousers.DataBind();
            Lipsticks.DataSource = lipsticks;
            Lipsticks.DataBind();
            Perfumes.DataSource = perfumes;
            Perfumes.DataBind();
        }
    }
}