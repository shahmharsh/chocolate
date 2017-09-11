//
//  ChocolateListTableViewController.swift
//  chocolate
//
//  Created by Harsh Shah on 8/20/17.
//  Copyright © 2017 Harsh Shah. All rights reserved.
//

import UIKit
import SDWebImage

class ChocolateListTableViewController: UITableViewController {
    
    let chocolateJSON = """
[{ "name": "Five Star", "desc": "My favorite", "price": 100, "imageUrl": "https://static1.squarespace.com/static/57ca74c4197aea06e4799ae9/t/584ef868d482e93820814184/1481570485372/bluebox.jpg?format=500w" }, { "name": "Dairy Milk", "desc": "Nidhos favorite", "price": 120, "imageUrl": "https://static1.squarespace.com/static/57ca74c4197aea06e4799ae9/t/584ef868d482e93820814184/1481570485372/bluebox.jpg?format=500w" }, { "name": "Lindt", "desc": "Rias favorite", "price": 150, "imageUrl": "https://static1.squarespace.com/static/57ca74c4197aea06e4799ae9/t/584ef868d482e93820814184/1481570485372/bluebox.jpg?format=500w" }]
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
        cell.chocolateImage.sd_setImage(with: chocolate.imageUrl, completed: nil)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVc = ChocolateDetailViewController()
        detailVc.chocolate = chocolates[indexPath.row]
        navigationController?.pushViewController(detailVc, animated: true)
    }
    
    //MARK: Private methods
    private func loadSampleChocolates() {
        let decoder = JSONDecoder()
        let jsonData = chocolateJSON.data(using: .utf8)!
        chocolates = try! decoder.decode(Array<Chocolate>.self, from: jsonData)
    }
}
