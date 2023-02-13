//
//  ViewController.swift
//  LoginApp
//
//  Created by Evgeniy Kuzin on 13.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 10
    }
    
let userName = "User"
let password = "1111"
    
    
    @IBAction func forgotUserNameButtonTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your username is User")
    }
    
    
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is 1111")
    }
    
    
}

extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
