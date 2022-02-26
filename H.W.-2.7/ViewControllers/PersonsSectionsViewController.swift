//
//  PersonsSectionsViewController.swift
//  H.W.-2.7
//
//  Created by Виталий Подшибякин on 26.02.2022.
//

import UIKit

class PersonsSectionsViewController: UITableViewController {
    private var persons = DataManager.getPerson()

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count

    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let person = persons[indexPath.section]
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "phoneCell", for: indexPath)
            var content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "phone")
                    content.text = person.mail
                    cell.contentConfiguration = content
          return cell

        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath)
            var content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "mail")
                    content.text = person.mail
                    cell.contentConfiguration = content
          return cell
        }
    }
}
