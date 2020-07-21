//
//  SpashScreenView.swift
//  Yo Por Ti
//
//  Created by Gerard Mata Carrera on 20/07/2020.
//  Copyright © 2020 Gerard Mata Carrera. All rights reserved.
//

import SwiftUI

struct SpashScreenView: View {
    
    @State var isActive = false
    @State var animation = true
    
    var body: some View {
        ZStack() {
            if self.isActive {
                NewBarView()
            }else {
                Color.white.edgesIgnoringSafeArea(.all)
                ZStack {
                    Image("yoPorTiLogoPng")
                    .shadow(color: Color.gray, radius: 10)
                        .scaleEffect(animation ? 0.5 : 1.0)
                        .rotation3DEffect(Angle(degrees: animation ? 0 : 360), axis: (x: 0, y: 360, z: 0))
                        .animation(Animation.easeInOut(duration: 1.0))
                        .onAppear { self.animation.toggle() }
                    
                }
                ZStack {
                    Text(Constants.splashCompany).frame(width: 150, height: 700, alignment: .bottomLeading)
                }
            }
            
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.4) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SpashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SpashScreenView()
    }
}
