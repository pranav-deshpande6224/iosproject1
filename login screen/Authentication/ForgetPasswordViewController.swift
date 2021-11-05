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
    @IBOutlet weak var resetEmail: PaddingTextField!
    @IBOutlet weak var signUpLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        crossImage.isUserInteractionEnabled = true
        let crossImageTapGesture = UITapGestureRecognizer(target: self, action: #selector(crossImageTapped))
        crossImage.addGestureRecognizer(crossImageTapGesture)
        resetEmail.layer.borderWidth = 1
        resetEmail.layer.borderColor = UIColor.gray.cgColor
        resetEmail.layer.cornerRadius = 5
        resetPasswordBtn.layer.cornerRadius = 20
        signUpLbl.isUserInteractionEnabled = true
        let signupTapped = UITapGestureRecognizer(target: self, action: #selector(signupLblInForgetPasswordTapped))
        signUpLbl.addGestureRecognizer(signupTapped)
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
