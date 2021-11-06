//
//  SignupViewController.swift
//  login screen
//
//  Created by pranav deshpande on 04/11/21.
//

import UIKit

class SignupViewController: UIViewController {


    @IBOutlet var completeScreenView: UIView!
    @IBOutlet weak var nameView: CustomInputView!
    @IBOutlet weak var emailView: CustomInputView!
    @IBOutlet weak var passwordView: CustomInputView!
    @IBOutlet weak var confirmPasswordView: CustomInputView!
    @IBOutlet weak var signupBtn: UIButton!
    @IBOutlet weak var crossImage: UIImageView!
    @IBOutlet weak var loginLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.completeScreenView.backgroundColor = .white
        nameView.titleLabel.text = "Name"
        emailView.titleLabel.text = "Email"
        passwordView.titleLabel.text = "Password"
        confirmPasswordView.titleLabel.text = "Confirm Password"
        nameView.customTextField.returnKeyType = .next
        emailView.customTextField.returnKeyType = .next
        passwordView.customTextField.returnKeyType = .next
        confirmPasswordView.customTextField.returnKeyType = .go
        passwordView.customTextField.isSecureTextEntry = true
        confirmPasswordView.customTextField.isSecureTextEntry = true
        nameView.customTextField.delegate = self
        emailView.customTextField.delegate = self
        passwordView.customTextField.delegate = self
        confirmPasswordView.customTextField.delegate = self
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
        let completeScreenViewTapped = UITapGestureRecognizer(target: self, action: #selector(completeScreenViewPressed))
        completeScreenViewTapped.numberOfTapsRequired = 1
        completeScreenViewTapped.numberOfTouchesRequired = 1
        completeScreenView.addGestureRecognizer(completeScreenViewTapped)
        nameView.customTextField.becomeFirstResponder()
    }
    @objc func crossLogoTapped() {
        self.completeScreenView.endEditing(true)
        self.dismiss(animated: true, completion: nil)
    }
    @objc func loginLabelTapped() {
        self.completeScreenView.endEditing(true)
        self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)
    }
    @objc func completeScreenViewPressed() {
        self.completeScreenView.endEditing(true)
    }
    @IBAction func signupButtonTapped(_ sender: UIButton) {
        validateAllFields()
    }
    func validateAllFields() {
        // first resign the keyboard
        nameView.customTextField.resignFirstResponder()
        emailView.customTextField.resignFirstResponder()
        passwordView.customTextField.resignFirstResponder()
        confirmPasswordView.customTextField.resignFirstResponder()

        
        // check whether all fields are filled or not
        // name field should not be less than 3 characters
        // email field should be valid email
        // password feild should be more than 8 characters and less than 20 char
        // password and confirm password should be equal otherwise show alert that they are not equal.
    }
}

extension SignupViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameView.customTextField {
            emailView.customTextField.becomeFirstResponder()
        } else if textField == emailView.customTextField {
            passwordView.customTextField.becomeFirstResponder()
        } else if textField == passwordView.customTextField {
            confirmPasswordView.customTextField.becomeFirstResponder()
        } else if textField == confirmPasswordView.customTextField {
            validateAllFields()
        }
        return true
    }
}
