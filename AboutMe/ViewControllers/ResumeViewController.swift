//
//  ResumeViewController.swift
//  AboutMe
//
//  Created by Evgeniy Kuzin on 18.02.2023.
//

import UIKit

final class ResumeViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var proffesionLabel: UILabel!
    @IBOutlet var avatarView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showUserInfo()
    }
    
    private func showUserInfo() {
        nameLabel.text = Person.currentPerson.name
        surnameLabel.text = Person.currentPerson.surName
        ageLabel.text = Person.currentPerson.age.formatted()
        proffesionLabel.text = Person.currentPerson.profession
        //avatarView.image = 
    }
}


