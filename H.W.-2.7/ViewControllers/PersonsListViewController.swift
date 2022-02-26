//
//  PersonsListViewController.swift
//  H.W.-2.7
//
//  Created by Виталий Подшибякин on 25.02.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {

    private let persons = DataManager.getPerson()
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        let person = persons[indexPath.row]
        content.text = person.fullName

        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? PersonDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = persons[indexPath.row]
        detailsVC.person = person
        
        // что то я запутался и не пойму как передать persons на другой таббар
    }
}
