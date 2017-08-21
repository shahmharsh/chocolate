//
//  TabViewController.swift
//  chocolate
//
//  Created by Harsh Shah on 8/20/17.
//  Copyright © 2017 Harsh Shah. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let viewController1 = ChocolateListTableViewController()
        viewController1.tabBarItem = UITabBarItem(tabBarSystemItem: .topRated, tag: 0)
        let controllers = [viewController1]
        self.viewControllers = controllers.map{UINavigationController(rootViewController: $0)}
    }
}
