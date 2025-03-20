import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            cardView(isFaceUp: true)
            cardView(isFaceUp: false)
            cardView(isFaceUp: false)
        }
        .font(.largeTitle)
        .foregroundColor(.blue)
        .padding()
    }
}
struct cardView: View{
    @State var isFaceUp: Bool = false
    let base: RoundedRectangle = RoundedRectangle(cornerRadius: 25)
    var body: some View{
         ZStack{
            if isFaceUp {
                base.fill(.white)
                    .strokeBorder(lineWidth: 5)
                    .foregroundColor(.blue)
                Text("🤠")
            } else {
                base.fill()
            }
        }
         .onTapGesture {
             isFaceUp = !isFaceUp
         }
    }
}
#Preview {
    ContentView()
}
