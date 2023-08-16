//
//  RecommendCell.swift
//  TestApp
//
//  Created by Константин on 15.08.2023.
//

import SwiftUI

struct ProductCell: View {
    
    var image: String
    var isPromo: Offer?
    var price: Double?
    
    var body: some View {
        
        VStack {
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: screen.width * 0.85)
                .clipped()
            
            
            HStack {
                if price != nil {
                    Text(String(format: "%.2f", price!))
                        .font(.title3)
                        .foregroundColor(.black)
                        .bold()
                    Text("₽")
                        .font(.callout)
                        .bold()
                }
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Circle()
                        .frame(width: 50)
                        .foregroundColor(.green)
                        .overlay(
                            Image(systemName: "cart")
                                .foregroundColor(.white)
                        )
                }
            }
            .padding(.horizontal, 8)
            .padding(.bottom, 5)
    }
        .frame(width: screen.width * 0.45, height: screen.width * 0.65)
        .overlay(
            isPromo != nil ?
            Text(isPromo!.title)
                .padding(.leading, 46)
                .frame(width: 150, height: 20, alignment: .leading)
                .foregroundColor(.white)
                .background(Color.pink.opacity(0.4))
                .cornerRadius(20)
                .offset(x: -30)
                .font(.caption)
                .padding(.trailing, 50)
            : nil
            , alignment: .topLeading
        )
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 3)
    }
}

enum Offer {
    
    case superPrice
    case hitPrice
    
    var title: String {
        switch self {
            
        case .superPrice: return "Супер цена"
        case .hitPrice: return "Удар по ценам"
        }
    }
}



struct RecommendCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(image: "promoMini", isPromo: .hitPrice, price: 99.0)
    }
}


