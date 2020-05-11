//
//  LoginSignUp.swift
//  LocalBids
//
//  Created by Erick Wesley Espinoza on 4/16/20.
//  Copyright © 2020 Erick Wesley Espinoza. All rights reserved.
//

import Foundation
import UIKit

enum LoginVCTransitionAnims {
    case LoginToRegister
    case RegisterToLogin
}

class LoginSignUpViewController: UIViewController {
    let loginView = LoginView()
    let registerView = RegisterView()
    let screen = UIScreen.main
    var leadingAnchor: NSLayoutConstraint? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupViews()
    }
    
    
    func setupViews(){
        self.view.addSubview(loginView)
        loginView.delegate = self
        //call extension to make sure the keyboard gets dismissed when tapped elsewhere
        hideKeyboardTapped()
        self.view.addSubview(registerView)
        registerView.delegate = self
        
        leadingAnchor = loginView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
        leadingAnchor!.isActive = true
        
        
        NSLayoutConstraint.activate([
            loginView.topAnchor.constraint(equalTo: self.view.topAnchor),
            loginView.widthAnchor.constraint(equalToConstant: screen.bounds.width),
            loginView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            
            registerView.topAnchor.constraint(equalTo: self.view.topAnchor),
            
            registerView.leadingAnchor.constraint(equalTo: self.loginView.trailingAnchor),
            registerView.widthAnchor.constraint(equalToConstant: screen.bounds.width),
            registerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
        
    }
    
    
    func animateViewTransitions(animation: LoginVCTransitionAnims){
        // animate constraints
        switch animation {
        case .LoginToRegister:
            UIView.animate(withDuration: 0.25) {
                self.leadingAnchor?.isActive = false
                self.leadingAnchor = self.loginView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: -1 * self.screen.bounds.width)
                self.leadingAnchor?.isActive = true
                self.view.layoutIfNeeded()
            }
            break
        case .RegisterToLogin:
            UIView.animate(withDuration: 0.25) {
                self.leadingAnchor?.isActive = false
                self.leadingAnchor = self.loginView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
                self.leadingAnchor?.isActive = true
                self.view.layoutIfNeeded()
            }
            break
        }
    }
    func showErrorAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
}
