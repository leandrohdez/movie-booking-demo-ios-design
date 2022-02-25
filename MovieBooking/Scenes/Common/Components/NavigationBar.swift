//
//  NavigationBar.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 19/2/22.
//

import SwiftUI

struct NavigationBar: View {
    
    private var menuAction: (() -> Void)?
    
    var body: some View {
        ZStack {
            Color.clear
                .background(Color.ui.richBlack)
            HStack(alignment: .center) {
                HStack(alignment: .center, spacing: 8) {
                    Button {
                        self.menuAction?()
                    } label: {
                        Image(systemName: "line.3.horizontal.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32, alignment: .center)
                            .foregroundColor(Color.ui.independence)
                    }
                    .frame(width: 40, height: 40, alignment: .center)
                    .padding(.leading, 12)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "magnifyingglass.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32, alignment: .center)
                            .foregroundColor(Color.ui.independence)
                    }
                    .frame(width: 40, height: 40, alignment: .center)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "bell.badge.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32, alignment: .center)
                            .foregroundColor(Color.ui.independence)
                    }
                    .frame(width: 40, height: 40, alignment: .center)
                    
                    Button {
                        
                    } label: {
                        Image("profile_man")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32, alignment: .center)
                            .cornerRadius(16)
                    }
                    .frame(width: 40, height: 40, alignment: .center)
                    .padding(.trailing, 12)
                }
            }
        }
        .frame(height: 70)
        .frame(maxHeight: .infinity, alignment: .top)
    }
    
}
