//
//  PersonDetailsViewController.swift
//  H.W.-2.7
//
//  Created by Виталий Подшибякин on 25.02.2022.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = String(person.phoneNumber)
        emailLabel.text = person.mail
    }
}
