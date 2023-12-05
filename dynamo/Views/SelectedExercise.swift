import SwiftUI


struct SelectedExercise: View {
    @EnvironmentObject var timer: useCountdownTimer

    var body: some View {
        if let exercise = timer.selected {
            VStack {
                if (exercise.duration > 0) {
                    CountdownTimer()

                    HStack {
                        Text(exercise.name)
                        Text("\(exercise.duration) min x \(exercise.sets) sets")
                    }
                } else {
                    HStack {
                        Text(exercise.name)
                        Text("\(exercise.repetitions) reps x \(exercise.sets) sets")
                    }
                }
                
            }
        } else {
            Text("No exercise selected")
                .foregroundColor(.gray)
        }
    }
}


#Preview {
    SelectedExercise().environmentObject(useCountdownTimer())
}
