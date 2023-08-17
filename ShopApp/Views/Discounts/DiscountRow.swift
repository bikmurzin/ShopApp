//
//  DiscountRow.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 16.08.2023.
//

import SwiftUI

struct DiscountRow: View {
    var discounts: [Discount]
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
                HStack(alignment: .top ,spacing: 12) {
                    ForEach(discounts) { discount in
                        DiscountView(discount: discount, width: 130)
                    }
                }
                .padding(.horizontal, 15)
                .padding(.vertical, 5)
            }
        }
    }
}

struct DiscountRow_Previews: PreviewProvider {
    static var previews: some View {
        DiscountRow(discounts: ModelData().recommended, text: "Рекомендуем")
    }
}
