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
        {//Tạo biến chuỗi cpu lấy data từ input thông qua atribute name (ko phải id)
            String cpu = //Với post thì dùng Request.Form (Method post sẽ nối data vào HTTP request body và Request.Form sẽ trả về dữ liệu được đưa HTTP request body)
                "<h2>CPU</h2>" +
                "<br>Tên VXL: " + Request.Form["cpuName"] +
                "<br>Hãng: " + Request.Form["cpuFirm"] +
                "<br>Ngày SX: " + FormatDate(Request.Form["cpuDate"]) +
                "<br>Giá: " + Request.Form["cpuPrice"];
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
