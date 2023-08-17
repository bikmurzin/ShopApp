//
//  StoryRow.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 14.08.2023.
//

import SwiftUI

struct StoryRow: View {
    let stories: [Story]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 10) {
                ForEach(stories) { story in
                    StoryView(story: story)
                }
            }
            .padding(.top, 5)
            .padding(.horizontal, 15)
        }
    }
}

struct StoryRow_Previews: PreviewProvider {
    static var previews: some View {
        StoryRow(stories: ModelData().stories)
    }
}
