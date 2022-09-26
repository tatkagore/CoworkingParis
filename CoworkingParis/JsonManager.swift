//
//  JsonManager.swift
//  CoworkingParis
//
//  Created by Tatiana Simmer on 26/09/2022.
//

import Foundation

struct CoworkingPlace: Codable, Identifiable {
    let id: Int
    let name: String
    let lat, lon: Double
    let address: String
    let type: cafeType
    let url: String
    let wifi: Bool
    
    static let allCafes: [CoworkingPlace] = Bundle.main.decode(file: "places.json")
    static let sampleCafe: CoworkingPlace = allCafes[0]
    
}

enum cafeType: String, Codable {
    case coffee = "coffee"
    case coffeeCoworking = "coffee / coworking"
    case coworking = "coworking"
}

extension Bundle {
    func decode<T: Decodable >(file: String) -> T {
        guard let url =  self.url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in the project!")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not load \(file) in the project!")
        }
        
        let decoder = JSONDecoder()
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
                fatalError("Could not decode \(file) in the project!")
        }
        return loadedData
    }
}

