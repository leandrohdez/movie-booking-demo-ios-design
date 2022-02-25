//
//  Movie.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 20/2/22.
//

import Foundation

class Movie: Identifiable, Equatable {
    
    internal let id: UUID
    
    var genre: Genre
    
    var title: String
    
    var cover: String
    
    //
    init(genre: Genre, title: String, cover: String) {
        self.id = UUID()
        self.genre = genre
        self.title = title
        self.cover = cover
    }
    
    static func == (lhs: Movie, rhs: Movie) -> Bool {
        return lhs.id == rhs.id
    }
}
