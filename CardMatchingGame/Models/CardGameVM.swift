//
//  CardGameVM.swift
//  CardMatchingGame
//
//  Created by Jalal Hemidach on 12/8/25.
//

import Foundation
import Combine

@Observable class CardGameVM {
    static var emojis = ["🧪","🔭", "🥊","🔬", "🦖","🧬","🏂","🔥","🦕","🤬","🥶", "🤮"]
    private static func createCardModel() -> CardModel<String> {
        return CardModel(pairOfCardsCount: emojis.count) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            }
            return "⁉️"
        }
    }
    
    private var cardModel = createCardModel()
    var cards: Array<CardModel<String>.Card> {
        return cardModel.cards
    }
    
    func selectCard(card: CardModel<String>.Card) {
        cardModel.selectCard(card: card)
    }
    
    func shuffle() {
        cardModel.shuffle()
    }
}
