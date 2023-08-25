//
//  DrinkingWaterFountain.swift
//  GeenDorstInLimburg
//
//  Created by Ivans Mihailovs on 30/06/2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Fountain: Hashable, Codable, Identifiable {
    var id: Int
    var category: String
    var openingTime: String
    var name: String
    var city: String
    var zipCode: String
    var isFavorite: Bool
    // The drinkingWaterFountainsData.json file has a key with this name for each fountain.
    // Because Fountain conforms to Codable, you can read the value associated with the key by creating a new property with the same name as the key.

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
