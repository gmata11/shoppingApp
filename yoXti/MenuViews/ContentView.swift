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
            .edgesIgnoringSafeArea(.bottom)
            
        }
    }
}

//struct DetailView: View {
//    @Binding var show: Bool
//    var body: some View {
//        NavigationView {
//                ZStack {
//                Image("yoPorTiLogoPng").resizable()
//                .frame(width: 60, height: 25)
//                    HStack(spacing: 18) {
//                        Button(action: {
//                            self.show.toggle()
//                        }) {
//                            Image("back").resizable()
//                                .frame(width: 10, height: 10)
//                        }
//                        Spacer()
//
//                        Button(action: {
//                            //Todo
//                        }) {
//                            Image("search").resizable()
//                                .frame(width: 20, height: 20)
//                        }
//
//                        Button(action: {
//                            //Todo
//                        }) {
//                            Image("shop").resizable()
//                                .frame(width: 20, height: 20)
//                        }
//                    }
//                }
//                Spacer()
//                Image("samara").renderingMode(.original).resizable().frame(width: UIScreen.main.bounds.width / 2 - 25, height: 160)
//                VStack(spacing: 15) {
//                    HStack {
//                        VStack(alignment: .leading, spacing: 8) {
//                            Text("Caja1").font(.largeTitle)
//                            Text("30€").fontWeight(.heavy)
//                        }
//                    }
//                }
//        }.padding().navigationBarHidden(true).navigationBarBackButtonHidden(true).navigationBarTitle("")
//
//    }
//}

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
