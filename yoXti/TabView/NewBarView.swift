//
//  NewBarView.swift
//  Yo Por Ti
//
//  Created by Gerard Mata Carrera on 20/07/2020.
//  Copyright © 2020 Gerard Mata Carrera. All rights reserved.
//

import SwiftUI

struct NewBarView: View {
    @State var index = 0
    var body: some View {
        TabView {
            ContentView()
                .tabItem({
                    Image("menu")
                }).tag(0)
            MainSearchView()
                .tabItem({
                    Image("search")
                }).tag(1)
        }
    }
}

struct NewBarView_Previews: PreviewProvider {
    static var previews: some View {
        NewBarView()
    }
}

