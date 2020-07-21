//
//  NewBarView.swift
//  Yo Por Ti
//
//  Created by Gerard Mata Carrera on 20/07/2020.
//  Copyright © 2020 Gerard Mata Carrera. All rights reserved.
//

import SwiftUI

struct NewBarView: View {
    
//    init() {
//        UITabBar.appearance().tintColor =  UIColor.red
//    }
    
    @State var index = 0
    var body: some View {
        TabView(selection: $index) {
            ContentView()
                .tabItem({
                    Image("menu")
                }).tag(0)
            MainSearchView()
                .tabItem({
                    Image("search")
                }).tag(1)
            ShopMainView()
                .tabItem({
                    Image("shop")
                }).tag(2)
            InfoMainView()
                .tabItem({
                    Image("info")
                }).tag(3)
        }
    }
}

struct NewBarView_Previews: PreviewProvider {
    static var previews: some View {
        NewBarView()
    }
}

