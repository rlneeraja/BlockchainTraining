var message = "jkhjkh";

var v1 = function f1(message){
     message  = "ddd";
    console.log(message);
    
}

// Remove the () at the end of function and call it as v2() in line 18
var v2 = function f2(){
    message  = "ccc";
   console.log(message);
   
}();
console.log(message);
v1();
console.log(message);
v2;
console.log(message);