//
//  PersonsInfoListViewController.swift
//  PersonsListApp
//
//  Created by Теона Магай on 13.04.2021.
//

import UIKit

class PersonsInfoListViewController: UITableViewController {
    
    var persons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 50
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(persons[section].personName)"
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personInfo", for: indexPath)
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()

        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            cell.contentConfiguration = content
        default:
            content.text = person.emailAddress
            cell.contentConfiguration = content
        }

        return cell
    }

}
