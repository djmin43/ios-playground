
import SwiftUI


// view model is 'class', meaning it's a reference type. it's also a gate keeper. it really shouldn't hold any value. just like spring, it injects counter as dependency
class SingleCounter: ObservableObject {
    @Published private var model: Counter = createCounterModel()
    
    private static func createCounterModel() -> Counter<Int> {
        return Counter(count: 0)
    }
    
    var count: Int {
        model.count
    }
    
    func add() {
        model.add()
    }
    
    func subtract() {
        model.subtract()
    }
    
    func reset() {
        model.reset()
    }
    
}
