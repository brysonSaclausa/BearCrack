//
//  Product.swift
//  BearCrack
//
//  Created by BrysonSaclausa on 7/17/21.
//

import Foundation

struct Product {
    let imageName: String
    let title: String
    let description: String
    var isFavorite: Bool
    
    static func example1() -> Product {
        let product = Product(imageName: "gummi",
                              title: "Gummi Bear OG",
                              description: "A classic. Gummi bear with li hing mui toppings", isFavorite: false)
        print(product.isFavorite)
        return product
    }
    
    static func example2() -> Product {
        let product = Product(imageName: "cuppy",
                              title: "Sout Patch OG",
                              description: "A classic. Sour Patch with li hing mui toppings", isFavorite: true)
        print(product.isFavorite)
        return product
    }
}
