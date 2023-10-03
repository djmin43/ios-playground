//
//  BaseballClicker.swift
//  baseball-clicker Watch App
//
//  Created by dongjoon min on 2023/10/03.
//

import SwiftUI

class BaseballClicker: ObservableObject {
    
    private static func createClicker() -> Clicker {
        return Clicker(strike: 0, ball: 0, out: 0, inning: 1)
    }
    
    @Published var model = createClicker()
    
    var strike: Int { model.strike }
    var ball: Int { model.ball }
    var out: Int { model.out }
    
    func addStrike() {
        model.addStrike()
    }
    
    func addBall() {
        model.addBall()
    }
    
    func addOut() {
        model.addOut()
    }
    
    func reset() {
        model.reset()
    }
    
}
