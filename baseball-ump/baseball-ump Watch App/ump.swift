
import Foundation

struct Ump {
    var out: Int
    var strike: Int
    var ball: Int
    var inning: Int
    
    init(_ out: Int, _ strike: Int, _ ball: Int, _ inning: Int) {
        self.out = out
        self.strike = strike
        self.ball = ball
        self.inning = ball
    }
    
    mutating func addStrike() {
        strike += 1
    }
    
}
