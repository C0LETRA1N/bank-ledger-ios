//
//  Account.swift
//  bank ledger
//
//  Created by Christopher Cole on 1/18/19.
//  Copyright © 2019 Christopher Cole. All rights reserved.
//

import Foundation

class Account {
    var intId: Int = 0
    var strAccountName: String = ""
    var dblStartingBalance: Double = 0
    var dblEndingBalance: Double = 0
    var enumAccountType: Int = 0
    
    init(){
        
    }
    
    init(accountName: String, startingBalance: Double, accountType: Int){
        self.strAccountName = accountName
        self.dblStartingBalance = startingBalance
        self.enumAccountType = accountType
        self.dblEndingBalance = startingBalance
    }
}
