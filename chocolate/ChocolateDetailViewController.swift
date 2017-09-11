//
//  ChocolateDetailViewController.swift
//  chocolate
//
//  Created by Harsh Shah on 8/30/17.
//  Copyright © 2017 Harsh Shah. All rights reserved.
//

import UIKit
import SDWebImage

class ChocolateDetailViewController: UIViewController {
    let rupee = "\u{20B9}"
    
    var chocolate : Chocolate!
    @IBOutlet weak var chocolateImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.name.text = chocolate.name
        self.chocolateImage.sd_setImage(with: chocolate.imageUrl, completed: nil)
    }
}
