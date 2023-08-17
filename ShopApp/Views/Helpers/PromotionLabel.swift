//
//  PromotionLabel.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 16.08.2023.
//

import SwiftUI

struct PromotionLabel: View {
    var text: String
    var color: Color
    
    var body: some View {
        Text(text)
            .padding(.vertical, 5)
            .padding(.leading, 15)
            .padding(.trailing, 5)
            .background(color)
            .opacity(0.8)
            .foregroundColor(.white)
            .font(.system(size: 9, weight: .bold))
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct PromotionLabel_Previews: PreviewProvider {
    static var previews: some View {
        PromotionLabel(text: "Удар по ценам", color: .green)
    }
}
