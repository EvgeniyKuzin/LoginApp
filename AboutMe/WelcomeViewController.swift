//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Evgeniy Kuzin on 13.02.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, " + "userName" + "!"
    }
}
