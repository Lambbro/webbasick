/*
Ý tưởng:
Khi ấn thêm của bảng thứ 2 sẽ kiểm tra cả 4 dòng input, đúng dữ liệu nhập thì thêm vào ko thì hiện thông báo
Khi dữ liệu được nhập đúng thì tạo thêm 1 thẻ <tr> (table row) làm thẻ con của thẻ <table> vào cuối vị trí của các thẻ <tr>
sau đó tạo các thẻ <td> tương ứng với số cột của bảng, add thêm class để chỉnh css cho thẻ và thêm dữ liệu nhập vào thẻ
*/

let inpName = document.getElementById("cpuName");
let inpFirm = document.getElementById("cpuFirm");
let inpDate = document.getElementById("cpuDate");
let inpPrice = document.getElementById("cpuPrice");
let dataTable = document.getElementById("dataTable");
let row = 0;//Cái này dùng để đếm số thứ tự của bảng

function add() {//Hàm xử lý sự kiện add
    let name = inpName.value.trim();//Lấy giá trị nhập vào
    let firm = inpFirm.value.trim();
    let date = inpDate.value.trim();
    let price = inpPrice.value.trim();
    if (!checkValid(name, firm, date, price)) {//Nếu giá trị nhập ko thỏa mãn thì hiện thông báo với hàm tự tạo checkValid
        alert("Nhập lại");
    } else {
        let newRow = dataTable.insertRow(-1);//Tạo 1 row vào thẻ table có id="dataTable" với vị trí -1 (vị trí cuối cùng)
        let cell1 = newRow.insertCell(0); //Tạo các thẻ <td></td>
        let cell2 = newRow.insertCell(1);
        let cell3 = newRow.insertCell(2);
        let cell4 = newRow.insertCell(3);
        let cell5 = newRow.insertCell(4);
        
        cell1.classList.add("border-column");//Thêm class cho các thẻ td
        cell2.classList.add("border-column");
        cell3.classList.add("border-column");
        cell4.classList.add("border-column");
        cell5.classList.add("border-column");

        cell1.innerHTML = row+1;//Đưa giá trị vào các thẻ td theo dữ liệu tương ứng
        cell2.innerHTML = name;
        cell3.innerHTML = firm;
        cell4.innerHTML = date;
        cell5.innerHTML = price;

        row++;//Tăng giá trị stt

        cancel();
    }
}

function cancel() {//Xóa hết phần input
    inpName.value="";
    inpFirm.value="";
    inpDate.value="";
    inpPrice.value="";
}

//Hàm tự tạo check nhập đúng hay sai
function checkValid(name, firm, date, price) {//Chưa nhập hoặc nhập ngày tháng sai hoặc giá nhập <= 0 thì trả về false
    if (name=="" || firm=="" || date=="" || price=="" || !checkValidDate(date) || parseInt(price)<=0) return false;
    else return true;

}
//Hàm check ngày nhập có hợp lệ không
function checkValidDate (d) {
    let date = d.split("/");//tách chuỗi ngày nhập
    if (date.length!=3) return false;//kiểm tra nhập có ở dưới dạng date/month/year không
    let dd = date[0], mm = date[1], yy = date[2];//gán biến cho ngày tháng và năm
    if (dd < 1 || mm < 1 || mm > 12 || yy < 1 || !checkCurrentTime(dd,mm,yy)) return false;//check ngày nhập có hợp lệ hay ko
    var maxDay;//tính số ngày tối đa của 1 tháng
    if (mm == 4 || mm == 6 || mm == 9 || mm == 11) maxDay = 30;
    else if (mm == 2) {
        if (checkLeapYear(yy)) maxDay = 29;
        else maxDay = 28;
    } else maxDay = 31; 
    if (dd <= maxDay) return true;//so sánh ngày nhập vào với ngày tối đa của tháng đó
    else return false;
}
//Hàm check ngày nhập không cho nhập quá thời điểm hiện  tại
function checkCurrentTime(dd,mm,yy) {
    let curTime = new Date();
    if (yy < curTime.getFullYear()) return true;
    else if (yy == curTime.getFullYear()) {
        if (mm < curTime.getMonth()+1) return true;
        if (mm == curTime.getMonth()+1) {//getMonth() trả về là số tháng -1 (tháng 1 bắt đầu từ số 0 và tháng 12 là số 11)
            if (dd <= curTime.getDate()) return true;
                else return false;
        } else return false;
    } else return false;
}
//Hàm check năm nhuận
function checkLeapYear (year) {//năm nhuận là năm chia hết cho 4 hoặc 400 nhưng k chia hết cho 100
    if (year % 4 == 0) {
        if (year % 100 == 0 && year % 400 != 0) return false;
        else return true;
    } else return false;
}

