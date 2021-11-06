//
//  CustomInputView.swift
//  login screen
//
//  Created by pranav deshpande on 06/11/21.
//

import UIKit

class CustomInputView: UIView {


    @IBOutlet var containerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var customTextField: PaddingTextField!

    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialize()
    }

    func initialize() {
        // mention the bundle id
        Bundle.main.loadNibNamed("CustomInputView", owner: self, options: nil)
        self.addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.customTextField.layer.borderWidth = 1
        self.customTextField.layer.borderColor = UIColor.gray.cgColor
        self.customTextField.layer.cornerRadius = 5
    }
}
