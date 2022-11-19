//
//  TrainCars.swift
//  dater Watch App
//
//  Created by dongjoon min on 2022/11/19.
//

import SwiftUI

struct DefaultSpacing: View {
    @ScaledMetric var trainCarSpace = 0
    
    var body: some View {
        Text("Default Spacing")
        HStack(spacing: trainCarSpace) {
            TrainCar(.rear)
            TrainCar(.middle)
            TrainCar(.front)
        }
        TrainTrack()
    }
}

struct DefaultSpacing_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            DefaultSpacing()
        }
    }
}
