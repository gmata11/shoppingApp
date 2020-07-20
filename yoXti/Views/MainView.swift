//
//  MainView.swift
//  Yo Por Ti
//
//  Created by Gerard Mata Carrera on 20/07/2020.
//  Copyright © 2020 Gerard Mata Carrera. All rights reserved.
//

import SwiftUI

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
            DetailsScrollView()
            NewBarView()
        }.padding()
        .background(Color(.white))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
