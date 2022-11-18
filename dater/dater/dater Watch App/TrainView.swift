//
//  TrainView.swift
//  dater Watch App
//
//  Created by dongjoon min on 2022/11/18.
//

import SwiftUI

struct TrainView: View {
    
    var longerTrain: Bool
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "train.side.rear.car")
                Image(systemName: "train.side.middle.car")
                    .opacity(longerTrain ? 1 : 0)
                Image(systemName: "train.side.front.car")
            }
            Divider()
        }
    }
}

struct TrainView_Previews: PreviewProvider {
    static var previews: some View {
        TrainView(longerTrain: true)
        TrainView(longerTrain: false)
    }
}
