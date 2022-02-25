//
//  GenreFilterView.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 19/2/22.
//

import SwiftUI

extension MainView {
 
    struct GenreFilterView: View {
        var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 8) {
                    Spacer().frame(width: 8)
                    Button {
                        
                    } label: {
                        Text("All")
                    }
                    .padding()
                    .background(Color.ui.blueCrayola)
                    .foregroundColor(Color.ui.white)
                    .cornerRadius(6)

                    Button {
                        
                    } label: {
                        Text("😎 Action")
                    }
                    .padding()
                    .background(Color.ui.raisinBlack)
                    .foregroundColor(Color.ui.white)
                    .cornerRadius(6)
                    
                    Button {
                        
                    } label: {
                        Text("🤠 Adventure")
                    }
                    .padding()
                    .background(Color.ui.raisinBlack)
                    .foregroundColor(Color.ui.white)
                    .cornerRadius(6)
                    
                    Button {
                        
                    } label: {
                        Text("😍 Romance")
                    }
                    .padding()
                    .background(Color.ui.raisinBlack)
                    .foregroundColor(Color.ui.white)
                    .cornerRadius(6)
                    
                    Button {
                        
                    } label: {
                        Text("😱 Horror")
                    }
                    .padding()
                    .background(Color.ui.raisinBlack)
                    .foregroundColor(Color.ui.white)
                    .cornerRadius(6)
                    
                    Button {
                        
                    } label: {
                        Text("🤣 Comedy")
                    }
                    .padding()
                    .background(Color.ui.raisinBlack)
                    .foregroundColor(Color.ui.white)
                    .cornerRadius(6)
                    
                    Button {
                        
                    } label: {
                        Text("🥺 Drama")
                    }
                    .padding()
                    .background(Color.ui.raisinBlack)
                    .foregroundColor(Color.ui.white)
                    .cornerRadius(6)
                    
                    Spacer().frame(width: 8)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

struct GenreFilterView_Previews: PreviewProvider {
    static var previews: some View {
        MainView.GenreFilterView()
    }
}
