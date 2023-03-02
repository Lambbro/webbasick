var ip,L0,R0;

function calculating() {
    let bPlaintext = hexToBin(plaintext);
    ip = ipCheck(bPlaintext);
    L0 = ip.slice(0,32);
    R0 = ip.slice(32,32);
}
//text solving
//ip
function ipCheck (bPlaintext) {
    let ipTable=[];
    for (i=58;i<65;i+=2) {
        for (j=i;j>0;j-=8) {
            ipTable.push(j);
        }
        if(i==64){i=55;}
    }
    let x=bPlaintext.split(""), bPT=[];
    for (i=0;i<64;i++) {
        bPT.push(x[ipTable[i]]);
    }
    bPT = bPT.join("");
    return bPT;
}
function reverseIPCheck (text) {
    let rIPTable=[];
    for(i=40;i>32;i--) {
        let k=i;
        for(j=0;j<4;j++) {
            rIPTable.push(k);
            k-=32;
            rIPTable.push(k);
            k+=40;
        }
    }
    let x=text.split(""), bCP=[];
    for (i=0;i<64;i++) {
        bCP.push(x[rIPTable[i]]);
    }
    bCP = bCP.join("");
    return bCP;
}

//convert hex to binary
function hexToBin(plaintext) {
    return (parseInt(plaintext, 16).toString(2));
}
function eCheck(right) {
    let eTable=[32,1,2,3,4,5];
    for (i=4;i<30;i+=4) {
        let count=0;
        for (j=i;count<6;j++) {
            eTable.push(j);
            count++;
        }
    }
    eTable.pop();
    eTable.push(1);

    let x=right.split(""), rightN=[];
    for (i=0;i<48;i++) {
        rightN.push(x[eTable[i]]);
    }
    rightN = rightN.join("");
    return rightN;
}
