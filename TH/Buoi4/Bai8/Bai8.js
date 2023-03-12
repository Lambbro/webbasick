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
        alert("Nhập cho đủ vô");
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
    if (name=="" || firm=="" || date=="" || price=="" || !checkValidDate(date) || parseInt(price)<=0) {
        return false;
    }
    else {
        return true;
    }

}

function checkValidDate (d) {//Hàm check ngày tháng năm đúng hay ko
    let date = d.split("/");//Tách chuỗi gán biến ngày tháng năm
    let dd = date[0], mm = date[1], yy = date[2];
    if (dd < 1 || mm < 1 || mm > 12 || yy < 1) return false;//Nhập sai thì trả về false
    var maxDay;//Biến ngày nhiều nhất của 1 tháng
    if (mm == 4 || mm == 6 || mm == 9 || mm == 11) {
        maxDay = 30;
    } else if (mm == 2) {
        if (checkLeapYear(yy)) {
            maxDay = 29;
        } else maxDay = 28;
    } else maxDay = 31; 
    //Check xem ngày nhập có hợp lệ hay lớn hơn ngày hiện tại ko
    if (dd <= maxDay) {
        if (yy > 2023) {
            return false;
        } else if (yy == 2023) {
            if (mm > 3) {
                return false;
            } else if (mm == 3) {
                if (dd > 17) return false;
                else return true;
            } else return true;
        } else {
            return true;
        }
    }
    else return false;
}

function checkLeapYear (year) {//Hàm check năm nhuận
    if (year % 4 == 0) {
        if (year % 100 == 0 && year % 400 != 0) {
            return false;
        }
        else return true;
    } else return false;
}

