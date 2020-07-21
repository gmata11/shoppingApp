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
        logoView()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(show: .constant(true))
    }
}

struct logoView: View {
    @State var animation = true
    @State var isShowed = false
    var body: some View {
        NavigationView {
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
            }.frame(minHeight: 0, maxHeight: .infinity)
                .padding(.horizontal, 15)
                .onAppear { if !self.isShowed {
                    self.animation.toggle()
                    self.isShowed = true
                    }
            }
        }
    }
}
