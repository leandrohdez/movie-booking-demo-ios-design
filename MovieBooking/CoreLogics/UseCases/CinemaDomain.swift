//
//  CinemaDomain.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 10/2/22.
//

import Foundation

class CinemaDomain {
    
    static let UseCases = CinemaDomain()
 
    //
    func all(completion: @escaping (_ result: MoviesCaseResult) -> Void) {
        let useCase = MoviesUseCase()
        useCase.endHandle = { (resultCase) in
            if let result = resultCase as? MoviesCaseResult {
                completion(result)
            }
        }
        useCase.execute()
    }
    
    //
    func trailers(completion: @escaping (_ result: TrailersCaseResult) -> Void) {
        let useCase = TrailersUseCase()
        useCase.endHandle = { (resultCase) in
            if let result = resultCase as? TrailersCaseResult {
                completion(result)
            }
        }
        useCase.execute()
    }
    
    //
    func now(completion: @escaping (_ result: NowCaseResult) -> Void) {
        let useCase = NowUseCase()
        useCase.endHandle = { (resultCase) in
            if let result = resultCase as? NowCaseResult {
                completion(result)
            }
        }
        useCase.execute()
    }
    
    //
    func soon(completion: @escaping (_ result: SoonCaseResult) -> Void) {
        let useCase = SoonUseCase()
        useCase.endHandle = { (resultCase) in
            if let result = resultCase as? SoonCaseResult {
                completion(result)
            }
        }
        useCase.execute()
    }
    
}
