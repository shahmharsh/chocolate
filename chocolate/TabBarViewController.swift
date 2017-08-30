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
        let viewController2 = UIViewController()
        viewController2.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 1)
        let viewController3 = UIViewController()
        viewController3.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 2)
        let viewController4 = UIViewController()
        viewController4.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 3)
        let controllers = [viewController1, viewController2, viewController3, viewController4]
        self.viewControllers = controllers.map{UINavigationController(rootViewController: $0)}
    }
}
