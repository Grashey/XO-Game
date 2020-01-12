//
//  Command.swift
//  XO-game
//
//  Created by Aleksandr Fetisov on 11.01.2020.
//  Copyright © 2020 plasmon. All rights reserved.
//

import Foundation

class Command {
    
    func execute(position: GameboardPosition, playerInputState: PlayerInputState){
        playerInputState.gameboard?.setPlayer(playerInputState.player, at: position)
        playerInputState.gameboardView?.placeMarkView(playerInputState.markViewPrototype.copy(), at: position)
    }
}
