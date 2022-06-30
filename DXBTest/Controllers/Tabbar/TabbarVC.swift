//
//  TabbarVC.swift
//  DXBTest
//
//  Created by Usama Attique on 16/06/2022.
//

import UIKit

class TabbarVC: UITabBarController {
    
    enum TabbarItems {
        case home, orders, newOrder, notifications, myAcccount
        
        var selectedImage: UIImage {
            switch self {
            case .home: return UIImage(named: "home_selected")!
            case .orders: return UIImage(named: "orders_selected")!
            case .newOrder: return UIImage()
            case .notifications: return UIImage(named: "notifications_selected")!
            case .myAcccount: return UIImage(named: "account_selected")!
            }
        }
        
        var unselectedImage: UIImage {
            switch self {
            case .home: return UIImage(named: "home_unselected")!
            case .orders: return UIImage(named: "orders_unselected")!
            case .newOrder: return UIImage()
            case .notifications: return UIImage(named: "notfications_unselected")!
            case .myAcccount: return UIImage(named: "account_unselected")!
            }
        }
    }
    
    var middleButton: UIButton!
    
    private let middleButtonHeight: CGFloat = 70.0
    private let middleButtonWidth: CGFloat = 70.0
    private let bezierHeight: CGFloat = 35.0
    
    
    //MARK: UIView Controller Life Cycle
    
    override func loadView() {
        super.loadView()
        setupTabbarAttributes()
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupMiddleButton()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
}

private extension TabbarVC {
    func setupTabbarAttributes() {

        tabBar.layer.cornerRadius = 15.0
        tabBar.layer.shadowColor = UIColor.lightGray.cgColor
        tabBar.layer.shadowOpacity = 0.6
        tabBar.backgroundColor = .white
        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        tabBar.layer.shadowOffset = CGSize.zero
        tabBar.layer.shadowRadius = 10
        tabBar.layer.borderColor = UIColor.clear.cgColor
        tabBar.layer.borderWidth = 10
        tabBar.clipsToBounds = false
    }
    
    func setupMiddleButton() {
        
        let middleButtonX = ((tabBar.frame.size.width / 2.0) - bezierHeight )
        
        middleButton = UIButton(frame: CGRect(x: middleButtonX,
                                              y: -22,
                                              width: middleButtonWidth,
                                              height: middleButtonHeight))
        
        middleButton.layer.borderWidth = 1.0
        middleButton.layer.borderColor = UIColor.white.cgColor
        middleButton.setImage(UIImage(named: "add_order")!, for: .normal)
        middleButton.backgroundColor = AppColors.tabUnselected
        middleButton.layer.cornerRadius = middleButton.frame.size.height / 2
        tabBar.addSubview(middleButton)

    }
}


private extension TabbarVC {
    
    func makeNavigation(with rootViewController: UIViewController,
                        title: String,
                        selectedImage: UIImage,
                        unselectedImage: UIImage) -> UINavigationController {
        
        let navigationController = UINavigationController(rootViewController: rootViewController)
        navigationController.tabBarItem.title = title
        navigationController.tabBarItem.selectedImage = selectedImage
        navigationController.tabBarItem.image = unselectedImage
        navigationController.navigationBar.isHidden = true
        rootViewController.navigationItem.title = title
        return navigationController
    }
    
    func setupViewControllers() {
        
        viewControllers = [ makeNavigation(with: Router.home(),
                                           title: Constants.TabbarStrings.home,
                                           selectedImage: TabbarItems.home.selectedImage,
                                           unselectedImage: TabbarItems.home.unselectedImage),
                            
                            makeNavigation(with: Router.home(),
                                           title: Constants.TabbarStrings.orders,
                                           selectedImage: TabbarItems.orders.selectedImage,
                                           unselectedImage: TabbarItems.orders.unselectedImage),
                            
                            makeNavigation(with: Router.home(),
                                           title: Constants.TabbarStrings.newOrder,
                                           selectedImage: TabbarItems.newOrder.selectedImage,
                                           unselectedImage: TabbarItems.newOrder.unselectedImage),
                            
                            makeNavigation(with: Router.home(),
                                           title: Constants.TabbarStrings.notifications,
                                           selectedImage: TabbarItems.notifications.selectedImage,
                                           unselectedImage: TabbarItems.notifications.unselectedImage),
                            
                            makeNavigation(with: Router.home(),
                                           title: Constants.TabbarStrings.myAccount,
                                           selectedImage: TabbarItems.myAcccount.selectedImage,
                                           unselectedImage: TabbarItems.myAcccount.unselectedImage)
        ]
    }
    
}

