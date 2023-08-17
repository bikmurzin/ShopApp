//
//  DiscountRow.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 14.08.2023.
//

import SwiftUI


struct PromotionRow: View {
    var promotions: [Promotion]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top) {
                ForEach(promotions) { promotion in
                    PromotionView(promotion: promotion)
                }
            }
            .padding(.horizontal, 15)
        }
    }
}

struct PromotionRow_Previews: PreviewProvider {
    static var previews: some View {
        PromotionRow(promotions: ModelData().promotions)
    }
}
