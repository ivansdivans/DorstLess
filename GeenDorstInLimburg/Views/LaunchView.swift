//
//  LaunchView.swift
//  GeenDorstInLimburg
//
//  Created by Ivans Mihailovs on 28/06/2023.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        VStack() {
            Text("DorstLess")
                .font(.title)
                .foregroundColor(.blue)
                .padding(.bottom)
            Text("Find closest drinking water fountain in Limburg")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            Image("glassOfWater")
                .resizable()
                .frame(width: 120.0, height: 120.0)
                .padding(.top)
            Text("Press me")
                .foregroundColor(.blue)
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
