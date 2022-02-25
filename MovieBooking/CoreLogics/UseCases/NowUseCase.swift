//
//  NowUseCase.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 20/2/22.
//

import Foundation

enum NowCaseResult {
    case success(movies: [Movie])
    case unknownError
}

class NowUseCase: BaseUseCase {
    
    override init() {
        
    }
    
    override func execute() {
        super.execute()
        self.mockMovies()
    }
    
}

extension NowUseCase {
    
    //
    private func mockMovies() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
            
            var listOfMovies: [Movie] = []
            
            listOfMovies.append(
                Movie(genre: .drama, title: "Gambito de Dama", cover: "poster-gambito-de-damas")
            )
            
            listOfMovies.append(
                Movie(genre: .action, title: "Iron Man", cover: "poster-iron-man")
            )
            
            listOfMovies.append(
                Movie(genre: .action, title: "La casa de papel", cover: "poster-la-casa-de-papel")
            )
            
            listOfMovies.append(
                Movie(genre: .adventure, title: "Mulan", cover: "poster-mulan")
            )
            
            listOfMovies.append(
                Movie(genre: .horror, title: "Vampire Hunter", cover: "poster-vampire-hunter")
            )
            
            listOfMovies.append(
                Movie(genre: .action, title: "World War Z", cover: "poster-world-war-z")
            )
            
            self.finish(caseResult: NowCaseResult.success(movies: listOfMovies))
        }
    }
    
}
