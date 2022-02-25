//
//  SoonUseCase.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 20/2/22.
//

import Foundation

enum SoonCaseResult {
    case success(movies: [Movie])
    case unknownError
}

class SoonUseCase: BaseUseCase {
    
    override init() {
        
    }
    
    override func execute() {
        super.execute()
        self.mockMovies()
    }
    
}

extension SoonUseCase {
    
    //
    private func mockMovies() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.1) {
        
            var listOfMovies: [Movie] = []
        
            listOfMovies.append(
                Movie(genre: .drama, title: "Joker", cover: "poster-joker")
            )
            
            listOfMovies.append(
                Movie(genre: .action, title: "El corredor del laberinto", cover: "poster-the-maze-runner")
            )
            
            listOfMovies.append(
                Movie(genre: .horror, title: "The prodigy", cover: "poster-the-prodigy")
            )
            
            self.finish(caseResult: SoonCaseResult.success(movies: listOfMovies))
        }
    }
    
}
