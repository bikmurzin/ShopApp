//
//  CircleImage.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 14.08.2023.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var width: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(.green, lineWidth: 2)
                .frame(width: width, height: width)
                .foregroundColor(.clear)
            image
                .resizable()
                .frame(width: 0.9 * width, height: 0.9 * width)
                .clipShape(Circle())
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("logo"), width: 165)
    }
}
