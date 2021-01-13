//
//  NewContactView.swift
//  Contacts_app
//
//  Created by Brendon Cecilio on 12/29/20.
//

import UIKit

class NewContactView: UIView {
    
    public lazy var contactImage: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        image.image = UIImage(systemName: "person")
        image.contentMode = .scaleAspectFit
        image.layer.borderWidth = 1.0
        image.makeRounded()
        image.backgroundColor = .orange
        return image
    }()

    public lazy var firstNameField: UITextField = {
        let field = UITextField()
        field.placeholder = "First Name"
        field.backgroundColor = .white
        field.layer.cornerRadius = 6.0

        return field
    }()
    
    public lazy var lastNameField: UITextField = {
        let field = UITextField()
        field.placeholder = "Last Name"
        field.backgroundColor = .white
        field.layer.cornerRadius = 6.0
        return field
    }()
    
    public lazy var numberField: UITextField = {
        let field = UITextField()
        field.placeholder = "Number"
        field.backgroundColor = .white
        field.layer.cornerRadius = 6.0
        field.keyboardType = .numberPad
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
        setupNumberField()
//        setupButton()
    }

    private func setupImage() {
        addSubview(contactImage)
        contactImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contactImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            contactImage.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            contactImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.30),
            contactImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.30)
        ])
    }
    
    private func setupFirstName() {
        addSubview(firstNameField)
        firstNameField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            firstNameField.centerXAnchor.constraint(equalTo: centerXAnchor),
            firstNameField.topAnchor.constraint(equalTo: contactImage.bottomAnchor, constant: 15),
            firstNameField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            firstNameField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    private func setupLastName() {
        addSubview(lastNameField)
        lastNameField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
//            lastNameField.centerXAnchor.constraint(equalTo: centerXAnchor),
            lastNameField.topAnchor.constraint(equalTo: firstNameField.bottomAnchor, constant: 30),
            lastNameField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            lastNameField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    private func setupNumberField() {
        addSubview(numberField)
        numberField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            numberField.topAnchor.constraint(equalTo: lastNameField.bottomAnchor, constant: 30),
            numberField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            numberField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    private func setupButton() {
        addSubview(createButton)
        createButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            createButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            createButton.topAnchor.constraint(equalTo: lastNameField.bottomAnchor, constant: 8),
//            createButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
//            createButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
}
