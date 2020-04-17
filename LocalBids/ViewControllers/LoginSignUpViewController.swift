//
//  LoginSignUp.swift
//  LocalBids
//
//  Created by Erick Wesley Espinoza on 4/16/20.
//  Copyright © 2020 Erick Wesley Espinoza. All rights reserved.
//

import Foundation
import UIKit

class LoginSignUpViewController: UIViewController {
    let loginView = LoginView(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupLoginView()
        
    }
    
    
    func setupLoginView(){
        view.addSubview(loginView)
        
        NSLayoutConstraint.activate([
            loginView.topAnchor.constraint(equalTo: self.view.topAnchor),
            loginView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            loginView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            loginView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }


}
