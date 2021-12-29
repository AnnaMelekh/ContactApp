//
//  SectionListViewController.swift
//  ContactApp
//
//  Created by Анна Мелехина on 30.12.2021.
//  Copyright © 2021 Anna Melekhina. All rights reserved.
//

import UIKit

class SectionListViewController: UIViewController {
    
    
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.dataSource = self

    }
    
}

extension SectionListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(persons[section].name) + \(persons[section].surname) "
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "phone", for: indexPath)
        
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.phone

        return cell

    }
}

    


