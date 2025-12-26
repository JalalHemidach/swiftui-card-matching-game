//
//  CardGameMainView.swift
//  CardMatchingGame
//
//  Created by Jalal Hemidach on 12/8/25.
//

import SwiftUI

struct CardGameMainView: View {
    var cardGameVM: CardGameVM

    var body: some View {

        ScrollView(.vertical, showsIndicators: true) {
            cards
                .animation(.default, value: cardGameVM.cards)
        }
        .padding()
        cardShuffle
    }

    var cards: some View {
        LazyVGrid(
            columns: [
                GridItem(.adaptive(minimum: 85), spacing: 0)
            ],
            spacing: 0
        ) {
            ForEach(cardGameVM.cards) { card in
                CardView(card)
                    .aspectRatio(2 / 3, contentMode: .fit)
                    .padding(4)
                    .onTapGesture {
                        cardGameVM.selectCard(card: card)
                    }
            }
        }
    }

    // MARK: - Intents
    var cardShuffle: some View {
        Button {
            cardGameVM.shuffle()
        } label: {
            Image(systemName: "shuffle.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
        }
    }
}

#Preview {
    CardGameMainView(cardGameVM: CardGameVM())
}
