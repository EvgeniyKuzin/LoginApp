//
//  BioViewController.swift
//  AboutMe
//
//  Created by Evgeniy Kuzin on 18.02.2023.
//

import UIKit

final class BioViewController: UIViewController {

    @IBOutlet var bioLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showBio()
    }
    
    private func showBio() {
        bioLabel.text = Person.currentPerson.biography
    }
}
