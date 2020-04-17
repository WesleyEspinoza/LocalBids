//
//  UITextFieldExt.swift
//  LocalBids
//
//  Created by Erick Wesley Espinoza on 4/17/20.
//  Copyright © 2020 Erick Wesley Espinoza. All rights reserved.
//

import Foundation
import UIKit
class TextField: UITextField {
    let padding = UIEdgeInsets(top: 2, left: 8, bottom: 0, right: 8)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
    }
    
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
      return bounds.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
      return bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
      return bounds.inset(by: padding)
    }
}
