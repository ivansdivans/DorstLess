//
//  FavoriteButton.swift
//  GeenDorstInLimburg
//
//  Created by Ivans Mihailovs on 19/08/2023.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    // Because you use a binding, changes made inside this view propagate back to the data source.
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
            // The title string that you provide for the button’s label doesn’t appear in the UI when you use the iconOnly label style, but VoiceOver uses it to improve accessibility.
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
