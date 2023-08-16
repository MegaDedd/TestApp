//
//  StaticPromo.swift
//  TestApp
//
//  Created by Константин on 15.08.2023.
//

import SwiftUI

struct StaticPromo: View {
    
    var image: String = "staticPromo"
    
    var body: some View {
        Image(image)
            .resizable()
            .frame(maxWidth: screen.width * 0.95, maxHeight: 130)
            .cornerRadius(20)
            .shadow(radius: 3)
    }
}

struct StaticPromo_Previews: PreviewProvider {
    static var previews: some View {
        StaticPromo()
    }
}
