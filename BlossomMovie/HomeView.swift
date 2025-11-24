//
//  HomeView.swift
//  BlossomMovie
//
//  Created by Salim on 24/11/2025.
//

import SwiftUI

struct HomeView: View {
    var heroTestTitle = Constants.testTitleURL

    let heroHeight = UIScreen.main.bounds.height * 0.60
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack(spacing: 0) {
                ZStack(alignment: .bottom) {
                    AsyncImage(url: URL(string: heroTestTitle)) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(height: heroHeight)
                            .clipped()
                    } placeholder: {
                        ProgressView()
                            .frame(height: heroHeight)
                    }
                    
                    LinearGradient(
                        gradient: Gradient(stops: [
                            .init(color: .clear, location: 0.6),
                            .init(color: Color(.gradient), location: 1.0)
                        ]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .frame(height: heroHeight)
                    
                    
                    HStack(spacing: 20){ // Espacement entre les boutons
                        
                        // Bouton "Regarder" (Play)
                        Button {
                            // Action
                        } label: {
                            Label(Constants.playString, systemImage: "play.fill")
                                .font(.headline.weight(.semibold))
                                .foregroundStyle(.primary)
                                .padding(.vertical, 12)
                                .frame(maxWidth: .infinity)
                                .background(.blue.opacity(0.8))
                                .clipShape(Capsule())
                        }
                        .buttonStyle(.plain) // Utiliser .plain pour mieux contrôler le style
                        
                        // Bouton "Ajouter" (Favorite)
                        Button {
                            // Action
                        } label: {
                            Label(Constants.addFavoriteString, systemImage: "plus")
                                .font(.headline.weight(.semibold))
                                .foregroundStyle(.primary)
                                .padding(.vertical, 12)
                                .frame(maxWidth: .infinity)
                                .background(.white)
                                .clipShape(Capsule())
                        }
                        .buttonStyle(.plain)
                    }
                    .padding(.horizontal, 40)
                    .padding(.bottom, 20)
                }
                .frame(height: heroHeight)

                Group {
                    HorizontalListView(header: Constants.trendingMovieString)
                    HorizontalListView(header: Constants.trendingTVString)
                    HorizontalListView(header: Constants.topRatedMovieString)
                    HorizontalListView(header: Constants.topRatedTVString)
                }
                .padding(.top, 20)
            }
        }
        .edgesIgnoringSafeArea(.top) // Ignorer la safe area en haut pour que l'image touche le bord
        .background(Color(Constants.backgroundColorString))
    }
}

#Preview {
    HomeView()
}
