//
//  MainViewModel.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 20/2/22.
//

import Foundation

class MainViewModel: ObservableObject {
    
    @Published var trailers: [Movie]?
    
    @Published var nowInCinema: [Movie]?
    
    @Published var comingSoon: [Movie]?

    init() {
        
    }
    
    //
    func loadTrailersMovies() {
        
        CinemaDomain.UseCases.trailers { result in
            self.trailers = []
            
            switch result {
                
            case .success(let movies):
                self.trailers = movies
                
            case .unknownError:
                print("Error")
            }
        }
    }
    
    //
    func loadNowInCinemaMovies() {
        
        CinemaDomain.UseCases.now { result in
            self.nowInCinema = []
            
            switch result {

            case .success(let movies):
                self.nowInCinema = movies
                
            case .unknownError:
                print("Error")
            }
        }
    }
    
    //
    func loadComingSoonMovies() {
        
        CinemaDomain.UseCases.soon { result in
            self.comingSoon = []
            
            switch result {
                
            case .success(let movies):
                self.comingSoon = movies
                
            case .unknownError:
                print("Error")
            }
        }
    }
}

