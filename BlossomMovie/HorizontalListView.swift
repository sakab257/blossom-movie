//
//  HorizontalListView.swift
//  BlossomMovie
//
//  Created by Salim on 24/11/2025.
//

import SwiftUI

struct HorizontalListView: View {
    let header : String
    var titles = [Constants.testTitleURL, Constants.testTitleURL2, Constants.testTitleURL3]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(header)
                .font(.title2) // Titre un peu moins grand
                .bold()
                .padding(.leading, 20) // Aligner avec les autres paddings
                .padding(.bottom, 5) // Petit espace sous le titre
            
            ScrollView (.horizontal, showsIndicators: false) { // Cacher l'indicateur de défilement
                LazyHStack(spacing: 15) { // Espacement entre les affiches
                    ForEach(titles, id:\.self) {title in
                        AsyncImage(url: URL(string: title)){image in
                            image
                                .resizable()
                                .scaledToFill() // Utiliser scaledToFill pour éviter les barres noires
                                .frame(width: 120, height: 180) // Affiche plus fine
                                .clipShape(RoundedRectangle(cornerRadius: 12)) // Coins plus arrondis
                        } placeholder: {
                            ProgressView()
                                .frame(width: 120, height: 180)
                        }
                    }
                }
                .padding(.leading, 20) // Padding à gauche pour le premier élément
                .padding(.trailing, 20) // Padding à droite pour le dernier élément
            }
            .frame(height: 180) // Ajuster la hauteur à celle des images
        }
        .padding(.vertical, 10) // Espacement vertical entre les listes
    }
}

#Preview {
    HorizontalListView(header: Constants.trendingMovieString)
}
