//
//  CardsView.swift
//  Yo Por Ti
//
//  Created by Gerard Mata Carrera on 20/07/2020.
//  Copyright © 2020 Gerard Mata Carrera. All rights reserved.
//

import SwiftUI

struct CardsView: View {
    @State var show = false
    var row: row
    var body: some View {
        VStack {
            VStack(spacing: 8) {
                NavigationLink(destination: DetailView(show: $show), isActive: $show) {
                    Image(row.image).renderingMode(.original).resizable().frame(width: UIScreen.main.bounds.width / 2 - 25, height: 160)
                }
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text(row.name).fontWeight(.medium)
                        Text(row.price).fontWeight(.heavy)
                    }
                    Spacer()
                    Button(action: {
                        //Todo
                    }) {
                        Image("option").resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.black)
                    }.padding(.trailing, 15)
                }
            }
        }
    }
}

//struct CardsView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardsView()
//    }
//}
