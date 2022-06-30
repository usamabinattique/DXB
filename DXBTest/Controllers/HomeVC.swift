//
//  ViewController.swift
//  DXBTest
//
//  Created by Usama Attique on 14/06/2022.
//

import UIKit

class HomeVC: UIViewController {
    
    //MARK: IBOutlets

    @IBOutlet weak var backgroudImage: UIImageView!
    @IBOutlet var cardView: [UIView]!

    //MARK: UIController Life Cycle

    override func loadView() {
        super.loadView()
        loadUIAttributes()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func loadUIAttributes() {
        cardView.forEach { view in
            view.layer.cornerRadius = 9
            view.clipsToBounds = true
        }
        
        backgroudImage.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        backgroudImage.layer.cornerRadius = 27

    }
}

    //MARK: Actions
extension HomeVC {
    @IBAction func hamburger_touchUpInside(_ sender: UIButton) {
        print("side menu invoked")
    }
}
