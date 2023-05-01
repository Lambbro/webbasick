using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.src
{
    public partial class AddByDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Product> ProductList = (List<Product>)Application["ProductList"];
            List<Product> ProductCart = (List<Product>)Application["ProductCart"];

            string id = Request.QueryString.Get("id");
            string quantities = Request.QueryString.Get("quantities");
            string type = Request.QueryString.Get("type");

            bool checkInCart = false;

            foreach (Product product in ProductCart)
            {
                if (product.Id == int.Parse(id))
                {
                    product.Quantity += int.Parse(quantities);
                    checkInCart = true;
                    break;
                }
            }
            if (!checkInCart)
            {
                foreach (Product product in ProductList)
                {
                    if (product.Id == int.Parse(id))
                    {
                        Product p = new Product();
                        p = product;
                        p.Quantity = int.Parse(quantities);
                        ProductCart.Add(p);
                        break;
                    }
                }
            }

            
            if (type == "back")
            {
                Response.Redirect("SingleProduct.aspx?id="+id);
            }
            else
            {
                Response.Redirect("Cart.aspx");
            }
        }
    }
}