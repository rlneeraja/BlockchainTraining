var def = require("./lib/def")
def.member.display();
console.log(def.member.qt);
//same result as above
console.log(def.member["qt"]);
console.log(def.member.account.balance);