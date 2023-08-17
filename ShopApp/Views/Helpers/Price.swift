//
//  Price.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 16.08.2023.
//

// ₽/

import SwiftUI

struct Price: View {
    var price: String
    var unit: String
    var discount: Bool
    var priceBeforeDiscount: String?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .center) {
                Text(price)
                    .font(.system(size: 11))
                
                VStack(alignment: .leading) {
                    Text("₽/")
                    Text(unit)
                }
                .font(.system(size: 8))
            }
            if (discount), let strikePrice = priceBeforeDiscount {
                Text(strikePrice)
                    .strikethrough()
                    .font(.system(size: 11))
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct Price_Previews: PreviewProvider {
    static var previews: some View {
        Price(price: "299.90", unit: "шт", discount: true, priceBeforeDiscount: "649.90")
    }
}
