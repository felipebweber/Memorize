//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Felipe Weber on 08/07/20.
//  Copyright © 2020 Felipe Weber. All rights reserved.
//

//import Foundation
import SwiftUI
//This model view (VM)
//1:15-closure

class EmojiMemoryGame: ObservableObject {
    //Todos podem ver mas só a classe pode modificar
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    //30 min - Lecture 3
    // para não ter que utilizar
    //objectWillChange.send(), em todos os lugares onde muda o estado (foi colocar @Published add funcionalidade)
    
    //1:22
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
//    só para mostrar como funciona
//    var objectWillChange: ObservableObjectPublisher
    
    // Acesso ao modelo
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    // funções que podem ser acessadas pelo mundo exterior
    func choose(card: MemoryGame<String>.Card) {
//        objectWillChange.send()
        model.choose(card: card)
    }
    
    func resetGame() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
