//
//  Discount.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 15.08.2023.
//

import Foundation
import SwiftUI

struct Discount: Hashable, Codable, Identifiable {
    public enum MarketingInfo: String, Codable {
        case novelty = "novelty"
        case bigDiscount = "bigDiscount"
        case priceWithCard = "priceWithCard"
        case superPrice = "superPrice"
        case onlineCheaper = "onlineCheaper"
    }
    
    var id: Int
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var price: String
    var oldPrice: String
    var unit: String
    var promotion: MarketingInfo
    var isPriceReduced: Bool
}
