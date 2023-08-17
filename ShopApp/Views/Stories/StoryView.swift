//
//  StoryView.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 14.08.2023.
//

import SwiftUI

struct StoryView: View {
    let story: Story
    let size: Double = 58
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            CircleImage(image: story.image, width: size)
            Text(story.text)
                .multilineTextAlignment(.center)
                .font(.system(size: 10))
        }
        .frame(width: size * 1.5)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(story: ModelData().stories[0])
    }
}
