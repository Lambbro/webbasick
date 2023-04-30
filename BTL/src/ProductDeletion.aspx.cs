using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.src
{
    public partial class ProductDeletion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Product> ProductCart = (List<Product>)Application["ProductCart"];

            string id = Request.QueryString.Get("id");

            foreach (Product product in ProductCart)
            {
                if (product.Id == int.Parse(id))
                {
                    ProductCart.Remove(product);
                    Response.Redirect("Cart.aspx");
                    break;
                }
            }
        }
    }
}