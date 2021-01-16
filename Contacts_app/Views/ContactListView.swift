//
//  ContactListView.swift
//  Contacts_app
//
//  Created by Brendon Cecilio on 11/22/20.
//

import UIKit
import AnimatedGradientView

class ContactListView: UIView {

    public lazy var tableView: UITableView = {
        let table = UITableView()
        table.backgroundColor = .none
        return table
    }()
    
    private let gradientView: AnimatedGradientView = {
        let animatedView = AnimatedGradientView()
        animatedView.direction = .up
        animatedView.animationValues = [(colors: ["#2BC0E4", "#EAECC6"], .up, .axial),
                                        (colors: ["#833ab4", "#fd1d1d", "#fcb045"], .right, .axial),]
//                                        (colors: ["#003973", "#E5E5BE"], .down, .axial),
//                                        (colors: ["#1E9600", "#FFF200", "#FF0000"], .left, .axial)]
        animatedView.autoAnimate = false
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
        setupTableView()
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
    
    private func setupTableView() {
        gradientView.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
