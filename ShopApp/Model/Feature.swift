//
//  Feature.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 15.08.2023.
//

import Foundation
import SwiftUI

struct Feature: Hashable, Codable, Identifiable {
    var id: Int
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var text: String
}
