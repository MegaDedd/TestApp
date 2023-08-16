//
//  StroriesCell.swift
//  TestApp
//
//  Created by Константин on 15.08.2023.
//

import SwiftUI

struct StoriesCell: View {
    
    var image: String
    var title: String
    
    var body: some View {
        
        VStack(spacing: 4) {
            Image(image)
                .resizable()
                .frame(width: 81, height: 81)
                .cornerRadius(50)
                .overlay (
                    Circle()
                        .strokeBorder(lineWidth: 2.5)
                        .foregroundColor(.green)
                        .frame(width: 90, height: 90)
                )
            
            Text(title)
                .frame(width: 100)
                .multilineTextAlignment(.center)
                .lineLimit(2)
        }
    }
}

struct StoriesCell_Previews: PreviewProvider {
    static var previews: some View {
        StoriesCell(image: "dessert", title: "Что пошло так")
    }
}
