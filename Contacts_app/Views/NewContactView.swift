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
        return field
    }()
    
    public lazy var lastNameField: UITextField = {
        let field = UITextField()
        return field
    }()
    
    public lazy var numberField: UITextField = {
        let field = UITextField()
        return field
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

}
