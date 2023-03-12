//Đặt biến cho các nút và dữ liệu cần lấy cũng như đưa ra màn hình
/*
Ý tưởng: (Ctrl + Z để cắt dòng màn hình cho dễ nhìn )
Tạo 1 mảng ban đầu chứa 1 dữ liệu là Intel, mỗi lần thêm 1 dữ liệu sẽ lấy từ input đưa vào mảng, check có tồn tại dữ liệu đấy chưa. Sau đó xóa hết phần tử con (thẻ option) của thẻ select và thêm lại theo mảng với dữ liệu đc thêm mới
(Thay vì chống lặp mảng thì có thể sử dụng IndexOf để lấy ra phần tử đầu tiên và thêm vào thẻ option thay vì xóa hết thẻ option đi viết lại)
*/
let list = ['Intel'];
let btnAdd = document.getElementById("btnAdd");
let btnCancel = document.getElementById("btnCancel");
let hiddenItem = document.getElementById("hiddenItem");
let listCPU = document.getElementById("cpuList");
let cpuInput = document.getElementById("cpuInput");
//Hàm xử lý sự kiện cho nút "Thêm" 
/* Nếu giá trị của nút là thêm thì phần Input hãng sẽ ẩn đi và khi ấn vào sẽ đổi input hãng thành display flex để hiện lên thay vì display none như trước */
function addCPU() {
    if (btnAdd.value == "Add") {//value == add
        hiddenItem.style.display = "flex"; // hiện phần hãng đã ẩn
        btnAdd.value = "Save"; //đổi giá trị của nút thành save
    } else {//Xử lý sự kiện khi value == save
        let input = cpuInput.value.trim(); //Lấy chuỗi mà mình đã nhập vào hãng và loại bỏ khoảng trắng 2 đầu
        if (input == "") { //Nếu chuỗi rỗng thì hiện thông báo
            alert("Please type the right brand of the CPU");
            cpuInput.focus();
        } else {
            list.push(input);//Đẩy chuỗi vào trong mảng ban đầu
            list = Array.from(new Set(list));//Hàm from sẽ copy cả mảng này sang mảng mới và hàm Set loại các giá trị trùng.
            //Ở đây sẽ loại bỏ trùng lặp và copy lại vào chính mảng đấy nên sẽ đưa mảng có trùng lặp về mảng ko trùng lặp
            while (listCPU.lastElementChild) {//Vòng while này là loại bỏ tất cả thẻ option rtong thẻ select
                listCPU.removeChild(listCPU.lastElementChild);
            }
            for (i=0;i<list.length;i++) {//Vòng for này tạo các thẻ option mới có value và text note rồi đưa vào thẻ select dựa theo mảng lưu trữ các chuỗi được nhập vào
                let opt = document.createElement("option");//Tạo thẻ
                opt.setAttribute("value", list[i]);//Đặt thuộc tính value="list[i]" cho thẻ
                let txtNote = document.createTextNode(list[i]);//Tạo text note
                opt.appendChild(txtNote);//Đưa textnote vào thẻ
                listCPU.appendChild(opt);//Đưa vào thẻ select
            }
            cancel();//Gọi lại hàm cancel()
        }
    }
}

function cancel() {//Hàm cancel() để reset input, ẩn phần hãng và input rồi chuyển value của nút từ save về add
    cpuInput.value = "";
    btnAdd.value = "Add"
    hiddenItem.style.display = "none";
}