//
//  DevelopersListViewController.swift
//  HwSportLeague
//
//  Created by Alex Kulish on 05.01.2022.
//

import UIKit

class DevelopersListViewController: UITableViewController {
    
    let developers = Developer.getDeveloper()

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        developers.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "devCell", for: indexPath) as! DevelopersTableViewCell
        
        let developer = developers[indexPath.row]
        
        cell.nameLabel.text = developer.name
        cell.roleLabel.text = developer.role
        cell.developerImage.image = UIImage(named: developer.logo)
        cell.developerImage.layer.cornerRadius = cell.developerImage.frame.size.width / 2
        cell.developerImage.clipsToBounds = true
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
