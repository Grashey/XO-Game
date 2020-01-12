//
//  GameState.swift
//  XO-game
//
//  Created by Aleksandr Fetisov on 28.12.2019.
//  Copyright © 2019 plasmon. All rights reserved.
//

import Foundation

public protocol GameState {
    
    var isCompleted: Bool { get }
    
    func begin()
    
    func addMark(at position: GameboardPosition)
}
