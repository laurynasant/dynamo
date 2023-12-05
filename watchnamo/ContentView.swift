import SwiftUI

struct ContentView: View {
    var body: some View {
        SelectedExercise().padding()
    }
}

#Preview {
    ContentView().environmentObject(useCountdownTimer())
}
