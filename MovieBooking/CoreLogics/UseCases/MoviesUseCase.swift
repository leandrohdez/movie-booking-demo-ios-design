//
//  MoviesUseCase.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 10/2/22.
//

import Foundation

enum MoviesCaseResult {
    case success(movies: [Movie])
    case unknownError
}

class MoviesUseCase: BaseUseCase {
    
    override init() {
        
    }
    
    override func execute() {
        super.execute()
        self.mockAllMovies()
    }
    
}

extension MoviesUseCase {
    
    //
    private func mockAllMovies() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            
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
                Movie(genre: .drama, title: "Gambito de Dama", cover: "poster-gambito-de-damas")
            )
            
            listOfMovies.append(
                Movie(genre: .action, title: "Iron Man", cover: "poster-iron-man")
            )
            
            listOfMovies.append(
                Movie(genre: .drama, title: "Joker", cover: "poster-joker")
            )
            
            listOfMovies.append(
                Movie(genre: .action, title: "La casa de papel", cover: "poster-la-casa-de-papel")
            )
            
            listOfMovies.append(
                Movie(genre: .adventure, title: "Mulan", cover: "poster-mulan")
            )
            
            listOfMovies.append(
                Movie(genre: .action, title: "El corredor del laberinto", cover: "poster-the-maze-runner")
            )
            
            listOfMovies.append(
                Movie(genre: .horror, title: "The prodigy", cover: "poster-the-prodigy")
            )
            
            listOfMovies.append(
                Movie(genre: .horror, title: "The ring", cover: "poster-the-ring")
            )
            
            listOfMovies.append(
                Movie(genre: .adventure, title: "Tomb Raider", cover: "poster-tomb-raider")
            )
            
            listOfMovies.append(
                Movie(genre: .horror, title: "Vampire Hunter", cover: "poster-vampire-hunter")
            )
            
            listOfMovies.append(
                Movie(genre: .action, title: "World War Z", cover: "poster-world-war-z")
            )
            
            self.finish(caseResult: MoviesCaseResult.success(movies: listOfMovies))
        }
    }
    
}
