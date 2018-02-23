

function isPrime(num){
    var isPr = true;
    for( let i = 2 ; i <= num-1 ; i++){

        if(num % i === 0){
            isPr = false;
            
        }
        if(isPr)
        console.log(num + "is  prime" )
        else
        console.log(num + "is  not prime" )
    }
}

function reverse(num){
    console.log(num);
}

function checkPrime(){
    
    for( let j= 1 ; j <10; j++){

        var rn = Math.random()*10000;
        setTimeout(function(){isPrime(j);}, rn)
        
         rn = Math.random()*5000;
        setTimeout(function(){reverse(j);}, rn)
    }
}