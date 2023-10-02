
import SwiftUI


class BaseballUmp: ObservableObject {
    @Published private var model = createUmp()
    
    private static func createUmp() -> Ump {
        return Ump(0, 0, 0, 0)
    }
    
    var strike: Int {
        return model.strike
    }
    
    func addStrike() {
        model.addStrike()
    }
    
}
