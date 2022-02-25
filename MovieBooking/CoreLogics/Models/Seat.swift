//
//  Seat.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 21/2/22.
//

import Foundation

class Seat: Identifiable {
    
    internal let id: UUID
    
    var status: SeatStatus
    
    //
    init(status: SeatStatus) {
        self.id = UUID()
        self.status = status
    }
    
    static func == (lhs: Seat, rhs: Seat) -> Bool {
        return lhs.id == rhs.id
    }
}

class Row: Identifiable, Hashable {
    
    internal let id: UUID
    
    var seats: [Seat]
    
    //
    init(seats: [Seat]) {
        self.id = UUID()
        self.seats = seats
    }
    
    static func == (lhs: Row, rhs: Row) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }
}
