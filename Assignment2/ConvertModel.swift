//
//  ConvertModel.swift
//  Assignment2
//
//  Created by John Sims on 3/23/24.
//

//ConvertModel
import Foundation

struct ConvertModel<SomeType> : Identifiable {
    let id = UUID()
    var isFront : Bool = true
    let cardContent : SomeType
}

struct CurrencyItemModel {
    let currencyName : String
    let currentyCode : String
    let countryFlag : String
    let multiplier : Double
}

struct CryptoItemModel {
    let cryptoName : String
    let multiplier : Double
}
