//
//  NewBarView.swift
//  Yo Por Ti
//
//  Created by Gerard Mata Carrera on 20/07/2020.
//  Copyright © 2020 Gerard Mata Carrera. All rights reserved.
//

import SwiftUI

struct NewBarView: View {
    @State var index = 0
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            HStack {
                GeometryReader {g in
                    VStack {
                        Button(action: {
                            withAnimation(.spring()) {
                                self.index = 0
                            }
                        }) {
                            Image("menu")
                                .renderingMode(.template)
                                .resizable()
                                .foregroundColor(self.index == 0 ? .black : .gray)
                                .frame(width: 20, height: 20)
                                .padding(.all, 15)
                                .foregroundColor(.white)
                        }
                    }.frame(width: 43, height: 43)
                }.frame(width: 43, height: 43)
                
                Spacer(minLength: 0)
                
                GeometryReader {g in
                    VStack {
                        Button(action: {
                            withAnimation(.spring()) {
                                self.index = 1
                            }
                        }) {
                            Image("filter")
                                .renderingMode(.template)
                                .resizable()
                                .foregroundColor(self.index == 1 ? .black : .gray)
                                .frame(width: 20, height: 20)
                                .padding(.all, 15)
                                .foregroundColor(.white)
                        }
                    }.frame(width: 43, height: 43)
                }.frame(width: 43, height: 43)
                
                Spacer(minLength: 0)
                
                GeometryReader {g in
                    VStack {
                        Button(action: {
                            withAnimation(.spring()) {
                                self.index = 2
                            }
                        }) {
                            Image("search")
                                .renderingMode(.template)
                                .resizable()
                                .foregroundColor(self.index == 2 ? .black : .gray)
                                .frame(width: 20, height: 20)
                                .padding(.all, 15)
                                .foregroundColor(.white)
                        }
                    }.frame(width: 43, height: 43)
                }.frame(width: 43, height: 43)
                
                Spacer(minLength: 0)
                
                GeometryReader {g in
                    VStack {
                        Button(action: {
                            withAnimation(.spring()) {
                                self.index = 3
                            }
                        }) {
                            Image("shop")
                                .renderingMode(.template)
                                .resizable()
                                .foregroundColor(self.index == 3 ? .black : .gray)
                                .frame(width: 20, height: 20)
                                .padding(.all, 15)
                                .foregroundColor(.white)
                        }
                    }.frame(width: 43, height: 43)
                }.frame(width: 43, height: 43)
            }.padding(.horizontal, 25)
            .padding(.bottom, 10)
            .padding(.top, 8)
                .background(Color(.white))
        }).edgesIgnoringSafeArea(.bottom)
    }
}

struct NewBarView_Previews: PreviewProvider {
    static var previews: some View {
        NewBarView()
    }
}
