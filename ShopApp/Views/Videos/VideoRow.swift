//
//  VideoRow.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 16.08.2023.
//

import SwiftUI

struct VideoRow: View {
    @EnvironmentObject var modelData: ModelData
    var text: String = "Видео"
    
    @State var currentIndex: Int = 0
    
    var body: some View {
        VStack {
            HStack {
                Text(text)
                    .font(.system(size: 22, weight: .bold))
                Spacer()
            }
            .padding(.leading, 10)
            
            Carousel(index: $currentIndex, items: modelData.videos) { video in
                GeometryReader { proxy in
                    let size = proxy.size
                    
                    VideoView(video: video)
                        .frame(width: size.width, height: 180)
                }
            }
            .frame(height: 180)
        }
    }
}

struct VideoRow_Previews: PreviewProvider {
    static var previews: some View {
        VideoRow()
            .environmentObject(ModelData())
    }
}
