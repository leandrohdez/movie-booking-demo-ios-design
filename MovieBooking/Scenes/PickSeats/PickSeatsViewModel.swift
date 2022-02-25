//
//  PickSeatsViewModel.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 21/2/22.
//

import Foundation

class PickSeatsViewModel: ObservableObject {
    
    @Published var seatstate: [Row]
    
    init() {
        
        self.seatstate = []
        
        self.seatstate.append(
            Row(seats: [
                Seat(status: .selected),
                Seat(status: .selected),
                Seat(status: .selected),
                Seat(status: .free),
                Seat(status: .free),
                Seat(status: .free),
                Seat(status: .free),
                Seat(status: .free)
            ])
        )
        
        self.seatstate.append(
            Row(seats: [
                Seat(status: .notAvailable),
                Seat(status: .free),
                Seat(status: .free),
                Seat(status: .free),
                Seat(status: .free),
                Seat(status: .free),
                Seat(status: .free),
                Seat(status: .free)
            ])
        )
        
        self.seatstate.append(
            Row(seats: [
                Seat(status: .free),
                Seat(status: .free),
                Seat(status: .notAvailable),
                Seat(status: .notAvailable),
                Seat(status: .free),
                Seat(status: .free),
                Seat(status: .notAvailable),
                Seat(status: .notAvailable)
            ])
        )
        
        self.seatstate.append(
            Row(seats: [
                Seat(status: .free),
                Seat(status: .notAvailable),
                Seat(status: .notAvailable),
                Seat(status: .free),
                Seat(status: .free),
                Seat(status: .notAvailable),
                Seat(status: .notAvailable),
                Seat(status: .notAvailable)
            ])
        )
        
        self.seatstate.append(
            Row(seats: [
                Seat(status: .free),
                Seat(status: .free),
                Seat(status: .notAvailable),
                Seat(status: .notAvailable),
                Seat(status: .recommended),
                Seat(status: .free),
                Seat(status: .free),
                Seat(status: .free)
            ])
        )
        
        self.seatstate.append(
            Row(seats: [
                Seat(status: .notAvailable),
                Seat(status: .free),
                Seat(status: .free),
                Seat(status: .recommended),
                Seat(status: .recommended),
                Seat(status: .free),
                Seat(status: .free),
                Seat(status: .free)
            ])
        )
        
        self.seatstate.append(
            Row(seats: [
                Seat(status: .notAvailable),
                Seat(status: .notAvailable),
                Seat(status: .free),
                Seat(status: .notAvailable),
                Seat(status: .notAvailable),
                Seat(status: .notAvailable),
                Seat(status: .notAvailable),
                Seat(status: .free)
            ])
        )
        
        self.seatstate.append(
            Row(seats: [
                Seat(status: .free),
                Seat(status: .notAvailable),
                Seat(status: .free),
                Seat(status: .notAvailable),
                Seat(status: .notAvailable),
                Seat(status: .notAvailable),
                Seat(status: .free),
                Seat(status: .free)
            ])
        )
        
        self.seatstate.append(
            Row(seats: [
                Seat(status: .free),
                Seat(status: .free),
                Seat(status: .notAvailable),
                Seat(status: .free),
                Seat(status: .free),
                Seat(status: .notAvailable),
                Seat(status: .notAvailable),
                Seat(status: .free)
            ])
        )
    }
    
}
