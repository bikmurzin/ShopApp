//
//  Special.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 16.08.2023.
//

import Foundation
import SwiftUI

struct Special: Hashable, Codable, Identifiable {
    var id: Int
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    var title: String
    var text: String
    var date: String?
}
