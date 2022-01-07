//
//  GamesModel.swift
//  HwSportLeague
//
//  Created by BSergio on 07.01.2022.
//

import Foundation

struct GameModel {
    let homeTeam: String
    let awayTeam: String
    
    static func getGames() -> [GameModel] {
        var gamesModel: [GameModel] = []
        let maxCount = TeamDataManager.teams.count
        TeamDataManager.teams.forEach { team in
            let gameModel = GameModel(homeTeam: team,
                                      awayTeam: TeamDataManager.teams[Int.random(in: 0...(maxCount - 1))])
            gamesModel.append(gameModel)
        }
        
        return gamesModel
    }
}
