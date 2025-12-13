//
//  CardModel.swift
//  CardMatchingGame
//
//  Created by Jalal Hemidach on 12/11/25.
//

struct CardModel<CardContent> {
    private(set) var cards: Array<Card>
    var pairOfCardsCount: Int = 1
    var isFaceUp: Bool = true
    
    init(pairOfCardsCount: Int, content: (Int) -> CardContent) {
        cards = []
        for pairIndex in 0..<max(2, pairOfCardsCount) {
            let content = content(pairIndex)
            cards.append(Card(id: "\(pairIndex * 2)", content: content))
            cards.append(Card(id: "\(pairIndex * 2 + 1)", content: content))
        }
    }
    
    mutating func flip(card: inout Card) {
        isFaceUp.toggle()
        card.isFaceUp.toggle()
    }
    
    mutating func shuffle() {
        cards.shuffle()
    }
    
    
    struct Card: Identifiable {
        var id: String
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
    }
}
