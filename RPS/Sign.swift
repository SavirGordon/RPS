//
//  Sign.swift
//  RPS
//
//  Created by 4d on 12/19/22.
//

import Foundation

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .rock
    }
    else if sign == 1 {
        return .paper
    }
    else {
        return .scissors
    }
}


enum Sign {
    case rock
    case paper
    case scissors
    
    var emoji: String {
        switch self {
        case .rock:
            return "✊"
        case .paper:
            return "🖐"
        case .scissors:
            return "✌️"
        }
    }
    
    func checkWin(opponent: Sign) -> GameState{
        if self == .rock && opponent == .paper
        {
            return .lose
        }
        else if self == .paper && opponent == .scissors
        {
            return .lose
        }
        else if self == .scissors && opponent == .rock
        {
            return .lose
        }
        else if self == .rock && opponent == .scissors
        {
            return .win
        }
        else if self == .paper && opponent == .rock
        {
            return .win
        }
        else if self == .scissors && opponent == .paper
        {
            return .win
        }
        else
        {
            return .draw
        }
    }
}

enum GameState {
    case start
    case win
    case lose
    case draw
}
