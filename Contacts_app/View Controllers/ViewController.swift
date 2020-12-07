//
//  ViewController.swift
//  Contacts_app
//
//  Created by Brendon Cecilio on 11/22/20.
//

import UIKit

class ViewController: UIViewController {
    
    private let contactView = ContactListView()
    
    var contacts = [Contacts]()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = contactView
        setupTableView()
    }
    
    func setupTableView() {
        contactView.tableView.delegate = self
        contactView.tableView.dataSource = self
        contactView.tableView.register(ContactCell.self, forCellReuseIdentifier: "contactCell")
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}

