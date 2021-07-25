//
//   Beer.swift
//  BestBeers
//
//  Created by Di on 13.07.2021.
//

import UIKit

class Beer {

    var brand: String
    var name: String
    var abv: String
    var ibu: String
    var rating: String
    var image: UIImage

    init(brand: String, name: String, abv: String, ibu: String, rating: String) {
        self.brand = brand
        self.name = name
        self.abv = abv
        self.ibu = ibu
        self.rating = rating
        image = UIImage(named: self.brand)!
    }
    
}
