//
//  EnterView.swift
//  Yo Por Ti
//
//  Created by Gerard Mata Carrera on 24/07/2020.
//  Copyright © 2020 Gerard Mata Carrera. All rights reserved.
//

import SwiftUI

struct EnterView: View {
    var body: some View {
        homeEnterView()
    }
}

struct EnterView_Previews: PreviewProvider {
    static var previews: some View {
        EnterView()
    }
}

struct homeEnterView: View {
    @State var menu = 0
    @State var page = 0
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    ZStack {
                        HStack {
                            Image("yoPorTiLogoPng").resizable()
                                .frame(width: 60, height: 30)
                        }.padding(.horizontal)
                    }
                    //                next1()
                    GeometryReader{g in
                        
                        Carousel(width: UIScreen.main.bounds.width, page: self.$page, height: g.frame(in: .global).height)
                    }
                    
                    PageControl(page: self.$page)
                        .padding(.top, 20)
                }.padding(.vertical)
            }.hideNavigationBar()
        }
        
    }
}

struct next1: View {
    @State var menu = 0
    var body: some View {
        HStack(spacing: 30) {
            Button(action: {
                self.menu = 0
            }) {
                Text("Packs").foregroundColor(self.menu == 0 ? .gray : .black)
                .padding(.vertical, 6)
                .padding(.horizontal, 30)
            }.background(self.menu == 0 ? Color.black : Color.gray)
            .clipShape(Capsule())
            Button(action: {
                self.menu = 1
            }) {
                Text("Eventos").foregroundColor(self.menu == 1 ? .gray : .black)
                .padding(.vertical, 6)
                .padding(.horizontal, 30)
            }.background(self.menu == 1 ? Color.black : Color.gray)
            .clipShape(Capsule())
        }.padding(.vertical, 1)
    }
}
struct Listt : View {
    
    @Binding var page : Int
    
    var body: some View{
        
        HStack(spacing: 0){
            
            ForEach(data){i in
                
                Card(page: self.$page, width: UIScreen.main.bounds.width, data: i)
            }
        }
    }
}

struct Card : View {
    
    @Binding var page : Int
    var width : CGFloat
    var data : Type
    
    var body: some View{
        
        VStack{
            
            VStack{
                
                Text(self.data.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top,20)
                
                Text(self.data.cName)
                    .foregroundColor(.black)
                    .padding(.vertical)
                
                Spacer(minLength: 0)
                

                Image(self.data.image)
                .resizable()
                .frame(width: self.width - (self.page == self.data.id ? 100 : 150), height: (self.page == self.data.id ? 250 : 200))
                    .cornerRadius(20)
                
//                Button(action: {
//
//
//                }) {
//
//                    Text("Ir")
//                        .foregroundColor(.black)
//                        .padding(.vertical, 10)
//                        .padding(.horizontal, 30)
//                }
//                .background(Color(.gray))
//                .clipShape(Capsule())
//                .padding(.top, 20)
                
                NavigationLink(destination: NewBarView()) {
                    Text("Ir")
                        .foregroundColor(.black)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                }.background(Color(.gray))
                .clipShape(Capsule())
                .padding(.top, 20)
                
                Spacer(minLength: 0)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 25)
            .background(Color.pink)
            .cornerRadius(20)
            .padding(.top, 25)
            .padding(.vertical, self.page == data.id ? 0 : 25)
            .padding(.horizontal, self.page == data.id ? 0 : 25)
        }
        .frame(width: self.width)
        .animation(.default)
    }
}

struct Carousel : UIViewRepresentable {
    
    
    func makeCoordinator() -> Coordinator {
        
        return Carousel.Coordinator(parent1: self)
    }
    
    var width : CGFloat
    @Binding var page : Int
    var height : CGFloat
    
    func makeUIView(context: Context) -> UIScrollView{
        
        let total = width * CGFloat(data.count)
        let view = UIScrollView()
        view.isPagingEnabled = true
        view.contentSize = CGSize(width: total, height: 1.0)
        view.bounces = true
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        view.delegate = context.coordinator
        
        let view1 = UIHostingController(rootView: Listt(page: self.$page))
        view1.view.frame = CGRect(x: 0, y: 0, width: total, height: self.height)
        view1.view.backgroundColor = .clear
        
        view.addSubview(view1.view)
        
        return view
        
    }
    
    func updateUIView(_ uiView: UIScrollView, context: Context) {
        
        
    }
    
    class Coordinator : NSObject,UIScrollViewDelegate{
        
        var parent : Carousel
        
        init(parent1: Carousel) {
            parent = parent1
        }
        
        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let page = Int(scrollView.contentOffset.x / UIScreen.main.bounds.width)
            self.parent.page = page
        }
    }
}

// Now We GOing TO Implement UIPageControl...

struct PageControl : UIViewRepresentable {
    
    @Binding var page : Int
    func makeUIView(context: Context) -> UIPageControl {
        let view = UIPageControl()
        view.currentPageIndicatorTintColor = .black
        view.pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
        view.numberOfPages = data.count
        return view
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        DispatchQueue.main.async {
            uiView.currentPage = self.page
        }
    }
}

struct Type : Identifiable {
    
    var id : Int
    var name : String
    var cName : String
    var image : String
}

var data = [

    Type(id: 0, name: "Packs", cName: "Nuestros Packs", image: "laos"),
    
    Type(id: 1, name: "Eventos", cName: "Nuestros Eventos", image: "laos"),
    
    Type(id: 2, name: "Yo Por Ti", cName: "Yo Pooor Ti", image: "laos"),
    
]


extension View {
    func hideNavigationBar() -> some View {
        self
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
    }
}
