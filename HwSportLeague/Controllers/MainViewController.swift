//
//  MainViewController.swift
//  HwSportLeague
//
//  Created by BSergio on 05.01.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var mainTableView: UITableView!
    
    // MARK: - Private Properties
    let games = GameModel.getGames()
    let teams = TeamDataManager.teams
    
    var stateTableVeiw = StateTableView.games
    
    // MARK: - Life Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - IB Action
    @IBAction func gamesOrTeamsChanger(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            stateTableVeiw = .games
        default:
            stateTableVeiw = .teams
        }
        mainTableView.reloadData()
    }
}

// MARK: - TableVeiw Protocols
extension MainViewController: UITableViewDataSource, UITabBarDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch stateTableVeiw {
        case .games:
            return games.count
        default:
            return teams.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if stateTableVeiw == .games {
            let cell = tableView.dequeueReusableCell(withIdentifier: "GameTableViewCell", for: indexPath) as! GameTableViewCell
            
            cell.gameModel = games[indexPath.row]
            
            cell.setupCell()
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TeamTableViewCell", for: indexPath) as! TeamTableViewCell
            var content = cell.defaultContentConfiguration()
            let team = teams[indexPath.row]
            content.image = UIImage(named: team)
            content.text = team
            
            cell.contentConfiguration = content
            
            return cell
        }
    }
}

// MARK: - State Main Screen
enum StateTableView {
    case games
    case teams
}
