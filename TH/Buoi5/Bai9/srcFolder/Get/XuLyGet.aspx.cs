using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bai9.srcFolder.Get
{
    public partial class XuLyGet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String cpu =
                "<h2>CPU</h2>" +
                "<br>Tên VXL: " + Request.QueryString["cpuName"] +
                "<br>Hãng: " + Request.QueryString["cpuFirm"] +
                "<br>Ngày SX: " + Request.QueryString["cpuDate"] +
                "<br>Giá: " + Request.QueryString["cpuPrice"];
            Response.Write(cpu);
            Response.End();
        }
    }
}