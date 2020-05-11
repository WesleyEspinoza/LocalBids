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
    
    var delegate: LoginSignUpViewController? = nil
    let logo: UIImageView = {
       let imageView = UIImageView()
        imageView.backgroundColor = .white
        imageView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let emailTextField: TextField = {
        let textfield = TextField.textBox(.white, UIColor(hex: 0xed6663), 0, .clear, "Email", 20, "emailIcon")
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 1.2).isActive = true
        textfield.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
       return textfield
    }()
    
    
    
    let passwordTextField: TextField = {
        let textfield = TextField.textBox(.white, UIColor(hex: 0xed6663), 0, .clear, "Password", 20, "passwordIcon")
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 1.2).isActive = true
        textfield.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        textfield.isSecureTextEntry = true
        
       return textfield
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(hex: 0x1b262c)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(emailTextField)
        self.addSubview(passwordTextField)
        self.addSubview(logo)
        NSLayoutConstraint.activate([
            emailTextField.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            emailTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 16),
            passwordTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            
            logo.topAnchor.constraint(equalTo: self.topAnchor, constant: 32),
            logo.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
