//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Felipe Weber on 08/07/20.
//  Copyright © 2020 Felipe Weber. All rights reserved.
//

//import Foundation
import SwiftUI

//1:15-closure

class EmojiMemoryGame {
    //Todos podem ver mas só a classe pode modificar
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    
    //1:22
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // Acesso ao modelo
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    // funções que podem ser acessadas pelo mundo exterior
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
