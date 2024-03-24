//
//  CryptoItem.swift
//  Assignment2
//
//  Created by Michael Medlin on 3/23/24.
//

import SwiftUI

struct CryptoItem: View {
    var item: ConvertModel<CryptoItemModel>
    var bitcoinVal : Double
    
    var body: some View {
        HStack {
            Text(item.cardContent.cryptoName)
            Spacer()
            Text("\(item.cardContent.multiplier * bitcoinVal, specifier: "%.1f")")
        }
    }
}

#Preview {
    CryptoItem(item: ConvertModel(cardContent: CryptoItemModel(cryptoName: "US Dollar", cryptoCode: "USD", multiplier: 23450.0)), bitcoinVal: 2.0)
}
