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
    var pointsTeam: Int
}

extension Standing {
    static func getTeam() -> [Standing] {
        
        var teams: [Standing] = []
        
        for team in TeamDataManager.teams {
            var standing = Standing(nameTeam: team,
                                    cityTeam: TeamDataManager.cityTeams[team] ?? "",
                                    stadionTeam: TeamDataManager.venueTeam[team] ?? "",
                                    gamesTeam: 38,
                                    winsTeam: Int.random(in: 0..<38),
                                    pointsTeam: 0)
            standing.pointsTeam = getPoints(for: standing.winsTeam)
            teams.append(standing)
        }
        let sortedTeams = teams.sorted(by: { $0.pointsTeam > $1.pointsTeam })
        return sortedTeams
    }
    
    static private func getPoints(for wins: Int) -> Int {
        var points = 0
        for _ in 0..<wins {
            points = wins * 3
        }
        return points
    }
}

