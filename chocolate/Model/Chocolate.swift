//
//  Chocolate.swift
//  chocolate
//
//  Created by Harsh Shah on 8/12/17.
//  Copyright © 2017 Harsh Shah. All rights reserved.
//

import Foundation

class Chocolate {
    var imageUrl: URL?
    private(set) var name: String
    
    init(_ name: String) {
        self.name = name;
    }
}
