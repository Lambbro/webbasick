let quantities = document.getElementById("quantities");
const id = document.getElementById("pId");

function increase() {
    let count = parseInt(quantities.innerText);
    count++;
    quantities.innerHTML = count;
}
function decrease() {
    if(quantities.innerText>1) {
        let count = parseInt(quantities.innerText);
        count--;
        quantities.innerHTML = count;
    }
}

function redirectToCart (type) {
    let directLink = `./AddByDetails.aspx?id=${id.innerText}&quantities=${quantities.innerText}&type=${type}`;
    window.open(directLink, '_self');
}