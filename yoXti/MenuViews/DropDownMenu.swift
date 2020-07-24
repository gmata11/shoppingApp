//
//  DropDownMenu.swift
//  Yo Por Ti
//
//  Created by Gerard Mata Carrera on 22/07/2020.
//  Copyright © 2020 Gerard Mata Carrera. All rights reserved.
//

import SwiftUI

struct DropDownMenu: View {
    var body: some View {
        DropDownView()
    }
}

struct DropDownMenu_Previews: PreviewProvider {
    static var previews: some View {
        DropDownMenu()
    }
}

struct DropDownView: View {
    @State var selectionIndex = 0
    @State var packsSelected: Bool = true
    var options = Constants.optionsSelected
    var body: some View {
        HStack {
            Picker(selection: $selectionIndex, label: Text("")) {
                ForEach(0 ..< options.count ) {
                    Text(self.options[$0]).tag($0)
                }
            }.pickerStyle(SegmentedPickerStyle())
        }
    }
}

//struct DropDownView: View {
//    @State var expanded = false
//    @State var selection = "Seleccionar"
//    var body: some View {
//        VStack(alignment: .leading, content: {
//            HStack {
//                Spacer()
//                Text(selection).fontWeight(.medium)
//                Spacer()
//                Image(expanded ? "up" : "down").resizable()
//                .frame(width: 20, height: 20)
//            }.onTapGesture {
//                self.expanded.toggle()
//            }
//            if expanded {
//                Button(action: {
//                    self.expanded.toggle()
//                    self.selection = "Packs"
//                }) {
//                    Text("Packs")
//                }.foregroundColor(.black)
//                Button(action: {
//                    self.expanded.toggle()
//                    self.selection = "Eventos"
//                }) {
//                    Text("Eventos")
//                }.foregroundColor(.black)
//            }
//        }).padding()
//            .background(LinearGradient(gradient: .init(colors: [.gray, .white]), startPoint: .top, endPoint: .bottom))
//        .cornerRadius(20)
//        .animation(.spring())
//    }
//}
