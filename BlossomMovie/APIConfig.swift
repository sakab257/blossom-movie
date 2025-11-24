//
//  APIConfig.swift
//  BlossomMovie
//
//  Created by Salim on 24/11/2025.
//

import Foundation

struct APIConfig: Decodable {
    let tmdbBaseURL: String
    let tmdbAPIKey: String
    
    static let shared: APIConfig = {
        guard let url = Bundle.main.url(forResource: "APIConfig", withExtension: "json") else {
            fatalError("Il manque APIConfig.json ou le fichier n'existe pas")
        }
        
        do {
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode(APIConfig.self, from: data)
            
        } catch {
            fatalError("Impossible de charger ou décoder APIConfig.json :\(error)")
        }
    }()
}
