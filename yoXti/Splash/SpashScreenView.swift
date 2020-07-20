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

struct SpashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SpashScreenView()
    }
}
