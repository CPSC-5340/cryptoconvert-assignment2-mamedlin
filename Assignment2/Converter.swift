//
//  Converter.swift
//  Assignment2
//
//  Created by Michael Medlin on 3/23/24.
//

import SwiftUI

struct Converter: View {
    
    @ObservedObject var viewModel = CurrencyConverterViewModel()
    
    var body: some View {
        ScrollView {
            Text("1 USD Exchange Rate")
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                ForEach(viewModel.listOfCards) { card in
                    CurrencyItem(card: card)
                        .onTapGesture {
                            viewModel.flip(card: card)
                        }
                        
                }
            }
        }
        .onAppear {
            viewModel.fetchCards()
        }
        .padding(.top, 50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews : some View {
        Converter()
    }
}
