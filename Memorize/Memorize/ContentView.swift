
import SwiftUI

struct ContentView: View {
    var body: some View{
        HStack{
            CardView(content: "😇")
            CardView(content: "👀")
            CardView(content: "🐰")
            CardView(content: "☃️")
        }
        .padding(.horizontal)
        .foregroundColor(.red)
        
    }
}

struct CardView: View {
    var content: String = ""
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

