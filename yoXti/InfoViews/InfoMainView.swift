//
//  InfoMainView.swift
//  Yo Por Ti
//
//  Created by Gerard Mata Carrera on 21/07/2020.
//  Copyright © 2020 Gerard Mata Carrera. All rights reserved.
//

import SwiftUI

struct InfoMainView: View {
    @State var animation = true
    @State var showDetails1 = false
    @State var showDetails2 = false
    @State var showDetails3 = false
    @State var showDetails4 = false
    @State var isShowed = false
    
    var body: some View {
        VStack(spacing: 15) {
            Button(action: {
                //toDo
            }) {
                Image("yoPorTiLogoPng").resizable()
                    .frame(width: 60, height: 30)
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                    .shadow(color: .gray, radius: 10, x: 0, y: 10)
            }
            .offset(y: animation ? UIScreen.main.bounds.height / 2.5 : 0)
            .animation(.easeInOut(duration: 2.0))
            
            VStack {
                List {
                    Info(showDetail: $showDetails1, name: Constants.faq1Name, text: Constants.faq1Text)
                    Info(showDetail: $showDetails2, name: Constants.faq2Name, text: Constants.faq2Text)
                    Info(showDetail: $showDetails3, name: Constants.faq3Name, text: Constants.faq3Text)
                    Info(showDetail: $showDetails4, name: Constants.faq4Name, text: Constants.faq4Text)
                }
            }
            .foregroundColor(.gray)
            .opacity(animation ? 0 : 1)
            .animation(Animation.easeInOut(duration: 3))

        }
        .frame(minHeight: 0, maxHeight: .infinity)
        .padding(.horizontal, 30)
        .onAppear { if !self.isShowed {
            self.animation.toggle()
            self.isShowed = true
            }
        }
    }
}

struct InfoMainView_Previews: PreviewProvider {
    static var previews: some View {
        InfoMainView()
    }
}

struct Info : View {
    
    @Binding var showDetail : Bool
    
    var name: String
    var text : String
    
    var body : some View {
        return   GeometryReader { geometry in
            HStack {
                VStack {
                    HStack {
                        Text(self.name)
                            .font(.body)
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                        Button(action: {
                            self.showDetail.toggle()
                        }) {
                            Image(systemName: "chevron.down.circle")
                                .font(.body)
                                .rotationEffect(.degrees(self.showDetail ? 0: -180))
                                .animation(.default)
                        }
                    }.offset(y: self.showDetail ? 0 : geometry.size.height / 10)
                        .animation(.easeInOut(duration: 0.5))
                    Text(self.text)
                        .opacity(self.showDetail ? 1 : 0)
                        .animation(Animation.easeInOut(duration: 2).speed(3))
                        .minimumScaleFactor(0.5)
                }.frame(width: geometry.size.width)
                Spacer()
            }
        }
    }
}
