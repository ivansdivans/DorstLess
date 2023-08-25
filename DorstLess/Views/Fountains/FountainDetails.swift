//
//  FountainDetails.swift
//  GeenDorstInLimburg
//
//  Created by Ivans Mihailovs on 04/07/2023.
//

import SwiftUI

struct FountainDetails: View {
    @EnvironmentObject var modelData: ModelData
    var fountain: Fountain
    
    var fountainIndex: Int {
        modelData.fountains.firstIndex(where: { $0.id == fountain.id })!
    }
    
    var body: some View {
        ScrollView {
            MapView(locations: [fountain])
                .frame(height: 500)
                .ignoresSafeArea(edges: .top)
            
            CircleImage(image: fountain.image)
                .offset(y: -70)
                .padding(.bottom, -70)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(fountain.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.fountains[fountainIndex].isFavorite)
                    // Use landmarkIndex with the modelData object to ensure that the button updates the isFavorite property of the landmark stored in your model object.
                }
                
                Text(fountain.category)
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
    static let modelData = ModelData()
    
    static var previews: some View {
        FountainDetails(fountain: ModelData().fountains[0])
            .environmentObject(modelData)
    }
}
