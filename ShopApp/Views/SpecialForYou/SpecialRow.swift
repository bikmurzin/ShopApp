//
//  SpecialRow.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 16.08.2023.
//

import SwiftUI

struct SpecialRow: View {
    @EnvironmentObject var modelData: ModelData
    var text: String = "Специально для вас"
    
    var body: some View {
        VStack {
            HStack {
                Text(text)
                    .font(.system(size: 22, weight: .bold))
                Spacer()
            }.padding(.leading, 10)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top ,spacing: 12) {
                    ForEach(modelData.special, id: \.id) { special in
                        SpecialView(special: special)
                    }
                }
                .padding(.horizontal, 15)
                .padding(.vertical, 5)
            }
        }
    }
}

struct SpecialRow_Previews: PreviewProvider {
    static var previews: some View {
        SpecialRow()
            .environmentObject(ModelData())
    }
}
