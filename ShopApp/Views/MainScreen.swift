//
//  MainScreen.swift
//  ShopApp
//
//  Created by Robert Bikmurzin on 14.08.2023.
//

import SwiftUI

struct MainScreen: View {
    let modelData = ModelData()
    
    var body: some View {
        NavigationView {
            VStack {
                Divider()
                ScrollView {
                    
                    LazyVStack(spacing: 20) {
                        StoryRow(stories: modelData.stories)
                        PromotionRow(promotions: modelData.promotions)
                        CardView()
                        FeatureRow(features: modelData.features)
                        
                        DiscountRow(discounts: modelData.recommended, text: "Рекомендуем")
                        DiscountRow(discounts: modelData.sweetMoods, text: "Сладкое настроение")
                        DiscountRow(discounts: modelData.shahlics, text: "Шашлыки на Ура")
                        
                        SpecialRow(specials: modelData.special, text: "Специально для вас")
                        
                        DiscountRow(discounts: modelData.forKids, text: "Для Детей")
                        DiscountRow(discounts: modelData.tastesOfSummer, text: "Вкусы лета")
                    }
                    LazyVStack(spacing: 20) {
                        VideoRow(videos: modelData.videos, text: "Видео")
                        
                        DiscountRow(discounts: modelData.weLoveFresh, text: "We Love Fresh")
                        DiscountRow(discounts: modelData.cleannessAndBeauty, text: "Чистота и красота")
                        
                        BrandRow(brands: modelData.brands, text: "Бренды")
                        
                        DiscountRow(discounts: modelData.careOfChildren, text: "С заботой о детях")
                        DiscountRow(discounts: modelData.novelties, text: "Новинки SPAR")
                    }
                }
                .toolbar {
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.black, lineWidth: 0.5)
                        Button {
                            print("Location")
                        } label: {
                            Image(systemName: "location.north.circle.fill")
                                .foregroundColor(.red)
                            
                            Text("Москва, Москва и Московская область")
                                .foregroundColor(.black)
                                .font(.system(size: 13))
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(height: 30)
                    }
                    
                    Button {
                        print("Menu")
                    } label: {
                        Label("User Profile", systemImage: "line.3.horizontal")
                    }
                    .foregroundColor(.green)
                }
            }
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
