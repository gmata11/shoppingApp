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
                    HStack() {
                        DropDownMenu()
                    }.padding()
                }
            }
            DetailsScrollView()
        }.padding()
        .background(Color(.white))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
