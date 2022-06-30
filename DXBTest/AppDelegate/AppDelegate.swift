//
//  AppDelegate.swift
//  DXBTest
//
//  Created by Usama Attique on 16/06/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        AppearanceProxyManager.shared.applyDefaultControlsApperance()
        
        /// Setting up root window
        WindowManager.setupWindow(controller: TabbarVC())
        return true
    }
}

