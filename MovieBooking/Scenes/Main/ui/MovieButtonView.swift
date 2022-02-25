//
//  MovieButtonView.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 19/2/22.
//

import SwiftUI

extension MainView {

    struct MovieButtonView <Content: View>: View {
        
        @State private var showModal: Bool = false
        
        let cover: String?
        
        let content: Content
        
        init(cover: String? = nil, @ViewBuilder content contentBuilder: () -> Content){
            self.cover = cover
            self.content = contentBuilder()
        }
        
        var body: some View {
            Button {
                self.showModal = true
            } label: {
                if let poster = self.cover {
                    Image(poster)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
            .frame(width: 280, height: 160)
            .background(Color.ui.raisinBlack)
            .cornerRadius(16)
            .overlay {
                if self.cover != nil {
                    ZStack {
                        Image(systemName: "play.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24, alignment: .center)
                            .foregroundColor(Color.ui.gostWhite.opacity(0.9))
                            .offset(x: 3, y: 0)
                    }
                    .frame(width: 48, height: 48, alignment: .center)
                    .background(.ultraThickMaterial, in: RoundedRectangle(cornerRadius: 24, style: .continuous))
                    .cornerRadius(24)
                    .shadow(color: Color.black.opacity(0.1), radius: 8, x: 0, y: 5)
                }
            }
            .sheet(isPresented: self.$showModal) {
                self.content
            }
        }
    }
}
