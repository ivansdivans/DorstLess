//
//  LaunchView.swift
//  GeenDorstInLimburg
//
//  Created by Ivans Mihailovs on 28/06/2023.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        NavigationView {
            VStack() {
                Text("Find closest \ndrinking water fountain")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)

                NavigationLink(destination: ContentView()) {
                    ZStack() {
                        Image("droplet")
                            .resizable()
                            .frame(width: 400.0, height: 400.0)
                            .padding(.top)
                        Text("Press me")
                            .font(.headline)
                            .offset(y: 80)
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
            .environmentObject(ModelData())
    }
}
