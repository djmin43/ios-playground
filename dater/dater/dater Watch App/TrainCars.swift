//
//  TrainCars.swift
//  dater Watch App
//
//  Created by dongjoon min on 2022/11/19.
//

import SwiftUI

struct DefaultSpacing: View {
    var body: some View {
        Text("Default Spacing")
        HStack(spacing: 20) {
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
