//
//  ViewController.swift
//  bank ledger
//
//  Created by Christopher Cole on 1/14/19.
//  Copyright © 2019 Christopher Cole. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var accounts: [String] = []

    @IBOutlet weak var accountsTableView: UITableView!
    
    @IBAction func addAccount(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        title = "Accounts"
        accountsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnAddNewAccount(_ sender: UIButton) {
    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return accounts.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            
            let cell =
                tableView.dequeueReusableCell(withIdentifier: "Cell",
                                              for: indexPath)
            cell.textLabel?.text = accounts[indexPath.row]
            return cell
    }
}

