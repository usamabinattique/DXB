//
//  ApperanceProxyManager.swift
//
//  Created by Usama Attique on 16/06/2022.
//  Copyright © 2019 Usama Attique. All rights reserved.
//

import UIKit

class AppearanceProxyManager {

	static let shared = AppearanceProxyManager()
	private let theme: Theme = DefaultTheme()

	var currentTheme: Theme { theme }

	private init () { }
    
	///
	func applyDefaultControlsApperance() {
		theme.apply(for: UIApplication.shared)
	}
}
