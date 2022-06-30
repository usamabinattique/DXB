//
//  UIColor.swift
//  QCSM4
//
//  Created by Yasir Basharat on 01/04/2019.
//  Copyright © 2019 Yasir Basharat. All rights reserved.
//

import UIKit

extension UIColor {

	/// Convenience init: UIColoe with Hex Value
	///
	/// - Parameter hex: hex Color String
	convenience init(hex: String) {

		var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
		// swiftlint:disable:next control_statement
		if (cString.hasPrefix("#")) {
			cString.remove(at: cString.startIndex)
		}
		// swiftlint:disable:next control_statement
		if ((cString.count) != 6) {
			//default is white color
			self.init(white: 1.0, alpha: 1.0)
		}

		var rgbValue: UInt64 = 0
		Scanner(string: cString).scanHexInt64(&rgbValue)

		self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
				  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
				  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
				  alpha: CGFloat(1.0))
	}
}
