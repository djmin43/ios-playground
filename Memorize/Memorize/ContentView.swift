
import SwiftUI

struct ContentView: View {
    var emojis = ["😇","👀","🐰","☃️"]
    
    var body: some View{
        HStack{
            CardView(content: emojis[0])
            CardView(content: emojis[1])
            CardView(content: emojis[2])
            CardView(content: emojis[3])
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

