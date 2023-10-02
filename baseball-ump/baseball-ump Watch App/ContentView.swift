
import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: BaseballUmp
    
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                Circle()
                    .foregroundColor(.blue)
                Text("tap")
                    .font(.title2)
            }
            .onTapGesture(count: 2) {
                viewModel.addBall()
            }
            .onTapGesture(count: 1) {
                viewModel.addStrike()
            }
            VStack {
                Text("inning: \(viewModel.inning)")
                HStack{
                    Text("\(viewModel.ball) - \(viewModel.strike)")
                    Text("out: \(viewModel.out)")
                }
            }
        }
    }
}


#Preview {
    ContentView(viewModel: BaseballUmp())
}
