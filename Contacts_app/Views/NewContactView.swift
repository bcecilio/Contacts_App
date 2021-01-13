//
//  NewContactView.swift
//  Contacts_app
//
//  Created by Brendon Cecilio on 12/29/20.
//

import UIKit
import AnimatedGradientView

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
    
    private let gradientView: AnimatedGradientView = {
        let animatedView = AnimatedGradientView()
        animatedView.direction = .up
        animatedView.animationValues = [(colors: ["#2BC0E4", "#EAECC6"], .up, .axial),
                                        (colors: ["#833ab4", "#fd1d1d", "#fcb045"], .right, .axial),
                                        (colors: ["#003973", "#E5E5BE"], .down, .axial),
                                        (colors: ["#1E9600", "#FFF200", "#FF0000"], .left, .axial)]
        return animatedView
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
        setupGradient()
        setupImage()
        setupFirstName()
        setupLastName()
        setupNumberField()
//        setupButton()
    }
    
    private func setupGradient() {
        addSubview(gradientView)
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            gradientView.topAnchor.constraint(equalTo: topAnchor),
            gradientView.bottomAnchor.constraint(equalTo: bottomAnchor),
            gradientView.leadingAnchor.constraint(equalTo: leadingAnchor),
            gradientView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }

    private func setupImage() {
        gradientView.addSubview(contactImage)
        contactImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contactImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            contactImage.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            contactImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.30),
            contactImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.30)
        ])
    }
    
    private func setupFirstName() {
        gradientView.addSubview(firstNameField)
        firstNameField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            firstNameField.centerXAnchor.constraint(equalTo: centerXAnchor),
            firstNameField.topAnchor.constraint(equalTo: contactImage.bottomAnchor, constant: 15),
            firstNameField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            firstNameField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    private func setupLastName() {
        gradientView.addSubview(lastNameField)
        lastNameField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
//            lastNameField.centerXAnchor.constraint(equalTo: centerXAnchor),
            lastNameField.topAnchor.constraint(equalTo: firstNameField.bottomAnchor, constant: 30),
            lastNameField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            lastNameField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    private func setupNumberField() {
        gradientView.addSubview(numberField)
        numberField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            numberField.topAnchor.constraint(equalTo: lastNameField.bottomAnchor, constant: 30),
            numberField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            numberField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    private func setupButton() {
        gradientView.addSubview(createButton)
        createButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            createButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            createButton.topAnchor.constraint(equalTo: lastNameField.bottomAnchor, constant: 8),
//            createButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
//            createButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
}
