//
//  SwiftBank.swift
//  
//
//  Created by cecily li on 10/7/22.
//

import Foundation

// "use properties and access control to build a structure that represents a secure personal bank account"
//computed properties don’t have type inference; we must explicitly define their type.

struct SwiftBank {
    static let depositBonusRate = 0.01
    private var balance: Double = 0 {
        didSet {
            if balance < 100 {
                displayLowBalanceMessage()
            }
        }
    }
    private let password: String
    init(password: String, initialDeposit: Double) {
        self.password = password
        makeDeposit(ofAmount: initialDeposit)
    }
    
    private func isValid(_ enteredPassword: String) -> Bool {
        if enteredPassword == password {
            return true
        } else {
            return false
        }
    }
    //private var balance: Double = 0
    private func finalDepositWithBonus(from deposit: Double) -> Double {
        return deposit * (1 + SwiftBank.depositBonusRate)
    }
    mutating func makeDeposit(ofAmount depositAmount: Double) {
        let depositWithBonus = finalDepositWithBonus(from: depositAmount)
        print("Making a deposit of \(depositAmount) with a bonus rate. The final amount deposited is \(depositWithBonus).")
        self.balance += depositWithBonus
    }
    mutating func displayBalance(usingPassword password: String) {
        if !isValid(password) {
                    print("Error: Invalid password. Cannot retrieve balance.")
                    return
                }
                print("Your current balance is $\(balance).")
    }
    mutating func makeWithdrawal(ofAmount withdrawalAmount: Double, usingPassword password: String) {
            if !isValid(password) {
                print("Error: Invalid password. Cannot make withdrawal.")
                return
            }
            print("Making a $\(withdrawalAmount) withdrawal.")
            self.balance -= withdrawalAmount
        }
    private func displayLowBalanceMessage() {
        print("Alert: Your balance is under $100.")
    }
}
var myAccount = SwiftBank(password: "test", initialDeposit: 500)
myAccount.makeDeposit(ofAmount: 50)
myAccount.displayBalance(usingPassword: "test")
myAccount.makeWithdrawal(ofAmount: 500, usingPassword: "test")
myAccount.makeWithdrawal(ofAmount: 500, usingPassword: "test3")
myAccount.displayBalance(usingPassword: "test")
myAccount.makeDeposit(ofAmount: 100)
myAccount.displayBalance(usingPassword: "test")
