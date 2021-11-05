//
//  SignupViewController.swift
//  login screen
//
//  Created by pranav deshpande on 04/11/21.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var signupBtn: UIButton!
    @IBOutlet weak var crossImage: UIImageView!
    @IBOutlet weak var loginLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        nameTextField.layer.borderWidth = 1
        emailTextField.layer.borderWidth = 1
        passwordTextField.layer.borderWidth = 1
        confirmPasswordTextField.layer.borderWidth = 1
        nameTextField.layer.borderColor = UIColor.gray.cgColor
        emailTextField.layer.borderColor = UIColor.gray.cgColor
        passwordTextField.layer.borderColor = UIColor.gray.cgColor
        confirmPasswordTextField.layer.borderColor = UIColor.gray.cgColor
        nameTextField.layer.cornerRadius = 5
        emailTextField.layer.cornerRadius = 5
        passwordTextField.layer.cornerRadius = 5
        confirmPasswordTextField.layer.cornerRadius = 5
        signupBtn.layer.cornerRadius = 20
        crossImage.isUserInteractionEnabled = true
        loginLbl.isUserInteractionEnabled = true
        let crossTapped = UITapGestureRecognizer(target: self, action: #selector(crossLogoTapped))
        crossTapped.numberOfTapsRequired = 1
        crossTapped.numberOfTouchesRequired = 1
        crossImage.addGestureRecognizer(crossTapped)
        let loginTapped = UITapGestureRecognizer(target: self, action: #selector(loginLabelTapped))
        loginTapped.numberOfTapsRequired = 1
        loginTapped.numberOfTouchesRequired = 1
        loginLbl.addGestureRecognizer(loginTapped)
    }
    @objc func crossLogoTapped() {
        self.dismiss(animated: true, completion: nil)
    }
    @objc func loginLabelTapped() {
        dismissSignupViewController()
    }
    func dismissSignupViewController() {
        self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)
    }
}
