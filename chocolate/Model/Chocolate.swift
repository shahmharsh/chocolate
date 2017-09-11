//
//  Chocolate.swift
//  chocolate
//
//  Created by Harsh Shah on 8/12/17.
//  Copyright © 2017 Harsh Shah. All rights reserved.
//

import Foundation
import UIKit

struct Chocolate : Decodable {
    let imageUrl: URL
    let name: String
    let desc: String
    let price: Float
}
