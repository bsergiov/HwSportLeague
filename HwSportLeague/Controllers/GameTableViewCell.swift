//
//  GameTableViewCell.swift
//  HwSportLeague
//
//  Created by BSergio on 06.01.2022.
//

import UIKit

class GameTableViewCell: UITableViewCell {

    // MARK: - IB Outlets
    @IBOutlet weak var logoHomeImagView: UIImageView!
    @IBOutlet weak var logoAwayImagView: UIImageView!
    
    @IBOutlet weak var homeNameLabel: UILabel!
    @IBOutlet weak var awayNameLabel: UILabel!
    
    // MARK: - Public Properties
    var gameModel: GameModel?
    
   // MARK: - Public Properties
    func setupCell() {
        
        guard let gameModel = gameModel else { return }
        
        logoHomeImagView.image = UIImage(named: gameModel.homeTeam)
        logoAwayImagView.image = UIImage(named: gameModel.awayTeam)

        homeNameLabel.text = gameModel.homeTeam
        awayNameLabel.text = gameModel.awayTeam
    }
 
}
