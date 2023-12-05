import SwiftUI

struct CountdownTimer: View {
    @EnvironmentObject var timer: useCountdownTimer

    var body: some View {
        VStack {
            HStack {
                Button(action: { timer.startTimer(sendMessage: true) }) {
                    Image(systemName: "play.circle")
                        .font(.largeTitle)
                }
                Button(action: { timer.pauseTimer(sendMessage: true) }) {
                    Image(systemName: "pause.circle")
                        .font(.largeTitle)
                }
                Button(action: { timer.stopTimer(sendMessage: true) }) {
                    Image(systemName: "stop.circle")
                        .font(.largeTitle)
                }
            }
            .padding()
            Text("\(timer.remainingTime) seconds")
                .font(.largeTitle)
        }
    }


}

#Preview {
    CountdownTimer().environmentObject(useCountdownTimer())
}
