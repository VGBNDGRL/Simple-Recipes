//
//  DessertRow.swift
//  Simple Recipes
//
//  Created by Anna Flores on 7/15/23.
//

import SwiftUI

struct DessertRow: View {
    var dessert: Dessert
    
    var body: some View {
        HStack {
            dessert.strMealThumb
                .resizable()
                .frame(width: 50, height: 50)
            Text(dessert.strMeal)
        }
    }
}

struct DessertRow_Previews: PreviewProvider {
    static var desserts = ModelData().desserts
    static var previews: some View {
        Group {
            DessertRow(dessert: desserts[0])
            DessertRow(dessert: desserts[1])

        }
    }
}
