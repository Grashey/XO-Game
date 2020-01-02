//
//  CompPlayerState.swift
//  XO-game
//
//  Created by Aleksandr Fetisov on 02.01.2020.
//  Copyright © 2020 plasmon. All rights reserved.
//

import Foundation

public class CompPlayerState: PlayerState {
    
    private(set) weak var gameboard: Gameboard?
    private(set) weak var gameboardView: GameboardView?
    
    init(gameboard: Gameboard, gameboardView: GameboardView) {
        self.gameboard = gameboard
        self.gameboardView = gameboardView
    }
    
    public func randomPosition() -> GameboardPosition{
        let x = Int.random(in: 0..<GameboardSize.columns)
        let y = Int.random(in: 0..<GameboardSize.rows)
        return GameboardPosition(column: x, row: y)
    }

    public func placeRandom(){
        let position = randomPosition()
        if gameboardView?.canPlaceMarkView(at: position) == true {
            gameboardView?.onSelectPosition?(position)
        } else {
            placeRandom()
        }
    }
}
