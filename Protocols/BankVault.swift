//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}


protocol ProvideAccess {
    func allowEntryWithPassword(password: [Int]) -> Bool
}


extension BankVault: ProvideAccess {
    
    func allowEntryWithPassword(password: [Int]) -> Bool {
        var boolToReturn = false
        var passwordIsEmpty = false
        var passwordCount = false
        var passwordIndex = false
        
        if password.isEmpty == false {
            passwordIsEmpty = true
        } else {
            passwordIsEmpty = false
        }
        
        if password.count > 10 {
            passwordCount = false
            
        } else {
            passwordCount = true
        }
        
        for (num, index) in password.enumerated() {
            if index % 2 == 0 {
                if num % 2 == 0 {
                    passwordIndex = true
                } else {
                    passwordIndex = false
                }
            }
        }
        
        if passwordIsEmpty == true && passwordCount == true && passwordIndex == true {
            boolToReturn = true
        } else {
            boolToReturn = false
        }
        
        return boolToReturn
    }
    
}




