//
//  Dessert.swift
//  Simple Recipes
//
//  Created by Anna Flores on 7/15/23.
//

import Foundation
import SwiftUI

struct Dessert: Hashable, Codable, Identifiable {
    var strMeal: String
    var id: Int
    
    private var imageName: String
    var strMealThumb: Image {
        Image(imageName)
    }
}
