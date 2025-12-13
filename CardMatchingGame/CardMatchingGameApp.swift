//
//  CardMatchingGameApp.swift
//  CardMatchingGame
//
//  Created by Jalal Hemidach on 12/8/25.
//

import SwiftUI

@main
struct CardMatchingGameApp: App {
    private var cardGameVM = CardGameVM()
    
    var body: some Scene {
        WindowGroup {
            CardGameMainView(cardGameVM: cardGameVM)
        }
    }
}
