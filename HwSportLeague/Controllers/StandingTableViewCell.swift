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
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
