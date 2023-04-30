﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.src
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Product> ProductCart = (List<Product>)Application["ProductCart"];

            int sum = 0;

            foreach (Product product in ProductCart)
            {
                product.Total = product.Price*product.Quantity;
                sum+= product.Total;
            }
            cartList.DataSource = ProductCart;
            cartList.DataBind();

            TotalPrices.InnerHtml = $"{sum.ToString()}";
        }
    }
}