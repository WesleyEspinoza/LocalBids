//
//  LoginSignUpView.swift
//  LocalBids
//
//  Created by Erick Wesley Espinoza on 4/16/20.
//  Copyright © 2020 Erick Wesley Espinoza. All rights reserved.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    let emailTextField: TextField = {
        let textfield = TextField.textBox(.white, UIColor(hex: 0xed6663), 0, .clear, "Email", 20, "emailIcon")
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 1.2).isActive = true
        textfield.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
       return textfield
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(hex: 0x1b262c)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(emailTextField)
        
        NSLayoutConstraint.activate([
            emailTextField.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            emailTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
