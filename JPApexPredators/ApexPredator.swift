//
//  ApexPredator.swift
//  JPApexPredators
//
//  Created by Ibrahim Lokman on 9/9/24.
//

import Foundation
import SwiftUI

struct ApexPredator: Codable, Identifiable {
    let id: Int
    let name: String
    let type: PredatorType
    let latitude: Double
    let longitude: Double
    let movies: [String]
    let movieScenes: [MovieScene]
    let link: String
    
    var image: String {
        name
            .lowercased()
            .replacingOccurrences(of: " ", with: "")
    }
    
    struct MovieScene: Codable {
        let id: Int
        let movie: String
        let sceneDescription: String
    }
    
   
}

enum PredatorType: String, Codable, CaseIterable, Identifiable {
 
    
    case all
    case land
    case air
    case sea
    
    var id: PredatorType {
        self
    }
    
    var background: Color {
        switch self {
        case .land:
                .brown
        case .air:
                .teal
        case .sea:
                .blue
        case .all:
                .black
        }
    }
    var icon: String {
        switch self {
        case .land:
                "square.stack.3d.up.fill"
        case .air:
                "leaf.fill"
        case .sea:
                "wind"
        case .all:
                "drop.fill"
        }
    }
    
}
