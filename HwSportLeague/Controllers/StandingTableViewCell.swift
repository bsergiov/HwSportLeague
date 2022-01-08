//
//  StandingTableViewCell.swift
//  HwSportLeague
//
//  Created by Alex Kulish on 06.01.2022.
//

import UIKit

class StandingTableViewCell: UITableViewCell {
    
    @IBOutlet var logoTeamImageView: UIImageView!
    @IBOutlet var teamNameLabel: UILabel!
    @IBOutlet var gamesLabel: UILabel!
    @IBOutlet var winsLabel: UILabel!
    @IBOutlet var pointsLabel: UILabel!
    
    func setupCell(for standingModel: Standing?) {
        
        guard let standingModel = standingModel else {
            return
        }

        teamNameLabel.text = standingModel.nameTeam
        gamesLabel.text = String(standingModel.gamesTeam)
        winsLabel.text = String(standingModel.winsTeam)
        pointsLabel.text = String(standingModel.pointsTeam)
        logoTeamImageView.image = UIImage(named: standingModel.nameTeam)
        
    }
}
