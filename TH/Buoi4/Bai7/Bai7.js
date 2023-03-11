let list = ['Intel'];
let btnAdd = document.getElementById("btnAdd");
let btnCancel = document.getElementById("btnCancel");
let hiddenItem = document.getElementById("hiddenItem");
let listCPU = document.getElementById("cpuList");
let cpuInput = document.getElementById("cpuInput");

function addCPU() {
    if (btnAdd.value == "Add") {
        hiddenItem.style.display = "flex";
        btnAdd.value = "Save";
    } else {
        let input = cpuInput.value.trim();
        if (input == "") {
            alert("Please type the right brand of the CPU");
            cpuInput.focus();
        } else {
            list.push(input);
            list = Array.from(new Set(list));
            while (listCPU.lastElementChild) {
                listCPU.removeChild(listCPU.lastElementChild);
            }
            for (i=0;i<list.length;i++) {
                let opt = document.createElement("option");
                opt.setAttribute("value", list[i]);
                let txtNote = document.createTextNode(list[i]);
                opt.appendChild(txtNote);
                listCPU.appendChild(opt);
            }
            cancel();
        }
    }
}

function cancel() {
    cpuInput.value = "";
    btnAdd.value = "Add"
    hiddenItem.style.display = "none";
}