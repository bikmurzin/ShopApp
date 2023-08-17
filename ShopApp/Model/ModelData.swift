//
//  ModelData.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 14.08.2023.
//

import Foundation

final class ModelData: ObservableObject {
    var stories: [Story] = load("stories.json")
    var promotions: [Promotion] = load("promotions.json")
    var features: [Feature] = load("features.json")
    var recommended: [Discount] = load("recommended.json")
    var special: [Special] = load("special.json")
    var videos: [JustImage] = load("videos.json")
    var brands: [JustImage] = load("brands.json")
    var sweetMoods: [Discount] = load("sweetMood.json")
    var shahlics: [Discount] = load("shahlic.json")
    var forKids: [Discount] = load("forKids.json")
    var tastesOfSummer: [Discount] = load("tastesOfSummer.json")
    var weLoveFresh: [Discount] = load("weLoveFresh.json")
    var cleannessAndBeauty: [Discount] = load("cleannessAndBeauty.json")
    var careOfChildren: [Discount] = load("careOfChildren.json")
    var novelties: [Discount] = load("novelties.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
