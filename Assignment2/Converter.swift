//
// ContentView.swift : Assignment2
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct Converter: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                CurrencyItem()
                CurrencyItem()
                CurrencyItem()
                CurrencyItem()
                CurrencyItem()
                CurrencyItem()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Converter()
    }
}
