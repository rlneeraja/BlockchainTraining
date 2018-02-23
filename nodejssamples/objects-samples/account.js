var accounts = [];

// create a function that allows you to create an account, passing it an account object:
function createAccount(account)
{
	accounts.push(account);
	return account;
}

// create a function that allows you to lookup an account by passing it a username:
function getAccount(userName)
{
	var matchedAccount;

	for (var i = 0; i < accounts.length; i++)
	{
		if (accounts[i].userName === userName)
		{
			matchedAccount = accounts[i];
		}
	}
	
	return matchedAccount;
}

 // create a function called deposit:
 function deposit(account, amount)
 {
	 if (typeof amount === "number")
	 {
		 account.balance = (account.balance + amount);
	 }	 
	 else
	 {
		 console.log("Deposit failed. Amount is not a number.")
	 }
 }
 
 // create a function called withdrawal:
 function withdraw(account, amount)
 {
	 if (typeof amount === "number")
	 {
		 account.balance = (account.balance - amount);
	 }	 
	 else
	 {
		 console.log("Withdraw failed. Amount is not a number.")
	 }
 }
 
 // create a function called getBalance, which will return the current balance of the account passed to it:
 function getBalance(account)
 {
	 return account.balance;
 }
 
 function createBalanceGetter(account)
 {
	 return function()
	 {
		 return account.balance;
	 }
 } 
 
 var jessica = createAccount(
 {
	 userName: "Jessica",
	 balance: 0
 });
 
 deposit(jessica, 120);
 withdraw(jessica, 10);

var jessica2 = getAccount("Jessica");
var getJessica2Balance = createBalanceGetter(jessica2);

console.log(getJessica2Balance());