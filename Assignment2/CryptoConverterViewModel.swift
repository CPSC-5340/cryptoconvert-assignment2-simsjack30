//
//  CryptoConverterViewModel.swift
//  Assignment2
//
//  Created by John Sims on 3/23/24.
//

import Foundation

class CryptoConverterViewModel: ObservableObject {
    @Published private(set) var listOfCards = [ConvertModel<CryptoItemModel>]()
    @Published var userInput: Double = 1

    init() {
        fetchCards()
    }

    func fetchCards() {
        self.listOfCards = [
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "Bitcoin", multiplier: 64905)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "Ethereum", multiplier: 3379.74)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "Dogecoin", multiplier: 0.17)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "Dash", multiplier: 36.19)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "NEO", multiplier: 14.79)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "XRP", multiplier: 0.62))
        ]
    }
}

