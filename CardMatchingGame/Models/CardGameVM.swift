//
//  CardGameVM.swift
//  CardMatchingGame
//
//  Created by Jalal Hemidach on 12/8/25.
//

import Foundation
import Combine

@Observable class CardGameVM {
    static var emojis = ["🧪","🔭", "🥊","🔬", "💾","🧬","⛔️","🔥","🚫","🤬","🥶", "🤮"]
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

    
    func offsetPairOfCardsCount(by offset: Int) {
        cardModel.pairOfCardsCount += offset
    }
    
    var pairOfCardsCount: Int {
        return cardModel.pairOfCardsCount
    }
    
    func flip(card: inout CardModel<String>.Card) {
        cardModel.flip(card: &card)
    }
    
    func shuffle() {
        cardModel.shuffle()
    }
}
