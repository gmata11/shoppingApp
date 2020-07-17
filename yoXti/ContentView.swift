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

struct MainView: View {
    var body: some View {
        VStack(spacing: 0) {
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
            NewBar()
        }.padding()
        .background(Color(.white))
    }
}

struct DetailsScroll: View {
    @State var show = false
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20) {
                ForEach(datas) {i in
                    HStack {
                        ForEach(i.rows) {j in
                            CardsView(row: j)
                        }
                    }
                }
                
            }
        }
    }
}

struct NewBar: View {
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

struct DetailView: View {
    @Binding var show: Bool
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                Image("yoPorTiLogoPng").resizable()
                .frame(width: 60, height: 25)
                    HStack(spacing: 18) {
                        Button(action: {
                            self.show.toggle()
                        }) {
                            Image("back").resizable()
                                .frame(width: 10, height: 10)
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
                }
                Image("samara").renderingMode(.original).resizable().frame(width: UIScreen.main.bounds.width / 2 - 25, height: 160)
                VStack(spacing: 15) {
                    HStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Caja1").font(.largeTitle)
                            Text("30€").fontWeight(.heavy)
                        }
                    }
                }
            }
        }.padding().navigationBarHidden(true).navigationBarBackButtonHidden(true).navigationBarTitle("")

    }
}

struct CardsView: View {
    @State var show = false
    var row: row
    var body: some View {
        VStack {
            VStack(spacing: 8) {
                NavigationLink(destination: DetailView(show: $show), isActive: $show) {
                    Image(row.image).renderingMode(.original).resizable().frame(width: UIScreen.main.bounds.width / 2 - 25, height: 160)
                }
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text(row.name).fontWeight(.medium)
                        Text(row.price).fontWeight(.heavy)
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

struct Splash: View {
    
    @State var isActive = false
    
    var body: some View {
        ZStack() {
            if self.isActive {
                ContentView()
            }else {
                Color.white.edgesIgnoringSafeArea(.all)
                ZStack {
                    Image("yoPorTiLogoPng").rotation3DEffect(.degrees(360), axis: (x: 1, y: 0, z: 0))
                    
                }
                ZStack {
                    Text("Created by gmata").frame(width: 150, height: 700, alignment: .bottomLeading)
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
