//
//  TextStyleGuide.swift
//  BearCrack
//
//  Created by BrysonSaclausa on 7/17/21.
//

import SwiftUI

struct Header1: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.bold(.headline)())
            .foregroundColor(.black)
    }
}

struct BodyStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(.secondary)
    }
}

struct Headline2: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.black)
    }
}



struct TextStyleGuide: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .modifier(Header1())
        }
        
    }
}

struct TextStyleGuide_Previews: PreviewProvider {
    static var previews: some View {
        TextStyleGuide()
    }
}
