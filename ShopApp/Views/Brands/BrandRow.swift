//
//  BrandRow.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 17.08.2023.
//

import SwiftUI

struct BrandRow: View {
    var brands: [JustImage]
    var text: String
    
    var body: some View {
        VStack {
            HStack {
                Text(text)
                    .font(.system(size: 22, weight: .bold))
                Spacer()
            }
            .padding(.leading, 10)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(brands) { brand in
                        BrandView(brand: brand)
                    }
                }
                .padding(.leading, 10)
            }
        }
    }
}

struct BrandRow_Previews: PreviewProvider {
    static var previews: some View {
        BrandRow(brands: ModelData().brands, text: "Бренды")
    }
}
