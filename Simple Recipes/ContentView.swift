//
//  ContentView.swift
//  Simple Recipes
//
//  Created by Anna Flores on 7/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        DessertList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
