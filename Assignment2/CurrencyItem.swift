//
//  CurrencyItem.swift
//  Assignment2
//
//  Created by John Sims on 3/23/24.
//

//CurrencyItem
import SwiftUI

struct CurrencyItem: View {
    
    var card : ConvertModel<CurrencyItemModel>
    
    var body: some View {
        if card.isFront {
            FrontCurrencyItem(card: card.cardContent)
        } else {
            BackCurrencyItem(card: card.cardContent)
        }
    }
}

struct CurrencyItem_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyItem(card: ConvertModel(cardContent: CurrencyItemModel(currencyName: "", currentyCode: "", countryFlag: "", multiplier: 1)))
    }
}

struct FrontCurrencyItem: View {
    
    var card: CurrencyItemModel
    
    var body: some View {
        VStack {
            HStack {
                Text(card.countryFlag)
                    .font(.system(size: 64))
                Spacer()
            }
            HStack {
                Spacer()
                Text(card.currentyCode)
                    .foregroundColor(.white)
                    .font(.system(size: 32))

            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.black)
    }
}

struct BackCurrencyItem: View {
    
    var card: CurrencyItemModel
    
    var body: some View {
        VStack {
            HStack {
                Text(card.currencyName)
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                Spacer()
            }
            HStack {
                Spacer()
                Text(String(card.multiplier))
                    .foregroundColor(.white)
                    .font(.system(size: 24))
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.black)
    }
}
