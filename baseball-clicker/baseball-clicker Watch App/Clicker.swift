//
//  Clicker.swift
//  baseball-clicker Watch App
//
//  Created by dongjoon min on 2023/10/03.
//

import Foundation

struct Clicker {
    var strike: Int
    var ball: Int
    var out: Int
    var inning: Int
    
    init(strike: Int, ball: Int, out: Int, inning: Int) {
        self.strike = strike
        self.ball = ball
        self.out = out
        self.inning = inning
    }
    
    mutating func addStrike() {
        if (strike < 2) {
            strike += 1
            return
        }
        strike = 0
    }
    
    mutating func addBall() {
        if (ball < 3) {
            ball += 1
            return
        }
        ball = 0
    }
    
    mutating func addOut() {
        if (out < 2) {
            out += 1
            return
        }
        out = 0
    }
    
    mutating func reset() {
        strike = 0
        ball = 0
        out = 0
    }
    
}
