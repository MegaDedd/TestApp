//
//  HomeView.swift
//  TestApp
//
//  Created by Константин on 15.08.2023.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchable = ""
    
    let layout = [GridItem(.flexible(), spacing: 10)]
    
    
    var body: some View {
        
        VStack {
            
            SearchView(searchByRegion: $searchable)
            
            Divider()
                .padding(.bottom, 6)
            
            ScrollView(showsIndicators: false) {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 20) {
                        StoriesCell(image: "dessert", title: "Привелегии Мой Spar")
                        StoriesCell(image: "dessert", title: "Мы в соцсетях")
                        StoriesCell(image: "dessert", title: "3 рецепта коктейлей")
                        StoriesCell(image: "dessert", title: "Дегустация в SPAR")
                        StoriesCell(image: "dessert", title: "Новинки недели")
                        StoriesCell(image: "dessert", title: "Лучшее за неделю")
                    }
                    .padding(10)
                }
                .padding(.bottom)
                
                Spacer()
                
                VStack(spacing: 20) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: layout) {
                            ForEach(0..<5) { _ in
                                PromotionCell(image: "promo3")
                            }
                        }
                    }
                    
                    StaticPromo()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: layout) {
                            PromoMiniCell(color: "2", text: "Абонемент на кофе")
                            PromoMiniCell(color: "2", text: "Мои скидки")
                            PromoMiniCell(color: "3", text: "Карта в подарок")
                            PromoMiniCell(color: "4", text: "Доставим за 1 час")
                            
                        }
                    }
                    
                    
                    Section {
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: layout) {
                                ProductCell(image: "food", isPromo: .superPrice, price: 99.0)
                                ProductCell(image: "food", price: 99.0)
                                ProductCell(image: "food", isPromo: .hitPrice, price: 99.0)
                            
                            }
                            .padding(3)
                        }
                    } header: {
                        HStack {
                            Text("Рекомендуем")
                                .font(.title2).bold()
                            Spacer()
                        }
                    }
                    
                    Section {
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: layout) {
                                ProductCell(image: "food", price: 99.0)
                                ProductCell(image: "promoMini", price: 99.0)
                                ProductCell(image: "food", price: 99.0)
                            }
                            .padding(3)
                        }
                    } header: {
                        HStack {
                            Text("Cладкое настроение")
                                .font(.title2).bold()
                            Spacer()
                        }
                    }
                }
                .padding(.horizontal, 6)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}





