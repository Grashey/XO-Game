//
//  Reciever.swift
//  XO-game
//
//  Created by Aleksandr Fetisov on 11.01.2020.
//  Copyright © 2020 plasmon. All rights reserved.
//

import Foundation

class Reciever {
    
    func placeMark(gameboard: Gameboard, gameboardView: GameboardView, gameViewController: GameViewController, isComp: Bool) {
        if let playerInputState = gameViewController.currentState as? PlayerInputState {
           let player = playerInputState.player.next
           gameViewController.currentState = PlayerInputState(player: playerInputState.player.next,
                                                markViewPrototype: player.markViewPrototype,
                                                gameViewController: gameViewController,
                                                gameboard: gameboard,
                                                gameboardView: gameboardView)
           if isComp {
               let comp = CompPlayerState(gameboardView: gameboardView)
               if player == Player.second {
                   comp.placeRandom()
               }
           }
       }
    }
    
}
