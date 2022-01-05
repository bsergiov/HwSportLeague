//
//  DeveloperModel.swift
//  HwSportLeague
//
//  Created by Alex Kulish on 05.01.2022.
//

struct Developer {
    let logo: String
    let name: String
    let role: String
}

extension Developer {
    
    static func getDeveloper() -> [Developer] {
        [Developer(logo: "Image2", name: "Sergey", role: "Team Lead"),
         Developer(logo: "Image", name: "Alexey", role: "Junior developer")]
    }
}
