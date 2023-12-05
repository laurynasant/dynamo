import SwiftUI

@main
struct watchnamo: App {
    @StateObject var timer = useCountdownTimer()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(timer)
        }
    }
}
