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
        {   //Tạo biến chuỗi cpu lấy data từ input thông qua atribute name (ko phải id)
            String cpu = //Với phương thức get thì sử dụng QueryString (Get gửi data thông qua url và QueryString chính là phần url chứa data đc gửi đi đó)
                "<h2>CPU</h2>" +
                "<br>Tên VXL: " + Request.QueryString["cpuName"] +
                "<br>Hãng: " + Request.QueryString["cpuFirm"] +
                "<br>Ngày SX: " + FormatDate(Request.QueryString["cpuDate"]) +
                "<br>Giá: " + Request.QueryString["cpuPrice"];
            Response.Write(cpu);//Hiện chuỗi cpu lên web
            Response.End();//Kết thúc lệnh
        }
        string FormatDate(string date)
        {
            string[] dateArr = date.Split('-');
            return dateArr[2] + '/' + dateArr[1] + '/' + dateArr[0];
        }
    }
}
