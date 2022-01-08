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
    
    // MARK: - Life Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
// MARK: - IB Action
    @IBAction func segmentControl(_ sender: Any) {
    }
    
}

// MARK: - TableVeiw Protocols
extension MainViewController: UITableViewDataSource, UITabBarDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GameTableViewCell", for: indexPath) as! GameTableViewCell
        
        cell.gameModel = games[indexPath.row]
        
        cell.setupCell()
        
        return cell
    }
    
}
