//
//  MenuView.swift
//  BearCrack
//
//  Created by BrysonSaclausa on 7/17/21.
//

import SwiftUI

struct MenuView: View {
    
    var body: some View {
        
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 10) {
                MenuHeader()
                    .ignoresSafeArea()
                    .padding(.leading)
                Spacer()
                Text("Recommended Products")
                    .modifier(Headline2())
                    .padding(.horizontal)
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        CardView(product: Product.example1())
                        CardView(product: Product.example2())
                    }
                    
                }.frame(height: 320)
                .padding()
             }.padding([.top])
                .background(Color(.clear))
            Divider()
            VStack(alignment: .leading, spacing: 10) {
                    
                Text("Gummi Bears")
                    .modifier(Headline2())
                    .padding(.horizontal)
                    
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        CardView(product: Product.example1())
                        CardView(product: Product.example2())
                    }
                    
                }.frame(height: 320)
                .padding()
                
            }.padding([.top])
            .background(Color(.clear))
            
            Divider()
            
            VStack(alignment: .leading, spacing: 10) {
                    
                Text("Sour Patch Kids")
                    .modifier(Headline2())
                    .padding(.horizontal)
                    
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        CardView(product: Product.example1())
                        CardView(product: Product.example2())
                    }
                    
                }.frame(height: 320)
                .padding()
                
            }.padding([.top])
            .background(Color(.clear))
            
            
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
