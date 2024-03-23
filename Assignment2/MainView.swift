//
//  MainView.swift
//  Assignment2
//
//  Created by John Sims on 3/23/24.
//

import Foundation
import SwiftUI

// MainView with navigation options
struct MainView: View {
    var body: some View {
        NavigationStack {
            List{
                NavigationLink("Go to Currency Converter", destination: Converter())
                NavigationLink("Go to Crypto Converter", destination: CryptoConverter())
            }
            .navigationTitle("Conversion App")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
