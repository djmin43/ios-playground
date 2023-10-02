
import Foundation

struct Ump {
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
        if (out == 2 && strike == 2) {
            resetAll()
            inning += 0.5
            return
        }
        if (strike < 2) {
            strike += 1
            return
        }
        out += 1
        resetBallAndStrike()
    }
    
    mutating func addBall() {
        if (ball < 3) {
            ball += 1
            return
        }
        resetBallAndStrike()
    }
    
    private mutating func resetBallAndStrike() {
        strike = 0
        ball = 0
    }
    
    private mutating func resetAll() {
        strike = 0
        ball = 0
        out = 0
    }
    
}
