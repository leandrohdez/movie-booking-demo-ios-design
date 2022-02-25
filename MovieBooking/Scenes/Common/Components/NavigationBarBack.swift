//
//  NavigationBarBack.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 20/2/22.
//

import SwiftUI

struct NavigationBarBack: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var title: String = ""
    
    var body: some View {
        ZStack {
            Color.clear
            HStack(alignment: .center) {
                HStack(alignment: .center, spacing: 8) {
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.backward.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32, alignment: .center)
                            .foregroundColor(Color.ui.independence)
                    }
                    .frame(width: 40, height: 40, alignment: .center)
                    .padding(.leading, 12)
                    Spacer()
                    Text(self.title)
                        .font(.system(size: 17).weight(.bold))
                        .foregroundColor(Color.ui.white)
                    Spacer()
                    Spacer().frame(width: 32)
                        .padding(.trailing, 12)
                }
            }
        }
        .frame(height: 70)
        .frame(maxHeight: .infinity, alignment: .top)
    }
    
}
