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
    
    var chocolates = [Chocolate]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        loadSampleChocolates()
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
        cell.textLabel?.text = chocolates[indexPath.row].name
        return cell
    }
    
    //MARK: Private methods
    
    private func loadSampleChocolates() {
        let chocolate1 = Chocolate("Five Star")
        let chocolate2 = Chocolate("Dairy Milk")
        let chocolate3 = Chocolate("Lindt");
        chocolates += [chocolate1, chocolate2, chocolate3];
    }
}
