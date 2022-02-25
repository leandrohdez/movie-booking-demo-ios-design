//
//  PickSeatsView.swift
//  MovieBooking
//
//  Created by Leandro Hernandez on 20/2/22.
//

import SwiftUI

struct PickSeatsView: View {
    
    @StateObject private var viewModel: PickSeatsViewModel
    
    init(viewModel: PickSeatsViewModel = .init()) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        GeometryReader() { geometry in
            ZStack(alignment: .top) {
                Color.ui.richBlack.edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack {
                        Spacer().frame(height: 80)
                        
                        ZStack(alignment: .top) {
                            Spacer()
                                .frame(maxWidth: .infinity)
                                .frame(height: 100)
                                .overlay(content: {
                                    Path() { path in
                                        path.move(to: CGPoint(x: 0, y: 100))
                                        path.addLine(to: CGPoint(x: 16, y: 40))
                                        path.addQuadCurve(
                                            to: CGPoint(x: geometry.size.width-16, y: 40),
                                            control: CGPoint(x: geometry.size.width/2, y: -20)
                                        )
                                        path.addLine(to: CGPoint(x: geometry.size.width, y: 100))
                                        path.closeSubpath()
                                    }
                                    .fill(
                                        LinearGradient(
                                            gradient: Gradient(colors: [Color.ui.blueCrayola.opacity(0.6), .clear]),
                                            startPoint: .top,
                                            endPoint: .bottom
                                        ))
                                })
                            
                            Spacer()
                                .frame(maxWidth: .infinity)
                                .frame(height: 40)
                                .overlay(content: {
                                    Path() { path in
                                        path.move(to: CGPoint(x: 16, y: 40))
                                        path.addQuadCurve(
                                            to: CGPoint(x: geometry.size.width-16, y: 40),
                                            control: CGPoint(x: geometry.size.width/2, y: -20)
                                        )
                                    }
                                    .stroke(Color.ui.blueCrayola, lineWidth: 6)
                                    .blur(radius: 12)
                            })
                            
                            Spacer()
                                .frame(maxWidth: .infinity)
                                .frame(height: 40)
                                .overlay(content: {
                                    Path() { path in
                                        path.move(to: CGPoint(x: 16, y: 40))
                                        path.addQuadCurve(
                                            to: CGPoint(x: geometry.size.width-16, y: 40),
                                            control: CGPoint(x: geometry.size.width/2, y: -20)
                                        )
                                    }
                                    .stroke(Color.ui.blueCrayola, lineWidth: 4)
                            })
                        }
                        
                        VStack(alignment: .center, spacing: 8) {
                            
                            ForEach (self.viewModel.seatstate) { row in
                                HStack(alignment: .center, spacing: 2) {
                                    ForEach (row.seats) { seat in
                                        Button {
                                            
                                        } label: {
                                            
                                            switch seat.status {
                                                
                                            case .free:
                                                Text("")
                                                    .frame(width: 32, height: 32, alignment: .center)
                                                    .background(Color.ui.independence)
                                                    .cornerRadius(8)
                                                
                                            case .notAvailable:
                                                Text("x")
                                                    .frame(width: 32, height: 32, alignment: .center)
                                                    .background(Color.ui.raisinBlack)
                                                    .foregroundColor(Color.ui.gostWhite)
                                                    .cornerRadius(8)
                                                
                                            case .selected:
                                                Text("")
                                                    .frame(width: 32, height: 32, alignment: .center)
                                                    .background(Color.ui.independence)
                                                    .cornerRadius(8)
                                                    .overlay(
                                                        RoundedRectangle(cornerRadius: 8)
                                                            .stroke(Color.ui.blueCrayola, lineWidth: 4)
                                                    )
                                                
                                            case .recommended:
                                                Text("")
                                                    .frame(width: 32, height: 32, alignment: .center)
                                                    .background(Color.ui.chromeYellow)
                                                    .cornerRadius(8)
                                            }
                                            
                                        }
                                        .frame(width: 40, height: 40, alignment: .center)
                                    }
                                }
                            }
                        }
                        
                        Spacer().frame(height: 32)
                        
                        NavigationLink("Confirm") {
                            ResultView()
                        }
                        .buttonStyle(MainButtonStyle())
                    }
                    .padding(.bottom, 32)
                }
            }
            .overlay(content: {
                NavigationBarBack(title: "Pick seats")
            })
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct PickSeatsView_Previews: PreviewProvider {
    static var previews: some View {
        PickSeatsView()
    }
}
