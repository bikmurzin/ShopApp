//
//  FeatureView.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 15.08.2023.
//

import SwiftUI

struct FeatureView: View {
    let feature: Feature
    
    var body: some View {
        ZStack(alignment: .top) {
            RoundedRectangleImage(width: 100, height: 120, image: feature.image)
            Text(feature.text)
                .font(.subheadline)
                .frame(width: 100)
                .padding(.top, 10)
        }
        .shadow(radius: 1)
    }
}

struct FeatureView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureView(feature: ModelData().features[0])
    }
}
