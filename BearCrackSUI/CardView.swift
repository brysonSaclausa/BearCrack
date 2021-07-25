//
//  CardView.swift
//  BearCrack
//
//  Created by BrysonSaclausa on 7/17/21.
//

import SwiftUI

struct CardView: View {
    
    let product:  Product
    
    func printSomething() {
        print("Added to favorites")
    }
    
    func printSomethingElse() {
        print("Added to cart")
    }
    
    var body: some View {
        
       VStack(alignment: .leading, spacing:-7) {
                
                ZStack {
                    HStack(alignment: .top){
                        Spacer()
                        FavoriteButtonView()
                            
                        Spacer()
                    }
                    Image(product.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 225, height: 160)
                    
                    HStack{
                        FavoriteButtonView()
                    }
                    
                    
                    
                        
                }
                Spacer()
                    
                Text(product.title)
                    .modifier(Header1())
                    .padding([.horizontal,.bottom])
                    .frame(alignment: .leading)
                
                    
                Text(product.description)
                    .modifier(BodyStyle())
                    .padding([.horizontal, .bottom])
                    .frame(alignment: .leading)
                    .lineSpacing(.zero)
                
            }
            .background(Color(.white))
            .frame(maxWidth: 225, maxHeight: 320)
            .cornerRadius(50)
            
            
//            Button(action: printSomething ,
//                label: {
//                Image(systemName: "star.fill")
//                    .foregroundColor(.yellow)
//                    .frame(width: 50, height: 50, alignment: .topTrailing)
//
//                })
            Spacer()
            
//            Button(action: printSomethingElse, label: {
//                Image(systemName: "plus.circle")
//                    .foregroundColor(.white)
//                    .frame(width: 50, height: 50, alignment: .topLeading)
////                    .offset(x: -70, y: -110)
//            })
            
            
        
        
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(product: Product.example1())
            .frame(width: 400, height: 500)
            .background(Color(.gray))
            
    }
}
