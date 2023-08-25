//
//  LocationMapAnnotationView.swift
//  GeenDorstInLimburg
//
//  Created by Ivans Mihailovs on 18/08/2023.
//

import SwiftUI

struct LocationMapAnnotationView: View {
    var location: Fountain
    
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: "drop.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .font(.headline)
                .foregroundColor(.blue)
                .background(.white)
                .clipShape(Circle())
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 10, height: 10)
                .foregroundColor(.blue)
                .rotationEffect(Angle(degrees: 180))
                .offset(y: -4)
                .padding(.bottom, 40)
        }
    }
}

struct LocationMapAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapAnnotationView(location: ModelData().fountains[0])
    }
}
