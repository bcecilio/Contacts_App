//
//  Contacts.swift
//  Contacts_app
//
//  Created by Brendon Cecilio on 11/22/20.
//

import UIKit

struct Contacts {
    var contactName: String
    var contactNumber: Int
//    var contactImage: UIImage
    
    static func getContacts() -> [Contacts] {
        let contactNames = ["James Hoffa", "Frank Sheeran", "Russel Buffalino", "Tony Salerno"]
        var contacts = [Contacts]()
        for name in contactNames {
            let contact = Contacts(contactName: name, contactNumber: 8001234567)
            contacts.append(contact)
        }
        return contacts
    }
}
