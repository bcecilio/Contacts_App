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
    
    private var ogView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0.8, alpha: 0.4)
        return view
    }()
    
    private var blurView: UIVisualEffectView = {
        let blur = UIBlurEffect(style: .light)
        let effect = UIVisualEffectView(effect: blur)
//        effect.frame = ogView.bounds
        return effect
    }()

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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupView()
        setupblur()
        setupImage()
        setupName()
        setupNumber()
    }
    
    private func setupView() {
        addSubview(ogView)
        ogView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            ogView.topAnchor.constraint(equalTo: topAnchor),
            ogView.bottomAnchor.constraint(equalTo: bottomAnchor),
            ogView.leadingAnchor.constraint(equalTo: leadingAnchor),
            ogView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    private func setupblur() {
        ogView.addSubview(blurView)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            blurView.topAnchor.constraint(equalTo: topAnchor),
            blurView.bottomAnchor.constraint(equalTo: bottomAnchor),
            blurView.leadingAnchor.constraint(equalTo: leadingAnchor),
            blurView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    private func setupImage() {
        ogView.addSubview(contactPicture)
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
        ogView.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            nameLabel.leadingAnchor.constraint(equalTo: contactPicture.trailingAnchor, constant: 20)
        ])
    }
    
    private func setupNumber() {
        ogView.addSubview(numberLabel)
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
