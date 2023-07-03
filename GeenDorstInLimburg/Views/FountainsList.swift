//
//  DrinkingWaterFountainList.swift
//  GeenDorstInLimburg
//
//  Created by Ivans Mihailovs on 03/07/2023.
//

import SwiftUI

struct FountainsList: View {
    var body: some View {
        List(fountains) { fountain in
            FountainRow(fountain: fountain)
        }
    }
}

struct FountainsList_Previews: PreviewProvider {
    static var previews: some View {
        FountainsList()
    }
}
