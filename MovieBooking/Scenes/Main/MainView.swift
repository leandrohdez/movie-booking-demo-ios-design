//
//  MainView.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 10/2/22.
//

import SwiftUI

struct MainView: View {
    
    @StateObject private var viewModel: MainViewModel
    
    init(viewModel: MainViewModel = .init()) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        ZStack {
            Color.ui.richBlack.edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false) {
                Spacer().frame(height: 90)
                
                MainView.GenreFilterView()
                
                MainView.MoviesRailView(title: "Trailers", movies: self.$viewModel.trailers)
                    .onAppear {
                        self.viewModel.loadTrailersMovies()
                    }
                
                MainView.MoviesRailView(title: "Now in Cinema", movies: self.$viewModel.nowInCinema)
                    .onAppear {
                        self.viewModel.loadNowInCinemaMovies()
                    }
                
                MainView.MoviesRailView(title: "Coming soon", movies: self.$viewModel.comingSoon)
                    .onAppear {
                        self.viewModel.loadComingSoonMovies()
                    }
                
                Spacer().frame(height: 40)
            }
            .overlay {
                NavigationBar()
            }
        }
        .navigationBarHidden(true)
        .preferredColorScheme(.dark)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
