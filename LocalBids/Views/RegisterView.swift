//
//  RegisterView.swift
//  LocalBids
//
//  Created by Erick Wesley Espinoza on 5/11/20.
//  Copyright © 2020 Erick Wesley Espinoza. All rights reserved.
//


import Foundation
import UIKit
class RegisterView: UIView {
    var delegate: LoginSignUpViewController? = nil
    
    // initialize emailTextField
    let emailTextField: TextField = {
         let textfield = TextField.textBox(.white, UIColor(hex: 0xed6663), 0, .clear, "Email", 20, "emailIcon")
         
        return textfield
     }()
     
     
     
     let passwordTextField: TextField = {
         let textfield = TextField.textBox(.white, UIColor(hex: 0xed6663), 0, .clear, "Password", 20, "passwordIcon")
         
         textfield.isSecureTextEntry = true
         
        return textfield
     }()
    
    let confirmPasswordTextField: TextField = {
        let textfield = TextField.textBox(.white, UIColor(hex: 0xed6663), 0, .clear, "Confirm Password", 20, "passwordIcon")
        
        textfield.isSecureTextEntry = true
        
       return textfield
    }()
    
    
    let registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.setTitle("Register Account", for: .normal)
        button.addTarget(self, action: #selector(register), for: .touchUpInside)
        return button
    }()
    
    let cancelButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.setTitle("Cancel", for: .normal)
        button.addTarget(self, action: #selector(cancel), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        setupView()
    }
    
    // if the user hits cancel we want to animate back to the login view
    @objc func cancel(){
        delegate?.animateViewTransitions(animation: .RegisterToLogin)
        emailTextField.text = ""
        passwordTextField.text = ""
        confirmPasswordTextField.text = ""
    }
    
    // calls the Viewcontrollers register method.
    @objc func register(){
//        delegate?.register()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        self.addSubview(emailTextField)
        self.addSubview(passwordTextField)
        self.addSubview(confirmPasswordTextField)
        self.addSubview(registerButton)
        self.addSubview(cancelButton)
        self.backgroundColor = .darkGray
        let screen = UIScreen.main
        
        NSLayoutConstraint.activate([
            emailTextField.widthAnchor.constraint(equalToConstant: screen.bounds.width / 1.5),
            emailTextField.heightAnchor.constraint(equalToConstant: 30),
            emailTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            emailTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: screen.bounds.width / 1.5),
            
            
            passwordTextField.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 1.5),
            passwordTextField.heightAnchor.constraint(equalToConstant: 30),
            passwordTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 20),
            
            confirmPasswordTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            confirmPasswordTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            confirmPasswordTextField.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 1.5),
            confirmPasswordTextField.heightAnchor.constraint(equalToConstant: 30),
            
            
            registerButton.topAnchor.constraint(equalTo: confirmPasswordTextField.bottomAnchor, constant: 20),
            registerButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            registerButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 1.5),
            registerButton.heightAnchor.constraint(equalToConstant: 25),
            
            cancelButton.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 20),
            cancelButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            cancelButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 1.5),
            cancelButton.heightAnchor.constraint(equalToConstant: 25),
        
        ])
    }
}
