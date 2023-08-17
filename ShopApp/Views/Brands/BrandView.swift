//
//  BrandView.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 17.08.2023.
//

import SwiftUI

struct BrandView: View {
    var brand: JustImage
    var width: Double = 110
    var height: Double = 50
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .stroke(.black)
                .frame(width: width * 1.1, height: height * 1.1)
            
            brand.image
                .resizable()
                .scaledToFit()
                .frame(width: width, height: height)
        }
    }
}

struct BrandView_Previews: PreviewProvider {
    static var previews: some View {
        BrandView(brand: ModelData().brands[0])
    }
}
