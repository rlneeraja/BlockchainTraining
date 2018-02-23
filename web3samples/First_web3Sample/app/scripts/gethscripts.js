function connect(){
    if(! window.web3 )
        window.web3 = new Web3(new Web3.providers.HttpProvider("http://192.168.1.112:8545"));
    console.log(window.web3.isConnected())

}

function getTxtFromCtrl(id){
    return document.getElementById(id).innertHTML
}

function getAccounts(){
    windows.web3.getAccounts(function(error,result){
        if(error){
            console.log(error)
        }
        else
            console.log(result)
    }
}