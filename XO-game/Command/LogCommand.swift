//
//  LogCommand.swift
//  XO-game
//
//  Created by Aleksandr Fetisov on 30.12.2019.
//  Copyright © 2019 plasmon. All rights reserved.
//

import Foundation

public enum LogAction {
    
    case playerInput(player: Player, position: GameboardPosition)
    
    case gameFinished(winner: Player?)
    
    case restartGame
    
    static public func log(_ action: LogAction) {
        let command = LogCommand(action: action)
        LoggerInvoker.shared.addLogCommand(command)
    }
}

// MARK: - Command

final class LogCommand {
    
    let action: LogAction
    
    init(action: LogAction) {
        self.action = action
    }
    
    var logMessage: String {
        switch self.action {
        case .playerInput(let player, let position):
            return "\(player) placed mark at \(position)"
        case .gameFinished(let winner):
            if let winner = winner {
                return "\(winner) win game"
            } else {
                return "game finished with no winner"
            }
        case .restartGame:
            return "game restarted"
        }
    }
}
