//
//  DrinkingWaterFountainRow.swift
//  GeenDorstInLimburg
//
//  Created by Ivans Mihailovs on 30/06/2023.
//

import SwiftUI

struct FountainRow: View {
    var fountain: Fountain
    
    var body: some View {
        HStack {
            Image("glassOfWater")
                .resizable()
                .frame(width: 50.0, height: 50.0)
            Text(fountain.name)
            
            Spacer()
            
            if fountain.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct FountainRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FountainRow(fountain: fountains[0])
            FountainRow(fountain: fountains[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
