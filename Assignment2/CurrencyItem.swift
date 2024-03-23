//
//  CurrencyItem.swift
//  Assignment2
//
//  Created by John Sims on 3/23/24.
//

import SwiftUI

struct CurrencyItem: View {
    
    @State var isFront = true
    
    var body: some View {
        ZStack {
            if isFront {
                FrontCurrencyItem()
            } else {
                BackCurrencyItem()
            }
        }.onTapGesture {
            isFront.toggle()
        }
    }
}

struct CurrencyItem_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyItem()
    }
}

struct FrontCurrencyItem: View {
    var body: some View {
        VStack {
            HStack {
                Text("🇺🇸")
                Spacer()
            }
            HStack {
                Spacer()
                Text("USD")
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.blue)
    }
}

struct BackCurrencyItem: View {
    var body: some View {
        VStack {
            HStack {
                Text("US Dollar")
                Spacer()
            }
            HStack {
                Spacer()
                Text(String(1))
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.blue)
    }
}
