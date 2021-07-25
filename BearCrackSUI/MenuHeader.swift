//
//  MenuHeader.swift
//  BearCrack
//
//  Created by BrysonSaclausa on 7/17/21.
//

import SwiftUI

struct MenuHeader: View {
    var body: some View {
        
        HStack(alignment: .center){
            Text("Menu")
                
                .font(.title).bold()
            Spacer()
            
            Image("bearImage")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 80)
                .clipShape(Circle())
            
            
        }.background(Color(UIColor(.clear)))
        .frame(height: 100)
       
    }
}

struct MenuHeader_Previews: PreviewProvider {
    static var previews: some View {
        MenuHeader()
    }
}
