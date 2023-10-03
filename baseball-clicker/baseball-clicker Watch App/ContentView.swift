
import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: BaseballClicker
    
    var body: some View {
        VStack {
            LazyVGrid(columns: [GridItem(), GridItem()]) {
                CircleButton(color: .blue, action: viewModel.addStrike, text: "strike")
                CircleButton(color: .green, action: viewModel.addBall, text: "ball")
                CircleButton(color: .red, action: viewModel.addOut, text: "out")
                ZStack {
                    Circle()
                        .fill(.black)
                        .overlay(
                            Circle()
                                .stroke(.white, lineWidth: 4)
                        )
                    Text("\(viewModel.ball)  - \(viewModel.strike)\n\(viewModel.out) out")
                }
                .onLongPressGesture(
                    perform: viewModel.reset
                )
                
            }
            
        }
        .navigationTitle("Baseball Clicker")
    }
}

struct CircleButton: View {
    var color: Color
    var action: () -> Void
    var text: String
    
    var body: some View {
        ZStack {
            Circle()
                .fill(.black)
                .overlay(
                    Circle()
                        .stroke(color, lineWidth: 4)
                )
            Text(text)
        }
        .onTapGesture(count: 1) {
            action()
        }
    }
}


#Preview {
    ContentView(viewModel: BaseballClicker())
}
