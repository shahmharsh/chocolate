//
//  ChocolateListTableViewController.swift
//  chocolate
//
//  Created by Harsh Shah on 8/20/17.
//  Copyright © 2017 Harsh Shah. All rights reserved.
//

import UIKit

class ChocolateListTableViewController: UITableViewController {
        
    let cellIdentifier = "chocolateCellIdentifier"
    
    var chocolates = [Chocolate]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Chocolates"
        let nib = UINib(nibName: "ChocolateTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: cellIdentifier)
        tableView.tableFooterView = UIView(frame: .zero)
        loadSampleChocolates()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75.0
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chocolates.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ChocolateTableViewCell else {
            fatalError("The dequeued cell is not an instance of ChocolateTableViewCell")
        }
        cell.title.text = chocolates[indexPath.row].name
        cell.desc.text = chocolates[indexPath.row].desc
        return cell
    }
    
    //MARK: Private methods
    
    private func loadSampleChocolates() {
        let chocolate1 = Chocolate("Five Star", description: "My favourite")
        let chocolate2 = Chocolate("Dairy Milk", description: "Nidhos favourite")
        let chocolate3 = Chocolate("Lindt", description: "Rias favourite")
        chocolates += [chocolate1, chocolate2, chocolate3]
    }
}
