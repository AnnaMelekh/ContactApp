//
//  ViewController.swift
//  ContactApp
//
//  Created by Анна Мелехина on 29.12.2021.
//  Copyright © 2021 Anna Melekhina. All rights reserved.
//

import UIKit


class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var persons: [Person] = []
    
    override func viewDidLoad() {
        tableView.dataSource = self
        super.viewDidLoad()
createPerson()
        
    }

        
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        
        let person = persons[indexPath.row]
        cell.textLabel?.text = "\(person.name)  \(person.surname)"

        return cell
    }

    }

extension TableViewController {

private func createPerson() -> [Person] {
for _ in 1...names.count {
    let person = Person(
        name: names.randomElement() ?? "",
        surname: surnames.randomElement() ?? "",
        phone: phones.randomElement() ?? "",
        email: emails.randomElement() ?? ""
    )
        persons.append(person)
    }
    return persons
}
}


//override func numberOfSections(in tableView: UITableView) -> Int {
//    2
//}