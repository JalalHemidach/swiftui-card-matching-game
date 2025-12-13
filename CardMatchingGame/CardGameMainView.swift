//
//  ContentView.swift
//  CardMatchingGame
//
//  Created by Jalal Hemidach on 12/8/25.
//

import SwiftUI

struct CardGameMainView: View {
    var body: some View {
        VStack {
            CardView()
        }
        .padding()
    }
}

struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.white)
            RoundedRectangle(cornerRadius: 12)
                .strokeBorder(lineWidth: 2)
            Text("🏂")
                .font(.largeTitle)
        }
    }
}

#Preview {
    CardGameMainView()
}
