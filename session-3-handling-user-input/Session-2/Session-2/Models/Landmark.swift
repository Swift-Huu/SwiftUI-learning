//
//  Landmark.swift
//  Session-2
//
//  Created by 胡智林 on 2019/12/2.
//  Copyright © 2019 胡智林. All rights reserved.
//

import SwiftUI
import CoreLocation
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var category: Category
    var park: String
    var isFavorite: Bool
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    enum Category: String, Codable, CaseIterable, Hashable {
        case featured = "Featured"
        case lakes =  "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
}
extension Landmark {
    var image: Image {
         ImageStore.shared.image(name: imageName)
    }
}
struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

