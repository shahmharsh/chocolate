//
//  ViewController.swift
//  chocolate
//
//  Created by Harsh Shah on 8/12/17.
//  Copyright © 2017 Harsh Shah. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let cellIdentifier = "chocolateCellIdentifier"
    
    var chocolates = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chocolates = ["Five Star", "Dairy Milk", "Some other one"]
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chocolates.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        let chocolate = chocolates[indexPath.row]
        cell.textLabel?.text = chocolate
        return cell
    }
}
