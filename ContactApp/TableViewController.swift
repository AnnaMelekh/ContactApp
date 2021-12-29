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
        tableView.rowHeight = 85
        createPerson()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else  { return }
        
        let person = persons[indexPath.row]
        infoVC.person = person
    }
    
    private func prepare2 (for segue: UIStoryboardSegue, sender: Any?) {
     let tabBarController = segue.destination as! UITabBarController
    
     let viewControllers = tabBarController.viewControllers
     
     for viewController in viewControllers! {
     if let sectionVC = viewController as? SectionListViewController {
        sectionVC.persons = persons 
         }
     }
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



