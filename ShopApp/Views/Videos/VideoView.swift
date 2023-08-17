//
//  VideoView.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 16.08.2023.
//

import SwiftUI

struct VideoView: View {
    var video: JustImage
    
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            
            ZStack(alignment: .center) {
                video.image
                    .resizable()
                    .scaledToFill()
                    .frame(width: size.width, height: size.height)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Circle()
                    .frame(height: size.height / 4)
                    .foregroundColor(.white)
                Image(systemName: "play.fill")
                    .foregroundColor(.green)
                    .frame(height: size.height / 6)
            }
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView(video: ModelData().videos[0])
            .frame(width: 300, height: 180)
    }
}
