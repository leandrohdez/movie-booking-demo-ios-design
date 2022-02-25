//
//  MainButtonStyle.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 20/2/22.
//

import SwiftUI

struct MainButtonStyle: ButtonStyle {
    
    @Environment(\.isEnabled) private var isEnabled
    
    var foregroundColor: Color = Color.ui.richBlack
    
    var backgroundColor: Color = Color.ui.chromeYellow

    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundColor(self.foregroundColor(configuration: configuration))
            .font(.system(size: 17).weight(.bold))
            .frame(maxWidth: 240)
            .padding()
            .background(self.backgroundColor(configuration: configuration))
            .cornerRadius(8)
    }
    
    private func foregroundColor(configuration: Configuration) -> Color {
        if self.isEnabled {
            return configuration.isPressed ? self.foregroundColor.opacity(0.8) : self.foregroundColor
        } else {
            return self.foregroundColor.opacity(0.8)
        }
    }
    
    private func backgroundColor(configuration: Configuration) -> Color {
        if self.isEnabled {
            return configuration.isPressed ? self.backgroundColor.opacity(0.8) : self.backgroundColor
        } else {
            return self.backgroundColor.opacity(0.5)
        }
    }
}
