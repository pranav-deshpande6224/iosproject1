//
//  ForgetPasswordViewController.swift
//  login screen
//
//  Created by pranav deshpande on 31/10/21.
//

import UIKit

class ForgetPasswordViewController: UIViewController {

    @IBOutlet weak var crossImage: UIImageView!
    @IBOutlet weak var resetPasswordBtn: UIButton!
    @IBOutlet weak var signUpLbl: UILabel!
    @IBOutlet weak var emailView: CustomInputView!
    @IBOutlet var completeView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        emailView.titleLabel.text = "Email"
        crossImage.isUserInteractionEnabled = true
        completeView.isUserInteractionEnabled = true
        let completeViewTapped = UITapGestureRecognizer(target: self, action: #selector(completeViewPressed))
        completeViewTapped.numberOfTapsRequired = 1
        completeViewTapped.numberOfTouchesRequired = 1
        completeView.addGestureRecognizer(completeViewTapped)
        let crossImageTapGesture = UITapGestureRecognizer(target: self, action: #selector(crossImageTapped))
        crossImage.addGestureRecognizer(crossImageTapGesture)
        resetPasswordBtn.layer.cornerRadius = 20
        signUpLbl.isUserInteractionEnabled = true
        let signupTapped = UITapGestureRecognizer(target: self, action: #selector(signupLblInForgetPasswordTapped))
        signupTapped.numberOfTouchesRequired = 1
        signupTapped.numberOfTapsRequired = 1
        signUpLbl.addGestureRecognizer(signupTapped)
    }
    @objc func completeViewPressed() {
        self.view.endEditing(true)
    }
    @objc func crossImageTapped() {
        self.view.endEditing(true)
        self.dismiss(animated: true, completion: nil)
    }
    @objc func signupLblInForgetPasswordTapped() {
        let signUpStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let signUpVc = signUpStoryBoard.instantiateViewController(withIdentifier: "SignupViewController") as! SignupViewController
        self.present(signUpVc, animated: true, completion: nil)
    }
    @IBAction func resetPasswordTapped(_ sender: UIButton) {
    }
}
