

function prfibanocci(){
    var inp = document.getElementById("name");

    var p1 = 0;
    var p2 = 1;
    var tmp = 0;
    while(p2 < 100){

    if( p1 == 1)
        p2 = 2;

    p2 = tmp + p2;
    tmp = p2
    console.log (p2)

}
}