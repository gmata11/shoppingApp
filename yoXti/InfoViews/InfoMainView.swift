//
//  InfoMainView.swift
//  Yo Por Ti
//
//  Created by Gerard Mata Carrera on 21/07/2020.
//  Copyright © 2020 Gerard Mata Carrera. All rights reserved.
//

import SwiftUI

struct InfoMainView: View {
    @State var animation = true
    @State var showDetails1 = true
    @State var showDetails2 = true
    @State var showDetails3 = true
    @State var showDetails4 = true
    @State var isShowed = false
    var body: some View {
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
            .animation(.easeInOut(duration: 2))
            
            VStack(spacing: 15) {
                Info(showDetail: $showDetails1, name: "¿En que ciudades se reparten los packs? ¿Y Los complementos?", text: "En Yo Por Ti nos gusta dar un excelente servicio, es por ello que de momento los packs solo se pueden solicitar para Lleida y alrededores. Estamos trabajando para encontrar un proveedor de confianza en distintas ciudades para poder llegar a todos. Envíanos un email donde te gustaría que llegasen los packs.Los complementos los enviamos a toda la España.")
                Info(showDetail: $showDetails2, name: "¿Cuál es el horario de reparto?", text: "De lunes a domingo de 8:00h a 21:00h.")
                Info(showDetail: $showDetails3, name: "¿Cómo hacer compras seguras en la tienda online? ¿Mis datos están protegidos?", text: "¡Muy fácil! Seleccionas el pack que más te guste y le puedes añadir un complemento para terminar de perfeccionarlo, además de solicitar si quieres foto personalizada.\nUna vez en el proceso de compra, indicas la fecha y hora de entrega y solo queda esperar a que llegue el día para sorprender a esa persona que tanto se lo merece.\nTodos los datos están protegidos , Yo Por Ti los almacena de forma segura y solo pueden ser usados para fines relacionados a Yo Por Ti.")
                Info(showDetail: $showDetails4, name: "¿Con cuántos días de antelación se tiene que hacer el pedido?", text: "Para los packs sin productos personalizados con 24 horas de antelación.\nPara el envío de  complementos personalizados con una antelación de tres días laborables.")
            }
            .font(.body)
            .foregroundColor(.gray)
            .lineSpacing(10)
            .lineLimit(50)
            .opacity(animation ? 0 : 1)
            .animation(Animation.easeInOut(duration: 3))
            Spacer(minLength: 150)
        }
        .frame(minHeight: 0, maxHeight: .infinity)
        .padding(.horizontal, 15)
        .onAppear { if !self.isShowed {
            self.animation.toggle()
            self.isShowed = true
            }
        }
    }
}

struct InfoMainView_Previews: PreviewProvider {
    static var previews: some View {
        InfoMainView()
    }
}

struct Info : View {
    
    @Binding var showDetail : Bool
    
    var name: String
    var text : String
    
    var body : some View {
        return   GeometryReader { geometry in
            HStack {
                VStack {
                    HStack {
                        Text(self.name)
                            .font(.body)
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                        Button(action: {
                            self.showDetail.toggle()
                        }) {
                            Image(systemName: "chevron.down.circle")
                                .font(.body)
                                .rotationEffect(.degrees(self.showDetail ? 0: -180))
                                .animation(.default)
                        }
                    }.offset(y: self.showDetail ? 0 : geometry.size.height / 10)
                        .animation(.easeInOut(duration: 0.5))
                    Text(self.text)
                        .opacity(self.showDetail ? 1 : 0)
                        .animation(Animation.easeInOut(duration: 2).speed(3))
                        .minimumScaleFactor(0.5)
                }.frame(width: geometry.size.width)
                Spacer()
            }
        }
    }
}
