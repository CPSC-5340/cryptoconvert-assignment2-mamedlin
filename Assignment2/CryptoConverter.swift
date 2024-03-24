//
//  CryptoConverter.swift
//  Assignment2
//
//  Created by Michael Medlin on 3/23/24.
//

import SwiftUI

struct CryptoConverter: View {
    
    @ObservedObject var viewModel = CryptoConverterViewModel()
    @State private var bitcoinAmount: String = "1"
    @State private var convertedBitcoinValue: Double = 1.0
    @FocusState private var isFocused: Bool
    
    var body: some View {
        NavigationStack{
            VStack {
                HStack
                {
                    Text("Bitcoin: ")
                    TextField("Amount", text: $bitcoinAmount)
                        .keyboardType(.decimalPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .onChange(of: bitcoinAmount, perform: { value in
                            if let bitcoinValue = Double(value) {
                                convertedBitcoinValue = bitcoinValue
                            }
                        })
                        .focused($isFocused)
                        
                }
                .padding(.top, 40)
                .padding()
                
                
                    

                List {

                    ForEach(viewModel.listOfItems) { item in
                            CryptoItem(item: item, bitcoinVal: convertedBitcoinValue)
                    }
                    
                }
                .listStyle(GroupedListStyle())
                    
            }
            .onAppear() {
                viewModel.fetchCards()
            }
            .onTapGesture {
                isFocused = false
            }
        }
    }
}
    
struct CryptoConverter_Previews: PreviewProvider {
    static var previews: some View {
        CryptoConverter()
    }
}
    
