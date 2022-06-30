//
//  StoryboardIdentifiable.swift
//  DXBTest
//
//  Created by Usama Attique on 16/06/2022.
//  Copyright © 2019 Yasir Basharat. All rights reserved.
//

import UIKit

public protocol StoryboardIdentifiable {
	static var storyboardIdentifier: String { get }
}

extension StoryboardIdentifiable where Self: UIViewController {
	public static var storyboardIdentifier: String {
        String(describing: self)
	}
}

extension UIViewController: StoryboardIdentifiable { }
