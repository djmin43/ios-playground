
import SwiftUI

struct ContentView: View {
    var body: some View{
        HStack{
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .padding(.horizontal)
        .foregroundColor(.red)
        
    }
}

struct CardView: View {
    var isFaceUp: Bool { return false}
    
    var body: some View {
        ZStack {
            if isFaceUp {
            RoundedRectangle(cornerRadius: 25.0)
                .fill()
                .foregroundColor(.white)
            RoundedRectangle(cornerRadius: 25.0)
                .stroke(lineWidth: 3)
            Text("💁🏿")
                .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill()
                
            }
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

