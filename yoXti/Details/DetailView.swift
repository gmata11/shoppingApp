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
        NavigationView {
            Text("Details")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(show: .constant(true))
    }
}
