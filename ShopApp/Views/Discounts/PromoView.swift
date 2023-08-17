//
//  PromoView.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 17.08.2023.
//

import SwiftUI

struct PromoView: View {
    var promo: Discount.MarketingInfo
    
    var body: some View {
        Group {
            switch promo {
            case .novelty:
                PromotionLabel(text: "Новинка", color: .purple)
            case .bigDiscount:
                PromotionLabel(text: "Удар по ценам", color: .pink)
            case .priceWithCard:
                PromotionLabel(text: "Цена по карте", color: .green)
            case .superPrice:
                PromotionLabel(text: "Супер цена", color: .pink)
            case .onlineCheaper:
                PromotionLabel(text: "Онлайн дешевле", color: .red)
            }
        }
        .padding(.top, -0)
        .padding(.leading, -10)
    }
}

struct PromoView_Previews: PreviewProvider {
    static var previews: some View {
        PromoView(promo: ModelData().recommended[0].promotion)
    }
}
