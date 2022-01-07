//
//  StandingModel.swift
//  HwSportLeague
//
//  Created by Alex Kulish on 06.01.2022.
//

import Foundation

struct Standing {
    let nameTeam: String
    let cityTeam: String
    let stadionTeam: String
    let gamesTeam: Int
    let winsTeam: Int
    let pointsTeam: Int
}

extension Standing {
    static func getTeam() -> [Standing] {
        
        var teams: [Standing] = []
        
        for team in TeamDataManager.teams {
            let standing = Standing(nameTeam: team,
                                    cityTeam: TeamDataManager.cityTeams[team] ?? "",
                                    stadionTeam: TeamDataManager.venueTeam[team] ?? "",
                                    gamesTeam: 38,
                                    winsTeam: Int.random(in: 0...38),
                                    pointsTeam: Int.random(in: 50...120))
            teams.append(standing)
        }
        let sortedTeams = teams.sorted(by: { $0.pointsTeam > $1.pointsTeam })
        return sortedTeams
    }
}

