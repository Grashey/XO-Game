//
//  Invoker.swift
//  XO-game
//
//  Created by Aleksandr Fetisov on 11.01.2020.
//  Copyright © 2020 plasmon. All rights reserved.
//

import Foundation

class Invoker {
    
    public var turnsCount = 1
    public var overrideMark = false
    private let reciever = Reciever()
    
    private var commands: [GameboardPosition: MarkView] = [:]
    
 
    
}
