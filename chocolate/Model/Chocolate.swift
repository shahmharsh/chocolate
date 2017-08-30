//
//  Chocolate.swift
//  chocolate
//
//  Created by Harsh Shah on 8/12/17.
//  Copyright © 2017 Harsh Shah. All rights reserved.
//

import Foundation
import UIKit

class Chocolate {
    private(set) var image: UIImage?
    private(set) var name: String
    private(set) var desc: String
    
    init(_ name: String, description desc:String) {
        self.name = name
        self.desc = desc
        self.image = UIImage(named: "Chocolate")
    }
}
