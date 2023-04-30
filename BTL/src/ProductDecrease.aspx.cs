using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.src
{
    public partial class ProductDecrease : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Product> ProductCart = (List<Product>)Application["ProductCart"];

            string id = Request.QueryString.Get("id");

            foreach (Product product in ProductCart)
            {
                if (product.Id == int.Parse(id))
                {
                    if (product.Quantity > 1)
                    {
                        product.Quantity--;
                        Response.Redirect("Cart.aspx");
                        break;
                    }
                    else
                    {
                        Response.Redirect("ProductDeletion.aspx?id=" + int.Parse(id));
                        break;
                    }
                }
            }
        }
    }
}