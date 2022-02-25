//
//  MovieViewModel.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 20/2/22.
//

import Foundation

class MovieViewModel: ObservableObject {
    
    @Published var movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
    
}
