//
//  AppDelegate.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 11/05/23.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let vc = TabBarVC()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        return true
    }
    
    
}
