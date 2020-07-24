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
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Image("yoPorTiLogoPng").resizable()
                .frame(width: 60, height: 30)
                Spacer()
                MainView()
                
            }.navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .navigationBarTitle("")
        }.hideNavigationBar()
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
    type(id: 0,rows: [row(id:0, name: "Super Papa", price: "40€", image: "superPapa"),row(id:1,name: "Super Opositores", price: "30€", image: "superOpositores")]),

    type(id: 2,rows: [row(id:0, name: "Samara", price: "30€", image: "samara"),row(id:1,name: "Laos", price: "25€", image: "laos")]),
    
    type(id: 3,rows: [row(id:0, name: "Samara", price: "30€", image: "samara"),row(id:1,name: "Laos", price: "25€", image: "laos")]),
    
    type(id: 2,rows: [row(id:0, name: "Samara", price: "30€", image: "samara"),row(id:1,name: "Laos", price: "25€", image: "laos")]),
    
    type(id: 0,rows: [row(id:0, name: "Super Papa", price: "40€", image: "superPapa"),row(id:1,name: "Super Oposit", price: "30€", image: "superOpositores")]),
]

var datas2 = [
    type(id: 0,rows: [row(id:0, name: "Perroa", price: "40€", image: "superPapa"),row(id:1,name: "Super Opositores", price: "30€", image: "superOpositores")]),

    type(id: 2,rows: [row(id:0, name: "From", price: "30€", image: "samara"),row(id:1,name: "Laos", price: "25€", image: "laos")]),
    
    type(id: 3,rows: [row(id:0, name: "Lisboa", price: "30€", image: "samara"),row(id:1,name: "Laos", price: "25€", image: "laos")]),
    
    type(id: 2,rows: [row(id:0, name: "Samara", price: "30€", image: "samara"),row(id:1,name: "Laos", price: "25€", image: "laos")]),
    
    type(id: 0,rows: [row(id:0, name: "Super Papa", price: "40€", image: "superPapa"),row(id:1,name: "Super Oposit", price: "30€", image: "superOpositores")]),
]
