//
//  AppDelegate.swift
//  TestApp
//
//  Created by Pascal on 28.08.23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame:  UIScreen.main.bounds)
        window?.backgroundColor = UIColor.green
        
        let screenVC = MainTabBarController()
        
        window?.rootViewController = screenVC
        window?.makeKeyAndVisible()
        
        
        return true
    }
}

