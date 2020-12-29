//
//  NewContactView.swift
//  Contacts_app
//
//  Created by Brendon Cecilio on 12/29/20.
//

import UIKit

class NewContactView: UIView {
    
    public lazy var contactImage: UIImageView = {
        let image = UIImageView()
        return image
    }()

    public lazy var firstNameField: UITextField = {
        let field = UITextField()
        field.placeholder = "First Name"
        return field
    }()
    
    public lazy var lastNameField: UITextField = {
        let field = UITextField()
        field.placeholder = "Last Name"
        return field
    }()
    
    public lazy var numberField: UITextField = {
        let field = UITextField()
        field.placeholder = "Number"
        return field
    }()
    
    public lazy var createButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupImage()
        setupFirstName()
        setupLastName()
        setupButton()
    }

    private func setupImage() {
        addSubview(contactImage)
        contactImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contactImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            contactImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
    }
    
    private func setupFirstName() {
        addSubview(firstNameField)
        firstNameField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            firstNameField.centerYAnchor.constraint(equalTo: centerYAnchor),
            firstNameField.topAnchor.constraint(equalTo: contactImage.bottomAnchor, constant: 10)
        ])
    }
    
    private func setupLastName() {
        addSubview(lastNameField)
        lastNameField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lastNameField.centerYAnchor.constraint(equalTo: centerYAnchor),
            lastNameField.topAnchor.constraint(equalTo: firstNameField.bottomAnchor, constant: 5)
        ])
    }
    
    private func setupButton() {
        addSubview(createButton)
        createButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            createButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            createButton.topAnchor.constraint(equalTo: lastNameField.bottomAnchor, constant: 8)
        ])
    }
}
