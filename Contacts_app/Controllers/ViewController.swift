//
//  ViewController.swift
//  Contacts_app
//
//  Created by Brendon Cecilio on 11/22/20.
//

import UIKit

class ViewController: UIViewController {
    
    private let contactView = ContactListView()
    
    public var contacts = [Contacts]()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = contactView
        contactView.backgroundColor = .systemOrange
        navigationItem.leftBarButtonItem?.image = UIImage(systemName: "plus")
        setupTableView()
        getContacts()
    }
    
    func setupTableView() {
        contactView.tableView.delegate = self
        contactView.tableView.dataSource = self
        contactView.tableView.register(TableViewCell.self, forCellReuseIdentifier: "contactCell")
        // resizing cells
        contactView.tableView.estimatedRowHeight = 100.0
        contactView.tableView.rowHeight = UITableView.automaticDimension
    }
    
    func setupNavItems() {
        
    }
    
    func getContacts() {
        contacts = Contacts.getContacts()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell") as? TableViewCell else {
            fatalError("could not dequeue tableViewCell")
        }
        let newContacts = contacts[indexPath.row]
        cell.configureCell(with: newContacts)
        cell.layer.cornerRadius = 8
        cell.layer.masksToBounds = true
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}

