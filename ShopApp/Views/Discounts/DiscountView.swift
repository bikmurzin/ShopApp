//
//  DiscountView.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 15.08.2023.
//

import SwiftUI

struct DiscountView: View {
    
    var discount: Discount
    var height: Double = 160
    var width: Double = 100
    
    var color: Color = .black
    var text = ""
    
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            
            
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 10)
                            .frame(width: width, height: height)
//                            .shadow(radius: 2)
                            .foregroundColor(.white)
                            
                VStack {
                    discount.image
                        .resizable()
                        .scaledToFit()
                        .frame(width: size.width/1.3, height: size.height/1.5)
                        .padding(.vertical, 5)
                    Spacer()
                    HStack {
                        Price(price: discount.price, unit: discount.unit, discount: discount.isPriceReduced, priceBeforeDiscount: discount.oldPrice)
                        Spacer()
                        Button {
                            print("Add to cart")
                        } label: {
                            Label("Add to cart", systemImage: "cart.badge.plus")
                                .labelStyle(.iconOnly)
                                .font(.system(size: 16))
                        }
                    }
                    .padding(.bottom, 10)
                    .padding(.horizontal, 2)
                }
                PromoView(promo: discount.promotion)
                
            } // End of ZStack
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(radius: 2)
            
        }
        .frame(width: width, height: height)
        
        
    }
    
}

struct DiscountView_Previews: PreviewProvider {
    static var previews: some View {
        DiscountView(discount: ModelData().recommended[1])
    }
}
