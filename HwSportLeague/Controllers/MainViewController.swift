//
//  MainViewController.swift
//  HwSportLeague
//
//  Created by BSergio on 05.01.2022.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - Life Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        print(GameModel.getGames())
    }
    
// MARK: - IB Action
    @IBAction func segmentControl(_ sender: Any) {
    }
    
}
