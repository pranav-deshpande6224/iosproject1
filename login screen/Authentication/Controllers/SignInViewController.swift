//
//  SignInViewController.swift
//  login screen
//
//  Created by pranav deshpande on 05/11/21.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var passwordTextField: PaddingTextField!
//    @IBOutlet weak var emailTextField: PaddingTextField!
//    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signupLabel: UILabel!
    @IBOutlet weak var googleSignIN: UIButton!
    @IBOutlet weak var forgetPasswordLabel: UILabel!
    @IBOutlet weak var emailView: CustomInputView!

    override func viewDidLoad() {
        super.viewDidLoad()
        emailView.titleLabel.text = "Email"
//        emailTextField.delegate = self
        passwordTextField.delegate = self
//        emailTextField.layer.borderWidth = 1
        passwordTextField.layer.borderWidth = 1
//        emailTextField.layer.borderColor = UIColor.gray.cgColor
        passwordTextField.layer.borderColor = UIColor.gray.cgColor
//        emailTextField.layer.cornerRadius = 5
        passwordTextField.layer.cornerRadius = 5
        loginBtn.layer.cornerRadius = 20
        googleSignIN.layer.cornerRadius = 20
        signupLabel.isUserInteractionEnabled = true
        forgetPasswordLabel.isUserInteractionEnabled = true
        signupLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(signupTapped)))
        forgetPasswordLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(forgetPasswordTapped)))
    }

    @objc func forgetPasswordTapped() {
        print("forget password Tapped")
        moveToForgetPassword()
    }
    func moveToForgetPassword() {
        let forgetPasswordStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let forgetPasswordVc = forgetPasswordStoryBoard.instantiateViewController(withIdentifier: "ForgetPasswordViewController") as! ForgetPasswordViewController
        self.present(forgetPasswordVc, animated: true, completion: nil)
    }
    @objc func signupTapped() {
        let signUpStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let signUpVc = signUpStoryBoard.instantiateViewController(withIdentifier: "SignupViewController") as! SignupViewController
        self.present(signUpVc, animated: true, completion: nil)
    }
    @IBAction func loginTapped(_ sender: UIButton) {
        /*
            1. Keyboard should stop editing
            2. validation of email and password should be done
            3. if validation success collect email and password and make api call
            4. otherwise should alert that email is Empty or invalid email or password is empty or password shouldn't be less than 8 char

         */
        emailPasswordValidation()
    }

    func emailPasswordValidation() {
        //1 Keyboard should stop editing
//        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()

        //2. validation of email and password should be done
//        guard let email = emailTextField.text, !email.isEmpty else {
//            showAlert(message: "Please Enter Email")
//            return
//        }
        guard let password = passwordTextField.text, !password.isEmpty else {
            showAlert(message: "Please Enter Password")
            return
        }
        // Check whether entered email is valid or not
    }
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Eventzz", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if textField == emailTextField {
//            passwordTextField.becomeFirstResponder()
//        } else if textField == passwordTextField {
//            emailPasswordValidation()
//        }
//        return true
//    }
}
