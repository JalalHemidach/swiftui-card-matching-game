//
//  CardModel.swift
//  CardMatchingGame
//
//  Created by Jalal Hemidach on 12/11/25.
//

struct CardModel<CardContent: Equatable> {
    private(set) var cards: Array<Card>
    
    init(pairOfCardsCount: Int, content: (Int) -> CardContent) {
        cards = []
        for pairIndex in 0..<max(2, pairOfCardsCount) {
            let content = content(pairIndex)
            cards.append(Card(id: "\(pairIndex + 1)a", content: content))
            cards.append(Card(id: "\(pairIndex + 1)b", content: content))
        }
    }
    
    private var indexOfOneAndOnlyFaceUpCard: Int? {
        get {
            return cards.indices.filter { index in cards[index].isFaceUp }.only
        }
        set {
            cards.indices.forEach {cards[$0].isFaceUp = (newValue == $0) }
        }
    }
    
    mutating func selectCard(card: Card) {
        guard let selectedCardIndex = cards.firstIndex(where: { $0.id == card.id }) else { return }
        
        //Check if the selected card is not flipped face up and not matched
        if !card.isFaceUp && !card.isMatched {
            //Check if we have a flipped up a card previously and this is the second one to be so
            if let potentialMatchIndex = indexOfOneAndOnlyFaceUpCard {
                //check if the two cards are a match
                if cards[selectedCardIndex].content == cards[potentialMatchIndex].content {
                    //We have a match! We set both cards to matched
                    cards[selectedCardIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                }
                //FIXME: - Deal with the matched cards
            } else {
                //Storing the indexOfOneAndOnlyFaceUpCard
                indexOfOneAndOnlyFaceUpCard = selectedCardIndex
            }
            //Flipping the selected card face up
            cards[selectedCardIndex].isFaceUp = true
        }
    }
    
    mutating func shuffle() {
        cards.shuffle()
    }
    
    struct Card: Identifiable, Equatable {
        var id: String
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}

extension Array {
    var only: Element? {
        return count == 1 ? first : nil
    }
}
