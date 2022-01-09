//
//  CustomTableViewCell.swift
//  HwSportLeague
//
//  Created by Alex Kulish on 05.01.2022.
//

import UIKit

class DevelopersTableViewCell: UITableViewCell {
    
    // MARK: - IB Outlets
    @IBOutlet var developerImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var roleLabel: UILabel!
    
    // MARK: - Public Methods
    func setupCell(for developerModel: Developer?) {
        
        guard let developerModel = developerModel else { return }
        
        nameLabel.text = developerModel.name
        roleLabel.text = developerModel.role
        developerImage.image = UIImage(named: developerModel.logo)
        developerImage.layer.cornerRadius = developerImage.frame.size.width / 2
        developerImage.clipsToBounds = true
    }
}
