//
//  AppDelegate.swift
//  CleanPractice
//
//  Created by Ehsan on 12/04/2020.
//  Copyright © 2020 Ali C. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let vc = ListGenresViewController()
        let navBar = UINavigationController(rootViewController: vc)
        
        window?.rootViewController = navBar
        
        return true
    }


}

