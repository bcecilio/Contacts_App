//
//  ContactCell.swift
//  Contacts_app
//
//  Created by Brendon Cecilio on 11/22/20.
//

import UIKit

class ContactCell: UIView {
    
    public lazy var nameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    public lazy var numberLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    public lazy var contactPicture: UIImageView = {
        let image = UIImageView()
        return image
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
        
    }
    
    private func setupImage() {
        addSubview(contactPicture)
        contactPicture.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contactPicture.centerXAnchor.constraint(equalTo: centerXAnchor),
//            contactPicture.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            contactPicture.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            contactPicture.trailingAnchor.constraint(equalTo: nameLabel.leadingAnchor, constant: 10)
        ])
    }
    
    private func setupName() {
        addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: contactPicture.trailingAnchor, constant: 10)
        ])
    }

}
