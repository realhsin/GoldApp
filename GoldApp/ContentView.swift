//
//  ContentView.swift
//  GoldApp
//
//  Created by حسين الحمري on 21/05/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.04, green: 0.04, blue: 0.06)
                .ignoresSafeArea()

            VStack(spacing: 24) {
                Text("Gold Price")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                GoldPriceCard(karat: "24K", price: "$2,200 / oz")
                    .padding(.horizontal)
            }
            .padding(.vertical, 40)
        }
    }
}

#Preview {
    ContentView()
}
