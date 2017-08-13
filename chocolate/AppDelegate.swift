//
//  AppDelegate.swift
//  chocolate
//
//  Created by Harsh Shah on 8/12/17.
//  Copyright © 2017 Harsh Shah. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var viewController: ViewController?
    var navController: UINavigationController?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.viewController = ViewController()
        self.window?.rootViewController = self.viewController
        self.window?.makeKeyAndVisible()
        return true
    }
}
