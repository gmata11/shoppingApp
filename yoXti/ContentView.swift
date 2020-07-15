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
                    }.background(Color.white)
                }
            }
            DetailsScroll()
        }
        .background(Color("Color"))
        .padding()
    }
}

struct DetailsScroll: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(datas) {i in
                HStack {
                    ForEach(i.rows) {j in
                        VStack(spacing: 8) {
                            Image(j.image).resizable().frame(width: UIScreen.main.bounds.width / 2 - 25, height: 240)
                            HStack {
                                VStack(alignment: .leading, spacing: 10) {
                                    Text(j.name)
                                    Text(j.price).fontWeight(.heavy)
                                }
                                Spacer()
                                Button(action: {
                                    //Todo
                                }) {
                                    Image("menu").resizable()
                                    .frame(width: 20, height: 20)
                                }
                            }
                        }
                    }
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

var sizes = ["S","M","X","XL"]

var types = ["Dress","Pants","Blazers","Jackets"]

var datas = [
    type(id: 0,rows: [row(id:0, name: "Super Papa", price: "40€", image: "superPapa"),row(id:1,name: "Super Opositores", price: "30€", image: "superOpositores")]),

    type(id: 2,rows: [row(id:0, name: "Samara", price: "30€", image: "samara"),row(id:1,name: "Laos", price: "25€", image: "laos")]),
]
