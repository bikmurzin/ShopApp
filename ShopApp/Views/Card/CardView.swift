//
//  CardView.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 14.08.2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        RoundedRectangleImage(width: 346, height: 100, image: Image("card"))
            .shadow(radius: 1)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
