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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTF.text
    }
    
    @IBAction func forgotUserNameButtonTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is User")
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is 1111")
    }
    
    @IBAction func logInButtonTapped() {
        let userName = "User"
        let password = "1111"
        
        guard userNameTF.text != userName || passwordTF.text != password else { return }
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            passwordTF.text = ""
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.view.endEditing(false)
    }
}
