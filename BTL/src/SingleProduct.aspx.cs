using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.src
{
    public partial class SingleProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Product> ProductList = (List<Product>)Application["ProductList"];
            List<Product> ProductCart = (List<Product>)Application["ProductCart"];
            List<Product> Products = new List<Product>();

            string id = Request.QueryString.Get("id");

            foreach (Product product in ProductList)
            {
                if (product.Id == Int32.Parse(id)) 
                {
                    Products.Add(product);
                    productData.DataSource = Products;
                    productData.DataBind();
                    break;
                }
            }

            int countProduct = ProductCart.Count;

            CartCounter.InnerHtml = $"{countProduct}";
        }
    }
}