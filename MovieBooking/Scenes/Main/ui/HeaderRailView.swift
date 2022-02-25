//
//  HeaderRailView.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 20/2/22.
//

import SwiftUI

extension MainView {
    
    struct HeaderRailView: View {
        
        private let title: String
        
        init(title: String = "") {
            self.title = title
        }
        
        var body: some View {
            HStack {
                Text(self.title)
                    .padding(16)
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color.ui.white)
                Button {
                    
                } label: {
                    Text("See all")
                        .foregroundColor(Color.ui.gostWhite)
                        .opacity(0.6)
                }
                .padding(16)
            }
        }
    }
    
}
