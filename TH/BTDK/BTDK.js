let list=[];

let listField = document.getElementById("listField");
let inputField = document.getElementById("inputField");

let pTable = document.getElementById("productTable");
let selection = document.getElementById("sortSelection");
let inpName = document.getElementById("inpName");
let inpPrice = document.getElementById("inpPrice");
let btnCancel = document.getElementById("btnCancel");

function btnHandler () {
    if (inputField.style.display == 'none') {
        inputField.style.display = 'block';
        listField.style.display = 'none';
        btnCancel.style.display = "inline";
    } else {
        if (inpName.value.trim() == "") {
            alert("Mời nhập tên sản phẩm");
            inpName.focus();
            return;
        }
        if (inpPrice.value <= 0) {
            alert("Mời nhập giá sản phẩm")
            inpPrice.focus();
            return;
        }
        for (i=0;i<list.length;i++) {
            if (inpName.value.trim().toLowerCase() == list[i].name.trim().toLowerCase()) {
                alert ("Đã có sản phẩm này");
                return;
            }
        }
        addItem();
        sort();
        cancel();
    }
}

function cancel() {
    btnCancel.style.display = "none";
    inpName.value = "";
    inpPrice.value = "";
    inputField.style.display = 'none';
    listField.style.display = 'block';
}

function addItem () {
    let newItem = {
        name: inpName.value.trim(),
        price: inpPrice.value
    }
    list.push(newItem);
}

function addToScreen () {
    for (i=0;i<list.length;i++) {
        let newRow = pTable.insertRow(-1);
        let cell1 = newRow.insertCell(0);
        let cell2 = newRow.insertCell(1);

        cell1.classList.add("productName");
        cell1.classList.add("paddingBox");
        cell2.classList.add("productPrice");
        cell2.classList.add("paddingBox");

        cell1.innerHTML = list[i].name;
        cell2.innerHTML = list[i].price;
    }
}

function deleteTable () {
    for (i=pTable.rows.length-1;i>0;i--) {
        document.getElementsByTagName("tr")[i].remove();
    }
}
function sort() {
    let value = selection.value;
    if (value == "name") {
        list.sort((a,b) => {
            let nameA=a.name.toLowerCase(),nameB=b.name.toLowerCase();
            if (nameA < nameB) {
                return -1;
            }
            if (nameA > nameB) {
                return 1;
            }
            return 0;
        });
    } else if (value == "lowerPrice") {
        list.sort((a,b) => {
            return a.price - b.price;
        });
    } else {
        list.sort((a,b) => {
            return b.price - a.price;
        });
    }
    deleteTable();
    addToScreen();
}