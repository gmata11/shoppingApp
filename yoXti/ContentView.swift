//
//  ContentView.swift
//  yoXti
//
//  Created by Gerard Mata Carrera on 15/07/2020.
//  Copyright © 2020 Gerard Mata Carrera. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 15) {
            ZStack {
                Text("YO POR TI").font(.body)
                HStack(spacing: 18) {
                    Button(action: {
                        //Todo
                    }) {
                        Image("menu").resizable()
                        .frame(width: 20, height: 20)
                    }
                    Spacer()
                    
                    Button(action: {
                        //Todo
                    }) {
                        Image("search").resizable()
                        .frame(width: 20, height: 20)
//                            .foregroundColor(.black)
                    }
                    
                    Button(action: {
                        //Todo
                    }) {
                        Image("noti").resizable()
                        .frame(width: 20, height: 20)
                    }
                    
                    Button(action: {
                        //Todo
                    }) {
                        Image("shop").resizable()
                        .frame(width: 20, height: 20)
                    }
                }
            }.background(Color.white).padding([.leading,.trailing,.top], 15)
            
            MainView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MainView: View {
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                HStack {
                    Button(action: {
                        //Todo
                    }) {
                        HStack {
                            Text("One")
                            Spacer()
                            Image("down").resizable()
                            .frame(width: 20, height: 20)
                        }.padding()
                    }.foregroundColor(.black)
                        .background(Color.white)
                    Button(action: {
                        //ToDo
                    }) {
                        Image("filter").resizable()
                        .frame(width: 20, height: 20)
                    }.background(Color.white)
                }
            }
            Spacer()
        }
        .background(Color("Color"))
        .padding()
    }
}
