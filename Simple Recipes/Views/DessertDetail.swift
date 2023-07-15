//
//  DessertDetail.swift
//  Simple Recipes
//
//  Created by Anna Flores on 7/15/23.
//

import SwiftUI

struct DessertDetail: View {
    @EnvironmentObject var modelData: ModelData
    var dessert: Dessert
    
    var body: some View {
        ScrollView {
            CircleImage(image: dessert.strMealThumb)
                .padding(.bottom)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(dessert.strMeal)
                        .font(.title)
                }
                HStack {
                    Text("Ingredients")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()

                Text("Instructions")
            }
            .padding()
        }
        .navigationTitle(dessert.strMeal)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DessertDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        DessertDetail(dessert: modelData.desserts[0]).environmentObject(modelData)
    }
}
