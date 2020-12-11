//
//  TabBarController.swift
//  Contacts_app
//
//  Created by Brendon Cecilio on 12/6/20.
//

import UIKit

class TabBarController: UITabBarController {
    
    private var viewController: ViewController {
        let vc = ViewController()
        vc.tabBarItem = UITabBarItem(title: "Contacts", image: UIImage(systemName: "person"), tag: 0)
        return vc
    }
    
    private var createContactController: NewContactController {
        let vc = NewContactController()
        vc.tabBarItem = UITabBarItem(title: "New Contact", image: UIImage(systemName: "person"), tag: 1)
        return vc
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [UINavigationController(rootViewController: viewController),UINavigationController(rootViewController: createContactController)]
    }
    
//    let VCs = [ViewController]()
}
