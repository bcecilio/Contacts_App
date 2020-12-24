//
//  TableViewCell.swift
//  Contacts_app
//
//  Created by Brendon Cecilio on 12/9/20.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var data: Contacts? {
        didSet {
            guard let data = data else {
                return
            }
            self.nameLabel.text = data.contactName
            self.numberLabel.text = String(data.contactNumber)
        }
    }

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
        image.image = UIImage(systemName: "person")
//        let screenSize: CGRect = UIScreen.main.bounds
        image.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        return image
    }()
    
//    override var intrinsicContentSize: CGSize {
//        let height = min(contentSize.height, maxHeight)
//        return CGSize(width: contentSize.width, height: height)
//      }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupImage()
        setupName()
        setupNumber()
    }
    
    private func setupImage() {
        addSubview(contactPicture)
        contactPicture.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
//            contactPicture.centerYAnchor.constraint(equalTo: centerYAnchor),
            contactPicture.topAnchor.constraint(equalTo: topAnchor, constant: 35),
            contactPicture.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
//            contactPicture.widthAnchor.constraint(equalTo: widthAnchor, constant: 2)
//            contactPicture.trailingAnchor.constraint(equalTo: nameLabel.leadingAnchor, constant: 10)
        ])
    }
    
    private func setupName() {
        addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            nameLabel.leadingAnchor.constraint(equalTo: contactPicture.trailingAnchor, constant: 20)
        ])
    }
    
    private func setupNumber() {
        addSubview(numberLabel)
        numberLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            numberLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 1),
            numberLabel.leadingAnchor.constraint(equalTo: contactPicture.trailingAnchor, constant: 20),
            numberLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 1)
        ])
    }

    public func configureCell(with contact: Contacts) {
        nameLabel.text = contact.contactName
        numberLabel.text = String(contact.contactNumber)
    }
}
