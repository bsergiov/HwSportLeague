//
//  StandingTableViewController.swift
//  HwSportLeague
//
//  Created by Alex Kulish on 06.01.2022.
//

import UIKit

class StandingTableViewController: UITableViewController {
    
    // MARK: Private Properties
    let teams = Standing.getTeam()

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        teams.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "standingCell",
                                                 for: indexPath) as! StandingTableViewCell
        
        cell.setupCell(for: teams[indexPath.row])
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let teamInfoVC = segue.destination as? TeamInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let team = teams[indexPath.row]
        
        teamInfoVC.team = team
    }
    

}
