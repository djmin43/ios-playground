//
//  CardView.swift
//  scrumdinger
//
//  Created by dongjoon min on 2022/11/27.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        Text("hello")
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
    }
}
