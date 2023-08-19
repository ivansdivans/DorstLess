//
//  DrinkingWaterFountainList.swift
//  GeenDorstInLimburg
//
//  Created by Ivans Mihailovs on 03/07/2023.
//

import SwiftUI

struct FountainsList: View {
    @EnvironmentObject var modelData: ModelData
    // The modelData property gets its value automatically, as long as the environmentObject(_:) modifier has been applied to a parent.
    @State private var showFavoritesOnly = false
    // Because you use state properties to hold information that’s specific to a view and its subviews, you always create state as private.
    
    var filteredLandmarks: [Fountain] {
        modelData.fountains.filter { fountain in
            (!showFavoritesOnly || fountain.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                // Use the $ prefix to access a binding to a state variable, or one of its properties.
                
                ForEach(filteredLandmarks) { fountain in
                    NavigationLink {
                        FountainDetails(fountain: fountain)
                    } label: {
                        FountainRow(fountain: fountain)
                    }
                }
                // To combine static and dynamic views in a list, or to combine two or more different groups of dynamic views, use the ForEach type instead of passing your collection of data to List.
            }
            .navigationTitle("Drinking water")
        }
    }
}

struct FountainsList_Previews: PreviewProvider {
    static var previews: some View {
        FountainsList()
            .environmentObject(ModelData())
            .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro"))
            .previewDisplayName("iPhone 14 Pro")
    }
}
