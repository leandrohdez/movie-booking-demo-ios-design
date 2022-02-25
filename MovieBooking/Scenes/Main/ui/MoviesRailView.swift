//
//  MoviesRailView.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 20/2/22.
//

import SwiftUI

extension MainView {
    
    struct MoviesRailView: View {
        
        let title: String
        
        @Binding var movies: [Movie]?
        
        var body: some View {
            
            VStack(alignment: .leading, spacing: 0) {
                
                MainView.HeaderRailView(title: self.title)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .center, spacing: 16) {
                        
                        Spacer().frame(width: 0)
                        
                        if let movies = self.movies {
                            
                            ForEach(movies) { movie in
                                MovieButtonView(cover: movie.cover) {
                                    MovieView(movie: movie)
                                }
                            }
                            
                        } else {
                            MovieButtonView() { }
                            MovieButtonView() { }
                            MovieButtonView() { }
                        }
                        
                        Spacer().frame(width: 0)
                    }
                }
            }
        }
    }
}
