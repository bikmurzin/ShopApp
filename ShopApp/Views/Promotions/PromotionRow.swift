//
//  DiscountRow.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 14.08.2023.
//

import SwiftUI


struct PromotionRow: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top) {
                ForEach(modelData.promotions) { promotion in
                    PromotionView(promotion: promotion)
                }
            }
            .padding(.horizontal, 15)
        }
    }
}

struct PromotionRow_Previews: PreviewProvider {
    static var previews: some View {
        PromotionRow()
            .environmentObject(ModelData())
    }
}
