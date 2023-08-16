//
//  PromoMini.swift
//  TestApp
//
//  Created by Константин on 15.08.2023.
//

import SwiftUI

struct PromoMiniCell: View {
    
    let color: String
    var text: String
    
    var body: some View {
        
        ZStack {
            
            Color(color)
                        
            VStack(alignment: .center) {
                Text(text)
                    .foregroundColor(.black).bold()
                    .font(.headline)
                    .lineLimit(3)
                
                Spacer()
            }
            .padding(10)
        }
        .frame(width: 130, height: 160)
        .cornerRadius(20)
    }
}

struct PromoMini_Previews: PreviewProvider {
    static var previews: some View {
        PromoMiniCell(color: "2", text: "Абонемент на кофе")
    }
}
