//
//  Theme.swift
//  DXBTest
//
//  Created by Usama Attique on 16/06/2022.
//

import UIKit


protocol Theme {
    func apply(for application: UIApplication)
}

extension Theme {

    func apply(for application: UIApplication) {

        UITabBar.appearance().with {
            $0.tintColor = AppColors.tabSelected
            $0.unselectedItemTintColor = AppColors.tabUnselected
            $0.shadowImage = UIImage()
            $0.backgroundImage = UIImage()
        }
    }
}


struct DefaultTheme: Theme { }
