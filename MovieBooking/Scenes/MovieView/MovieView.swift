//
//  MovieView.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 19/2/22.
//

import SwiftUI

struct MovieView: View {
    
    @StateObject private var viewModel: MovieViewModel
    
    @State private var offsetFactor: CGFloat = .zero
    
    private let topSpacer: CGFloat = 400
     
    init(movie: Movie) {
        self._viewModel = StateObject(wrappedValue: MovieViewModel(movie: movie))
    }
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Color.ui.richBlack.edgesIgnoringSafeArea(.all)
                ZStack(alignment: .top) {
                    ZStack(alignment: .bottom) {
                        Image("\(self.viewModel.movie.cover)-big")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                            .edgesIgnoringSafeArea(.top)
                            .blur(radius: self.offsetFactor*15)
                            
                        Rectangle()
                            .frame(maxWidth: .infinity, alignment: .bottom)
                            .frame(height: 240)
                            .foregroundColor(.clear)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [.clear, Color.ui.richBlack]),
                                    startPoint: .top,
                                    endPoint: .center
                                )
                            )
                            .offset(x: 0, y: 120)
                    }
                    
                    ScrollViewOffset(.vertical, showsIndicators: false, content: {
                        VStack {
                            VStack(alignment: .center, spacing: 0) {
                                Spacer().frame(height: self.topSpacer)
                                
                                Text(self.viewModel.movie.title)
                                    .font(.system(size: 32).weight(.bold))
                                    .padding()
                                    .foregroundColor(Color.ui.white)
                                    .shadow(color: Color.ui.richBlack, radius: 1, x: 0, y: 1)
                                
                                HStack {
                                    Image(systemName: "star.fill").foregroundColor(Color.ui.chromeYellow)
                                    Image(systemName: "star.fill").foregroundColor(Color.ui.chromeYellow)
                                    Image(systemName: "star.fill").foregroundColor(Color.ui.chromeYellow)
                                    Image(systemName: "star.fill").foregroundColor(Color.ui.chromeYellow)
                                    Image(systemName: "star.fill").foregroundColor(Color.ui.chromeYellow)
                                }
                                
                                HStack(alignment: .center, spacing: 16) {
                                    Spacer()
                                    Text("2019").foregroundColor(Color.ui.gostWhite)
                                    Text("|").foregroundColor(Color.ui.gostWhite)
                                    Text("1 h 32 min").foregroundColor(Color.ui.gostWhite)
                                    Text("|").foregroundColor(Color.ui.gostWhite)
                                    Text("Action").foregroundColor(Color.ui.gostWhite)
                                    Spacer()
                                }
                                .padding()
                                
                                Spacer().frame(height: 32)
                                
                                Text("Storyline")
                                    .font(.system(size: 24).weight(.bold))
                                    .padding()
                                    .foregroundColor(Color.ui.white)
                                    .shadow(color: Color.ui.richBlack, radius: 1, x: 0, y: 1)
                                
                                Text("Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original.")
                                    .font(.system(size: 15))
                                    .padding()
                                    .foregroundColor(Color.ui.gostWhite)
                                    .multilineTextAlignment(.center)
                                
                                Spacer().frame(height: 32)
                                
                                NavigationLink("Buy ticket") {
                                    PickSeatsView()
                                }
                                .buttonStyle(MainButtonStyle())
                            }
                            .padding(.bottom, 32)
                        }
                        
                    }, onOffsetChange: { offset in
                        self.offsetFactor = self.calculateFactor(offset)
                    })
                    .background(Color.ui.richBlack.opacity(Double(self.offsetFactor)))
                }
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

//
fileprivate extension MovieView {
    
    //
    func calculateFactor(_ offset: CGFloat) -> CGFloat {
        let offset = offset*(-1)
        if offset > self.topSpacer {
            return 0.5
        } else {
            return offset*0.5/self.topSpacer
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(movie: Movie(genre: .action, title: "Mad Max", cover: "poster-mad-max"))
    }
}
