//
//  DetailView.swift
//  Yo Por Ti
//
//  Created by Gerard Mata Carrera on 20/07/2020.
//  Copyright © 2020 Gerard Mata Carrera. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    @Binding var show: Bool
    var body: some View {
        NavigationView {
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
                Spacer()
                Image("samara").renderingMode(.original).resizable().frame(width: UIScreen.main.bounds.width / 2 - 25, height: 160)
                VStack(spacing: 15) {
                    HStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Caja1").font(.largeTitle)
                            Text("30€").fontWeight(.heavy)
                        }
                    }
                }
        }.padding().navigationBarHidden(true).navigationBarBackButtonHidden(true).navigationBarTitle("")

    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(show: .constant(true))
    }
}
