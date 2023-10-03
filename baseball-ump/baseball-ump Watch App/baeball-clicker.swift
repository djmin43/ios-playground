import SwiftUI


class BaseballClicker: ObservableObject {
    @Published private var model = createClicker()
    
    private static func createClicker() -> Clicker {
        return Clicker(out: 0, strike: 0, ball: 0, inning: 1)
    }
    
    var strike: Int { model.strike }
    var ball: Int { model.ball }
    var out: Int { model.out }
    var inning: String {
        if (getFirstDecimalPlace(model.inning) == 5) {
            return "\(Int(model.inning)) bot"
        }
        return "\(Int(model.inning)) top"
        
    }
    
    func addStrike() { model.addStrike() }
    func addBall() { model.addBall() }
    func addOut() { model.addOut() }
    
}

func getFirstDecimalPlace(_ value: Double) -> Int {
    let decimalPart = value - Double(Int(value))
    let firstDecimalPlace = Int(decimalPart * 10)
    return firstDecimalPlace
}
