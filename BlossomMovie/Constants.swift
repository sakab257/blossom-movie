//
//  Constants.swift
//  BlossomMovie
//
//  Created by Carlos Valentin on 11/10/24.
//

import Foundation
import SwiftUI

struct Constants {
    static let homeString = "Accueil"
    static let upcomingString = "À venir"
    static let searchString = "Rechercher"
    static let favoriteString = "Favoris"
    static let playString = "Regarder"
    static let addFavoriteString = "Ajouter"
    static let trendingMovieString = "Films tendance"
    static let trendingTVString = "Séries tendance"
    static let topRatedMovieString = "Films les mieux notés"
    static let topRatedTVString = "Séries les mieux notées"
    
    static let backgroundColorString = "Background"
    
    static let homeIconString = "house.fill"
    static let upcomingIconString = "play.circle.fill"
    static let searchIconString = "magnifyingglass"
    static let favoriteIconString = "star.fill"
    
    static let testTitleURL = "https://image.tmdb.org/t/p/w500/nnl6OWkyPpuMm595hmAxNW3rZFn.jpg"
    static let testTitleURL2 = "https://image.tmdb.org/t/p/w500/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg"
    static let testTitleURL3 = "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg"
}

extension Text {
    func ghostButton() -> some View {
        self
            .frame(width: 100, height: 50)
            .foregroundStyle(.buttonText)
            .bold()
            .background {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(.buttonBorder,lineWidth: 5)
            }
    }
}
