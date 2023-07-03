//
//  CircleImage.swift
//  GeenDorstInLimburg
//
//  Created by Ivans Mihailovs on 28/06/2023.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.white)
                .frame(width: 120.0, height: 120.0)
            Image("glassOfWater")
                .resizable()
                .frame(width: 120.0, height: 120.0)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
