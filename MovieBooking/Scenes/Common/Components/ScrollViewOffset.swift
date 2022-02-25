//
//  ScrollViewOffset.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 20/2/22.
//

import SwiftUI

struct ScrollViewOffset<Content: View>: View {
    
    private var axes: Axis.Set = .vertical
    
    private var showsIndicators: Bool = true
    
    private let onOffsetChange: (CGFloat) -> Void
    
    private let content: () -> Content

    init(
        _ axes: Axis.Set = .vertical,
        showsIndicators: Bool = true,
        @ViewBuilder content: @escaping () -> Content,
        onOffsetChange: @escaping (CGFloat) -> Void
    ) {
        self.axes = axes
        self.showsIndicators = showsIndicators
        self.onOffsetChange = onOffsetChange
        self.content = content
    }

    var body: some View {
        ScrollView(self.axes, showsIndicators: self.showsIndicators) {
            self.offsetReader
            self.content()
                .padding(.top, -8)     // hideden area
        }
        .coordinateSpace(name: "frameLayer")
        .onPreferenceChange(OffsetPreferenceKey.self, perform: onOffsetChange)
    }

    var offsetReader: some View {
        GeometryReader { proxy in
            Color.clear
                .preference(
                    key: OffsetPreferenceKey.self,
                    value: proxy.frame(in: .named("frameLayer")).minY
                )
        }
        .frame(height: 0)
    }
}

private struct OffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = .zero
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {}
}
