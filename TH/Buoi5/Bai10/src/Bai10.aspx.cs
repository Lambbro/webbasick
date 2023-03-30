using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bai10.src
{
    public partial class Bai10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) {
            String txtNoidung = Request.Form["txtNoidung"];
            Response.Write("Content: " + txtNoidung);

            HttpPostedFile file = Request.Files["cFile"];//Lấy file đc post
            String cF = Request.Form["cFile"];
            if (file == null) { Response.Write("<br>Lỗi file: " + cF); }//File == null thì thông báo lỗi
            else
            {
                file.SaveAs(Server.MapPath("../App_Data\\" + file.FileName));//Lưu file
            }
            Response.End();
            }
        }
    }
}
