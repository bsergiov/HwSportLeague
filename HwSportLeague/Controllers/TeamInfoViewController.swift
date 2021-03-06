//
//  StandingViewController.swift
//  HwSportLeague
//
//  Created by BSergio on 05.01.2022.
//

import UIKit

class TeamInfoViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var logoTeamImageView: UIImageView!
    @IBOutlet var cityTeamLabel: UILabel!
    @IBOutlet var stadionTeamLabel: UILabel!
    
    // MARK: Public Properties
    var team: Standing!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = team.nameTeam
        logoTeamImageView.image = UIImage(named: team.nameTeam)
        cityTeamLabel.text = "City: \(team.cityTeam)"
        stadionTeamLabel.text = "Stadion: \(team.stadionTeam)"
        
    }
}
