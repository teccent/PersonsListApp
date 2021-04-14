//
//  TabBarController.swift
//  PersonsListApp
//
//  Created by Теона Магай on 14.04.2021.
//

import UIKit

class TabBarController: UITabBarController {

    let persons = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        personTransfer()
        
        
    }
    
    func personTransfer() {
        guard let viewControllers = self.viewControllers else { return }
        
        viewControllers.forEach {
            if let listVC = $0 as? PersonsInfoListViewController {
                listVC.persons = persons
            } else if let navigationVC = $0 as? UINavigationController {
                let infoVC = navigationVC.topViewController as! PersonsListViewController
                infoVC.persons = persons
            }
        }
    }
}
