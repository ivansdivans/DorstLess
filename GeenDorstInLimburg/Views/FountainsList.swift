//
//  DrinkingWaterFountainList.swift
//  GeenDorstInLimburg
//
//  Created by Ivans Mihailovs on 03/07/2023.
//

import SwiftUI

struct FountainsList: View {
    var body: some View {
        NavigationView {
            List(fountains) { fountain in
                NavigationLink {
                    FountainDetails(fountain: fountain)
                } label: {
                    FountainRow(fountain: fountain)
                }
            }
            .navigationTitle("Drinking water fountains")
        }
    }
}

struct FountainsList_Previews: PreviewProvider {
    static var previews: some View {
        FountainsList()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro"))
            .previewDisplayName("iPhone 14 Pro")
    }
}
