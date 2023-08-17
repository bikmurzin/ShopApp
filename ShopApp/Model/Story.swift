//
//  Stories.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 14.08.2023.
//

import Foundation
import SwiftUI

struct Story: Hashable, Codable, Identifiable {
    var id: Int
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var text: String
}
