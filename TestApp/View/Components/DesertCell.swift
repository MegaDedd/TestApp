//
//  DesertCell.swift
//  TestApp
//
//  Created by Константин on 15.08.2023.
//

import SwiftUI

struct DesertCell: View {
    
    var image: String = "dessert"
    
    var body: some View {
        Image(image)
            .resizable()
            .frame(maxWidth: screen.width * 0.40, maxHeight: 190)
            .cornerRadius(20)    }
}

struct DesertCell_Previews: PreviewProvider {
    static var previews: some View {
        DesertCell()
    }
}
