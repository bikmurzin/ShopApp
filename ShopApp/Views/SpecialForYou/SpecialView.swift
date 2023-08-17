//
//  SpecialView.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 16.08.2023.
//

import SwiftUI

struct SpecialView: View {
    var width: Double = 230
    var height: Double = 200
    
    var special: Special
    
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: size.width, height: size.height)
                    .foregroundColor(.white)
                
                VStack {
                    special.image
                        .resizable()
                        .scaledToFill()
                        .frame(width: size.width, height: size.height * 0.6)
                        .padding(.bottom, 5)


                    VStack(spacing: 2) {
                        if let date = special.date {
                            Text(date)
                                .font(.system(size: 11))
                                .foregroundColor(.secondary)
                        }
                        Text(special.title)
                            .font(.system(size: 15, weight: .bold))
                        Text(special.text)
                            .font(.system(size: 10))
                            .foregroundColor(.secondary)
                            .padding(.bottom, 3)
                    }
                    .padding(.horizontal, 5)
                    Spacer()
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(radius: 2)
        }
        .frame(width: width, height: height)
    }
}

struct SpecialView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialView(special: ModelData().special[0])
    }
}
