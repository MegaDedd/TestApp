//
//  PromotionCell.swift
//  TestApp
//
//  Created by Константин on 15.08.2023.
//

import SwiftUI

struct PromotionCell: View {
    
    var image: String
    
    var body: some View {
        
        Image(image)
            .resizable()
            .frame(maxWidth: screen.width * 0.8, maxHeight: 200)
            .cornerRadius(20)
        
    }
}

struct PromotionCell_Previews: PreviewProvider {
    static var previews: some View {
        PromotionCell(image: "promo")
    }
}
