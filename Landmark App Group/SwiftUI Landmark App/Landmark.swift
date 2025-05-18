//
//  Landmark.swift
//  SwiftUI Landmark App
//
//  Created by Piotr Kieliś on 25/05/2025.
//
import Foundation
import SwiftUI
import CodeLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinate: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationsCoordinate2D(
            latitude: coordinates.latitude,
            longituide: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
