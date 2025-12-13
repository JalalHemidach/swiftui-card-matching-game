//
//  CardView.swift
//  CardMatchingGame
//
//  Created by Jalal Hemidach on 12/11/25.
//

import Foundation
import SwiftUI

struct CardView: View {
    typealias Card = CardModel<String>.Card
    let card: Card
    
    init(_ card: Card) {
        self.card = card
    }
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            
            if card.isFaceUp {
                base.foregroundStyle(.white)
                base.strokeBorder(lineWidth: 2)
                Text(card.content)
                    .font(.system(size: 150))
                    .minimumScaleFactor(0.01)
                    .aspectRatio(1, contentMode: .fit)
            } else {
                base.fill()
            }
        }
        .foregroundStyle(.pink)
    }
}

#Preview {
    CardView(CardView.Card(id: "0", content: "🤬"))
}
