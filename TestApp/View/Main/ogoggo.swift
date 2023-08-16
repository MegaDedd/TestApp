//
//  ogoggo.swift
//  TestApp
//
//  Created by Константин on 15.08.2023.
//

import SwiftUI

struct LazyVGridView: View {
    

    
    var columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    
    var body: some View {
        
            
            ScrollView {
                
                Rectangle()
                    .fill(.orange)
                    .frame(height: 300)
                
                LazyVGrid(columns: columns,
                          alignment: .center,
                          spacing: 6,
                          pinnedViews: [.sectionHeaders]) {
                    Section {
                        ForEach(0..<9) { index in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 1")
                            .font(.largeTitle)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.purple)
                            .foregroundColor(.white)
                    }
                    Section {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 2")
                            .font(.largeTitle)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.blue)
                            .foregroundColor(.white)
                    }
            }
        }
    }
}

struct InitsAndEnums_Previews: PreviewProvider {
    static var previews: some View {
            LazyVGridView()
        }
    }

