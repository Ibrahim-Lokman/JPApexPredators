//
//  ApexPredator.swift
//  JPApexPredators
//
//  Created by Ibrahim Lokman on 9/9/24.
//

import Foundation

struct ApexPredator: Codable {
    let id: Int
    let name: String
    let type: String
    let latitude: Double
    let longitude: Double
    let movies: [String]
    let movieScenes: [MovieScene]
    let link: String
    
    struct MovieScene: Codable {
        let id: Int
        let movie: String
        let sceneDescription: String
    }
}
