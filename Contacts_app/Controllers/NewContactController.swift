//
//  NewContactController.swift
//  Contacts_app
//
//  Created by Brendon Cecilio on 11/22/20.
//

import UIKit

class NewContactController: UIViewController {
    
    private let createContactView = NewContactView()
    
//    override func loadView() {
//        view = createContactView
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = createContactView
        createContactView.backgroundColor = .systemGray2
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
