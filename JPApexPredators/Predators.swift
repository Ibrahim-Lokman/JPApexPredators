//
//  Predators.swift
//  JPApexPredators
//
//  Created by Ibrahim Lokman on 9/9/24.
//

import Foundation

class Predators {
    var apexPredators: [ApexPredator] = []
    
    init() {
        decodeApexPredatorData()
    }
    
    
    func decodeApexPredatorData(){
        if let url = Bundle.main.url(forResource: "jpapepredators", withExtension: "json"){
            do{
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                apexPredators = try decoder.decode([ApexPredator].self, from: <#T##Data#>)
            } catch {
                print("Error decoding JSON data: \(error)")
            }
        }
    }
}
