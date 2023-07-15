//
//  DessertList.swift
//  Simple Recipes
//
//  Created by Anna Flores on 7/15/23.
//

import SwiftUI

struct DessertList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(modelData.desserts) { dessert in
                    NavigationLink {
                        DessertDetail(dessert: dessert)
                    } label: {
                        DessertRow(dessert: dessert)
                    }
                }
            }
            .navigationTitle("Dessert Recipes")
        }
    }
}

struct DessertList_Previews: PreviewProvider {
    static var previews: some View {
        DessertList()
            .environmentObject(ModelData())
    }
}
