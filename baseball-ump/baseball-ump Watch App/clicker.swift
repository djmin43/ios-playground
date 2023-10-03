import Foundation

struct Clicker {
    var out: Int
    var strike: Int
    var ball: Int
    var inning: Double
    
    init(out: Int, strike: Int, ball: Int, inning: Double) {
        self.out = out
        self.strike = strike
        self.ball = ball
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
    
}
