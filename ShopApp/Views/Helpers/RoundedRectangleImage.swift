//
//  RoundedRectangleImage.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 14.08.2023.
//

import SwiftUI

struct RoundedRectangleImage: View {
    let width: Double
    let height: Double
    let image: Image
    
    var body: some View {
        image
            .resizable()
            .scaledToFill()
            .frame(width: width, height: height)
            .cornerRadius(height / 10)
    }
}

struct RoundedRectangleImage_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleImage(width: 100, height: 160, image: Image("discount"))
    }
}
