
import SwiftUI

struct ContentView: View {
    var emojis = ["😇","👀","🐰","☃️", "🍊", "🦊", "🐦", "🍄", "🪺", "🥥", "🍉", "🏌️‍♂️", "⛳️", "🚜", "🎪", "🎮", "🧼", "🧺", "🧔‍♂️", "👾", "🥷", "🧜‍♀️", "🧚‍♂️", "🙇‍♀️"]
    @State var emojiCount = 6

    var body: some View{
        VStack{
            HStack{
                ForEach(emojis[0..<emojiCount], id:\.self) { emoji in
                    CardView(content: emoji)
                }
            }
            Button(action: {
                emojiCount += 1
            }, label: {
                VStack{
                    Text("Add")
                    Text("Card")
                }
            })
            Button(action: {
                emojiCount -= 1
            }, label: {
                VStack{
                    Text("Remove")
                    Text("Card")
                }
            })
        }
                .padding(.horizontal)
                .foregroundColor(.red)
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true

    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 25.0)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 25.0)
                        .fill()
            }
        }
                .onTapGesture {
                    isFaceUp = !isFaceUp

                }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
                .preferredColorScheme(.dark)
        ContentView()
                .preferredColorScheme(.light)
    }
}

