//
//  DiscountView.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 14.08.2023.
//

import SwiftUI

struct PromotionView: View {
    let promotion: Promotion
    
    var body: some View {
        RoundedRectangleImage(width: 250, height: 160, image: promotion.image)
    }
}

struct PromotionView_Previews: PreviewProvider {
    static var previews: some View {
        PromotionView(promotion: ModelData().promotions[0])
    }
}
