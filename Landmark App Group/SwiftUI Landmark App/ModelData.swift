//
//  ModelData.swift
//  SwiftUI Landmark App
//
//  Created by Piotr Kieliś on 25/05/2025.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>( filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main boundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main boundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
