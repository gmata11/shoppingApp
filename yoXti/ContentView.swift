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
                Image("yoPorTiLogoPng").resizable()
                .frame(width: 60, height: 25)
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
                            Text("Packs")
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
                        .foregroundColor(.black)
                    }.background(Color.white)
                }
            }
            DetailsScroll()
        }.padding()
        .background(Color(.white))
    }
}

struct DetailsScroll: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 12) {
                ForEach(datas) {i in
                    HStack {
                        ForEach(i.rows) {j in
                            VStack(spacing: 8) {
                                Image(j.image).resizable().frame(width: UIScreen.main.bounds.width / 2 - 25, height: 160)
                                HStack {
                                    VStack(alignment: .leading, spacing: 10) {
                                        Text(j.name)
                                        Text(j.price).fontWeight(.heavy)
                                    }
                                    Spacer()
                                    Button(action: {
                                        //Todo
                                    }) {
                                        Image("option").resizable()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(.black)
                                    }.padding(.trailing, 15)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct Splash: View {
    
    @State var isActive = false
    
    var body: some View {
        ZStack {
            if self.isActive {
                ContentView()
            }else {
                Color.white.edgesIgnoringSafeArea(.all)
                ZStack {
                    Image("yoPorTiLogoPng").rotation3DEffect(.degrees(360), axis: (x: 1, y: 0, z: 0))
                }
            }
            
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct type: Identifiable {
    var id: Int
    var rows: [row]
}

struct row: Identifiable {
    var id: Int
    var name: String
    var price: String
    var image: String
}

var datas = [
    type(id: 0,rows: [row(id:0, name: "Super Papa", price: "40€", image: "superPapa"),row(id:1,name: "Super Oposit", price: "30€", image: "superOpositores")]),

    type(id: 2,rows: [row(id:0, name: "Samara", price: "30€", image: "samara"),row(id:1,name: "Laos", price: "25€", image: "laos")]),
    
    type(id: 3,rows: [row(id:0, name: "Samara", price: "30€", image: "samara"),row(id:1,name: "Laos", price: "25€", image: "laos")]),
]
