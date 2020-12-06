//
//  TabBarController.swift
//  Contacts_app
//
//  Created by Brendon Cecilio on 12/6/20.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = VCs
    }
    
    let VCs = [ViewController]()
}
