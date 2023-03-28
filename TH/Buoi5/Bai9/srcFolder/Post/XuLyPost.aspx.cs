using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bai9.srcFolder.Post
{
    public partial class XuLyPost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String cpu =
                "<h2>CPU</h2>" +
                "<br>Tên VXL: " + Request.Form["cpuName"] +
                "<br>Hãng: " + Request.Form["cpuFirm"] +
                "<br>Ngày SX: " + Request.Form["cpuDate"] +
                "<br>Giá: " + Request.Form["cpuPrice"];
            Response.Write(cpu);
            Response.End();
        }
    }
}