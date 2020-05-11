//
//  LoginSignUpView.swift
//  LocalBids
//
//  Created by Erick Wesley Espinoza on 4/16/20.
//  Copyright © 2020 Erick Wesley Espinoza. All rights reserved.
//

import Foundation
import UIKit

import Foundation
import UIKit
class LoginView: UIView {
    
    var delegate: LoginSignUpViewController? = nil
    // initialize emailTextField
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
    
    // initialize loginButton
    let loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(login), for: .touchUpInside)
        return button
    }()
    
    // initialize registerButton
    let registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Register", for: .normal)
        button.addTarget(self, action: #selector(gotoRegisterView), for: .touchUpInside)
        return button
    }()
    
    @objc func gotoRegisterView(){
        // animate view constraint change
        delegate?.animateViewTransitions(animation: .LoginToRegister)
    }
    
    //login logic
    @objc func login(){
//        delegate?.login()
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        self.addSubview(emailTextField)
        self.addSubview(passwordTextField)
        self.addSubview(loginButton)
        self.addSubview(registerButton)
        self.backgroundColor = .darkGray
        let screen = UIScreen.main
        
        NSLayoutConstraint.activate([
            emailTextField.widthAnchor.constraint(equalToConstant: screen.bounds.width / 1.5),
            emailTextField.heightAnchor.constraint(equalToConstant: 25),
            emailTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            emailTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: screen.bounds.width / 1.5),
            
            
            passwordTextField.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 1.5),
            passwordTextField.heightAnchor.constraint(equalToConstant: 25),
            passwordTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 20),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            loginButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 1.5),
            loginButton.heightAnchor.constraint(equalToConstant: 25),
            
            
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20),
            registerButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            registerButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 1.5),
            registerButton.heightAnchor.constraint(equalToConstant: 25),
        
        ])
    }
}
