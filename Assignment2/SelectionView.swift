//
//  SelectionView.swift
//  Assignment2
//
//  Created by Michael Medlin on 3/23/24.
//

import SwiftUI

struct SelectionView: View {
    var body: some View {
        NavigationStack {
            List{
                
                NavigationLink(destination: Converter()) {
                    Text("World Currency Exchange")
                }
                
                NavigationLink(destination: CryptoConverter()) {
                    Text("Crypto Exchange")
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Conversion App")
            
            
        }
    }
}

#Preview {
    SelectionView()
}
