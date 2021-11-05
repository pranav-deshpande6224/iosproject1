//
//  PaddingTextField.swift
//  login screen
//
//  Created by pranav deshpande on 02/11/21.
//

import UIKit

class PaddingTextField: UITextField {

    // to apply padding to the textfield we need to override textRect and placeholderRect, editingRect inside textfield
    let padding = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
