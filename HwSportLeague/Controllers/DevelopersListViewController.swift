//
//  DevelopersListViewController.swift
//  HwSportLeague
//
//  Created by Alex Kulish on 05.01.2022.
//

import UIKit

class DevelopersListViewController: UITableViewController {
    
    // MARK: - Private Properties
    let developers = Developer.getDeveloper()

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        developers.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "devCell",
                                                 for: indexPath) as! DevelopersTableViewCell
        
        cell.setupCell(for: developers[indexPath.row])
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
