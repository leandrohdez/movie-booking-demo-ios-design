//
//  ResultView.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 21/2/22.
//

import SwiftUI

struct ResultView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.ui.richBlack.edgesIgnoringSafeArea(.all)
            Text("All Ready!")
            ZStack {
                Button {
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Close")
                }
                .buttonStyle(MainButtonStyle())
            }
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
