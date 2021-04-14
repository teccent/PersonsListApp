//
//  PersonDetailsViewController.swift
//  PersonsListApp
//
//  Created by Теона Магай on 13.04.2021.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "\(person.personName)"
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.emailAddress)"
    }

}

