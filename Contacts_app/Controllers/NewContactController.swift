//
//  NewContactController.swift
//  Contacts_app
//
//  Created by Brendon Cecilio on 11/22/20.
//

import UIKit
import AnimatedGradientView

class NewContactController: UIViewController {
    
    @objc private let createContactView = NewContactView()
    
    var contact: Contacts?

    override func viewDidLoad() {
        super.viewDidLoad()
        view = createContactView
        createContactView.backgroundColor = .systemGray2
        createContactView.createButton.addTarget(self, action: #selector(createNewContact(_:)), for: .touchUpInside)
    }
    
    @objc func createNewContact(_ sender: UIButton) {
        print("working segue")
        if createContactView.firstNameField.text == "" && createContactView.numberField.text == ""{
            // !! SHOW ALERT !!
        }

        if let newName = createContactView.firstNameField.text, let newNumber = Int(createContactView.numberField.text!) {
            let newContact = Contacts(contactName: newName, contactNumber: newNumber, contactImage: createContactView.contactImage.image)
            let vc = ViewController()
            print(vc.contacts.count)
            vc.contacts.insert(newContact, at: 0)
            let indexPath = IndexPath(row: 0, section: 0)
            vc.contactView.tableView.insertRows(at: [indexPath], with: .automatic)
            print("new count: \(vc.contacts.count)")
        }
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
