//
//  InfoViewController.swift
//  ContactApp
//
//  Created by Анна Мелехина on 29.12.2021.
//  Copyright © 2021 Anna Melekhina. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "\(person.name) \(person.surname)"
        
        phoneLabel.text = person.phone
        emailLabel.text = person.email
        
    }
    



}
