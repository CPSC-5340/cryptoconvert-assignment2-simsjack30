//
//  CryptoConverter.swift
//  Assignment2
//
//  Created by John Sims on 3/23/24.
//

import Foundation

import SwiftUI

struct CryptoConverter: View {
    @StateObject var viewModel = CryptoConverterViewModel()
    @State private var userInputString = ""

    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter an amount", text: $userInputString)
                    .keyboardType(.decimalPad)
                    .padding()
                    .onChange(of: userInputString) { newValue in
                        viewModel.userInput = Double(newValue) ?? 0
                    }
                
                List(viewModel.listOfCards) { crypto in
                    HStack {
                        Text(crypto.cardContent.cryptoName)
                        Spacer()
                        Text("\(viewModel.userInput * crypto.cardContent.multiplier, specifier: "%.1f")")
                    }
                }
            }
            .onTapGesture {
                self.dismissKeyboard()
            }
        }
    }
    private func dismissKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

