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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
