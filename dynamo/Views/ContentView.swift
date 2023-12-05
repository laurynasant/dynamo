import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Color(red: 0, green: 0, blue: 0, opacity: 0.2)
                .edgesIgnoringSafeArea(.all)
            ExerciseList()
        }
    }
}

#Preview {
    ContentView()
}
