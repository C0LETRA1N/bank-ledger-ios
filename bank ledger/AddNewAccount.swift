//
//  AddNewAccount.swift
//  bank ledger
//
//  Created by Christopher Cole on 1/17/19.
//  Copyright © 2019 Christopher Cole. All rights reserved.
//

import UIKit

class AddNewAccount: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var accountNameTextField: UITextField!
    @IBOutlet weak var accountTypePickerView: UIPickerView!
    @IBOutlet weak var accountBeginningBalanceTextField: UITextField!
    
    var strAccountName: String!
    var dblBeginningBalance: Double!
    var enumAccountType: Int!
    
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.accountTypePickerView.delegate = self
        self.accountTypePickerView.dataSource = self

        pickerData = ["Checking", "Savings", "Credit Card"]
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    
    @IBAction func btnAddAccount(_ sender: UIButton) {
        strAccountName = accountNameTextField.text
        dblBeginningBalance = Double(accountBeginningBalanceTextField.text!)
        enumAccountType = 1
        
        let account: Account = Account(accountName: strAccountName, startingBalance: dblBeginningBalance, accountType: enumAccountType)
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
