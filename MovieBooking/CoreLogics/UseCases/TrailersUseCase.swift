//
//  TrailersUseCase.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 20/2/22.
//

import Foundation

enum TrailersCaseResult {
    case success(movies: [Movie])
    case unknownError
}

class TrailersUseCase: BaseUseCase {
    
    override init() {
        
    }
    
    override func execute() {
        super.execute()
        self.mockMovies()
    }
    
}

extension TrailersUseCase {
    
    //
    private func mockMovies() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            
            var listOfMovies: [Movie] = []
            
            listOfMovies.append(
                Movie(genre: .action, title: "Mad Max", cover: "poster-mad-max")
            )
            
            listOfMovies.append(
                Movie(genre: .adventure, title: "Avengers", cover: "poster-avengers")
            )
            
            listOfMovies.append(
                Movie(genre: .adventure, title: "El último Samurai", cover: "poster-the-last-samurai")
            )
            
            listOfMovies.append(
                Movie(genre: .horror, title: "The ring", cover: "poster-the-ring")
            )
            
            listOfMovies.append(
                Movie(genre: .adventure, title: "Tomb Raider", cover: "poster-tomb-raider")
            )
            
            self.finish(caseResult: TrailersCaseResult.success(movies: listOfMovies))
        }
    }
    
}
