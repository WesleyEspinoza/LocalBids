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
        let textfield = TextField()
        
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.backgroundColor = .white
        textfield.textColor = UIColor(hex: 0xed6663)
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 1.5).isActive = true
        textfield.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        let leftView = UIImageView(image: UIImage(named: "emailIcon"))
        leftView.translatesAutoresizingMaskIntoConstraints = false
        let leftViewContainer = UIView(frame: CGRect(x: 0, y: 0, width: leftView.frame.width + 8, height: leftView.frame.height))
        leftViewContainer.addSubview(leftView)
        
        textfield.leftView = leftViewContainer
        textfield.leftViewMode = .always
        textfield.isUserInteractionEnabled = true
        textfield.isEnabled = true
        
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
