//
//  FeatureRow.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 15.08.2023.
//

import SwiftUI

struct FeatureRow: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 12) {
                ForEach(modelData.features) { feature in
                    FeatureView(feature: feature)
                }
            }
            .padding(.horizontal, 15)
            .padding(.top, 7)
        }
    }
}

struct FeatureRow_Previews: PreviewProvider {
    static var previews: some View {
        FeatureRow()
    }
}
