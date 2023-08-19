//
//  DrinkingWaterFountainList.swift
//  GeenDorstInLimburg
//
//  Created by Ivans Mihailovs on 03/07/2023.
//

import SwiftUI

struct FountainsList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
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
                
                ForEach(filteredLandmarks) { fountain in
                    NavigationLink {
                        FountainDetails(fountain: fountain)
                    } label: {
                        FountainRow(fountain: fountain)
                    }
                }
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
