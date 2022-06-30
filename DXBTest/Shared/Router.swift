//
//  Router.swift
//  DXBTest
//
//  Created by Usama Attique on 16/06/2022.
//

import UIKit

class Router {
    
    static func home() -> HomeVC {
        UIStoryboard(storyboard: .main).instantiateViewController(withClass: HomeVC.self)!
    }
}

