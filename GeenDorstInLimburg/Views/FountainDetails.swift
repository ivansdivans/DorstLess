//
//  FountainDetails.swift
//  GeenDorstInLimburg
//
//  Created by Ivans Mihailovs on 04/07/2023.
//

import SwiftUI

struct FountainDetails: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 500)
                .ignoresSafeArea(edges: .top)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Watertappunt")
                    .font(.title)
                
                Text("Henri Hermanspark ")
                    .font(.subheadline)
                
                Divider()
                
                HStack {
                    Text("Opening time:")
                    
                    Text("24/7")
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
    }
}

struct FountainDetails_Previews: PreviewProvider {
    static var previews: some View {
        FountainDetails()
    }
}
