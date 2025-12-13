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

        LazyVGrid(columns: [
            GridItem(.adaptive(minimum: 85), spacing: 0)], spacing: 0) {
            ForEach(0..<cardGameVM.pairOfCardsCount, id: \.self) { index in
                var card = cardGameVM.cards[index]
                CardView(card)
                    .aspectRatio(2 / 3, contentMode: .fit)
                    .padding(4)
                    .onTapGesture {
                        cardGameVM.flip(card: &card)
                    }
//                    .onTapGesture {
//                        card.flip()
//                        print(
//                            "Card ID: \(card.content) - Face Up: \(card.isFaceUp)"
//                        )
//                    }
            }
        }
        .padding()
        Spacer()
        VStack {
            HStack {
                cardRemover
                Spacer()
                cardShuffle
                Spacer()
                cardAdder
            }
        }
        .padding()
    }

    func cardCountManager(by offset: Int, symbol: String) -> some View {
        Button {
            cardGameVM.offsetPairOfCardsCount(by: offset)
        } label: {
            Image(systemName: symbol)
                .resizable()
                .frame(width: 50, height: 50)
        }
        .disabled(
            cardGameVM.pairOfCardsCount + offset < 1
                || cardGameVM.pairOfCardsCount + offset
                    > CardGameVM.emojis.count
        )
    }

    var cardRemover: some View {
        cardCountManager(by: -1, symbol: "rectangle.stack.badge.minus.fill")
    }

    var cardAdder: some View {
        cardCountManager(by: 1, symbol: "rectangle.stack.badge.plus.fill")
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
