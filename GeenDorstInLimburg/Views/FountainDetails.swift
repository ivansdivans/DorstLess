//
//  FountainDetails.swift
//  GeenDorstInLimburg
//
//  Created by Ivans Mihailovs on 04/07/2023.
//

import SwiftUI

struct FountainDetails: View {
    var fountain: Fountain
    
    var body: some View {
        ScrollView {
            MapView(coordinate: fountain.locationCoordinate)
                .frame(height: 500)
                .ignoresSafeArea(edges: .top)
            
            CircleImage(image: fountain.image)
                .offset(y: -70)
                .padding(.bottom, -70)
            
            VStack(alignment: .leading) {
                Text(fountain.category)
                    .font(.title)
                
                Text(fountain.name)
                    .font(.subheadline)
                
                Divider()
                
                HStack {
                    Text("Opening time:")
                    Text(fountain.openingTime)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                HStack() {
                    Text("Rating:")
                    
                    Text("*****")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
            }
            .padding()
            .font(.subheadline)
            
            Spacer()
        }
        .navigationTitle(fountain.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FountainDetails_Previews: PreviewProvider {
    static var previews: some View {
        FountainDetails(fountain: fountains[0])
    }
}
