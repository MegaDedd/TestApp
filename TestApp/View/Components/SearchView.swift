//
//  SearchView.swift
//  TestApp
//
//  Created by Константин on 16.08.2023.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchByRegion: String
    
    var body: some View {
        VStack {
            HStack {
                TextField("Search...", text: $searchByRegion)
                    .padding(.leading, 30)
                    .frame(maxWidth: screen.width * 2, maxHeight: 45)
                    .disableAutocorrection(false)
                    .overlay(
                    Image(systemName: "bolt")
                        .padding(.leading, 8)
                        .foregroundColor(.red)
                    ,alignment: .leading
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .strokeBorder(lineWidth: 1)
                            .foregroundColor(.gray)
                    )
                    .overlay (
                        Image(systemName: "xmark.circle.fill")
                            .padding(.trailing, 8)
                            .opacity(searchByRegion.isEmpty ? 0 : 1.0)
                            .onTapGesture {
                                searchByRegion = ""
                            }
                        , alignment: .trailing
                    )
                
                
                Button {
                    //
                } label: {
                    Image(systemName: "list.dash")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.green)
                }
            }
            .padding(.horizontal, 18)
            
        }
    }
}

