
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
                        .strokeBorder(.white, lineWidth: 2)
                        .fill(.clear)
                    Text("\(viewModel.ball)  - \(viewModel.strike)\n\(viewModel.out) out")
                }
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
                .strokeBorder(color, lineWidth: 2)
                .fill(.clear)
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
