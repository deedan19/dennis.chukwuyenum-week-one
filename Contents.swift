import UIKit

// Account Type
enum AccountType {
    case savings
    case current
}

// Account
class Account {
    var id: Int
    var customerId : Int
    var accountBalance: Int
    var interestRate: Double {
        return 0.0
    }
    var converter: Int

    init(id: Int, customerId: Int, accountBalance: Int, converter: Int) {
        self.id = id
        self.customerId = customerId
        self.accountBalance = accountBalance
        self.converter = converter
    }
    
    
    // withdrawal
    func withdrawal(amount: Int) -> String {
        accountBalance -= amount
        return "You made a withdrawal of #\(amount/converter), and your account balance is: #\(accountBalance/converter)"
    }
    
    
    // deposit
    func deposit (amount: Int) -> String {
        accountBalance += amount
        return "You made a deposit of #\(amount/converter), and your account balance is: #\(accountBalance/converter)"
    }
    
    // charge
    func charge () -> String {
        let newAccountBalance = accountBalance  - 10000
        return "Your are charged #100 for withdrawal. Your new balance is: #\(newAccountBalance/converter)"
    }
    
    // bonus
    func bonus () -> String {
        let newAccountBalance = accountBalance + 1000
        return "You earn #10 bonus for deposit. Your account balance is: #\(newAccountBalance/converter)"
    }
}
var userAccount = Account (id: Int.random(in: 1 ..< 20), customerId:Int.random(in: 1 ..< 20), accountBalance: 2000000, converter: 100)

print(userAccount.withdrawal(amount: 10000))


print(userAccount.accountBalance/100)



// Savings Account
class SavingsAccount: Account {
    override var interestRate: Double {
        return (0.1 * Double(accountBalance))
    }
    override func deposit(amount: Int) -> String{
        return super.bonus()
    }
}


//print(SavingsAccount(id: 1, customerId: 1, accountBalance: 2000000, converter: 100).deposit(amount: 300000))

print(userAccount.accountBalance)



// Current Account
class CurrentAccount: Account {
    override var interestRate: Double {
        return (0.05 * Double(accountBalance))
    }
    override func withdrawal(amount: Int) -> String {
        
        return super.charge()
    }
}
var currentAccount = CurrentAccount(id:Int.random(in: 1..<20), customerId:Int.random(in: 1..<20), accountBalance: 2000000, converter: 100)







// Bank Customer class
class Customer {
   var id: Int = 0
    var customerId: Int {
        get {
            return id
        }
        set {
            id = newValue
        }
    }
    private var name: String = ""
    var customerName: String {
        get {
            return name
        }
        set {
            name = newValue
        }
    }
    private var address: String = ""
    var customerAddress: String {
        get {
            return address
        }
        set (newValue){
            address = newValue
        }
    }
    private var phoneNumber: String = ""
    var customerPhoneNumber: String {
        get {
            return phoneNumber
        }
        set (newValue){
            phoneNumber = newValue
        }
    }
    
    private var account: [Account]? = []
    var customerAccount: [Account]? {
        get {
            return account
        }
        set (newValue){
            account = newValue
        }
    }
    
    
    
    // An optional account: should the account be an optional array?

    
    func accountBalance(account: Account) -> String {
        let newAccountBalance = account.accountBalance
        return "Your account balance is #\(newAccountBalance)"
    }
    func  withdrawal(account: Account, withdrawAmount: Int) -> String {
        account.accountBalance -= withdrawAmount
        return "Your account balance is #\(account.accountBalance)"
    }
    
    func deposit (account: Account, depositAmount: Int) -> String {
        account.accountBalance += depositAmount
        return "Your account balance is \(account.accountBalance)"
    }
    
    func openAccount (account: AccountType)-> [Any] {
//        switch account {
//
//        case .savings:
//            print("x")
//        case .current:
//            print("y")
//        }
        return [""]
    }
    
    func closeAccount () -> [Any] {
        return [""]
    }
}




/* if theUserAccount == AccountType.savings {


/* Pillars of OOP used */
*/




// Test

