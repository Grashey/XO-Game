//
//  PlayerState.swift
//  XO-game
//
//  Created by Aleksandr Fetisov on 01.01.2020.
//  Copyright © 2020 plasmon. All rights reserved.
//

import Foundation

public protocol PlayerState {
    
    func randomPosition() -> GameboardPosition
    
    func placeRandom()
}
