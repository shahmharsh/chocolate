//
//  ChocolateListTableViewController.swift
//  chocolate
//
//  Created by Harsh Shah on 8/20/17.
//  Copyright © 2017 Harsh Shah. All rights reserved.
//

import UIKit

class ChocolateListTableViewController: UITableViewController {
    
    let chocolateJSON = """
[{ "name": "Five Star", "desc": "My favorite", "price": 100, "imageUrl": "http://www.gervasivineyard.com/assets/client/Image/Events/chocolate1.jpg" }, { "name": "Dairy Milk", "desc": "Nidhos favorite", "price": 120, "imageUrl": "http://www.gervasivineyard.com/assets/client/Image/Events/chocolate1.jpg" }, { "name": "Lindt", "desc": "Rias favorite", "price": 150, "imageUrl": "http://www.gervasivineyard.com/assets/client/Image/Events/chocolate1.jpg" }]
"""
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
        
        let chocolate = chocolates[indexPath.row]
        cell.title.text = chocolate.name
        cell.desc.text = chocolate.desc
        //FIXME: get the image from URL
//        cell.chocolateImage?.image = chocolate.image
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let chocolate = chocolates[indexPath.row]
    }
    
    //MARK: Private methods
    
    private func loadSampleChocolates() {
        
        let decoder = JSONDecoder()
        let jsonData = chocolateJSON.data(using: .utf8)!
        chocolates = try! decoder.decode(Array<Chocolate>.self, from: jsonData)
    }
}
