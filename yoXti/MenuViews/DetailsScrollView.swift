//
//  DetailsScrollView.swift
//  Yo Por Ti
//
//  Created by Gerard Mata Carrera on 20/07/2020.
//  Copyright © 2020 Gerard Mata Carrera. All rights reserved.
//

import SwiftUI

struct  DetailsScrollView: View {
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

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsScrollView()
    }
}
