//
//  WindowManager.swift
//  AT
//
//  Created by usama on 28/06/2021.
//

import UIKit

enum WindowManager {
    
    static func setupWindow<T: UIViewController>(controller: T) {
        
        window = window ?? UIWindow.init(frame: windowFrame)
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
    }
}

private extension WindowManager {
    static var window: UIWindow? {
        get {
            return (UIApplication.shared.delegate as? AppDelegate)?.window
        }
        set {
            (UIApplication.shared.delegate as? AppDelegate)?.window = newValue
        }
    }

    static var windowFrame: CGRect {
        UIScreen.main.bounds
    }
}
