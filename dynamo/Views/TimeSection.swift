import SwiftUI

struct TimeSection: View {
    let exercises = useExercise().allExercises
    let day: String
    let time: String
    @EnvironmentObject var timer: useCountdownTimer
    
    var body: some View {
        let filtered = exercises.filter { $0.day == day && $0.time == time }
        
            Section(header: Text(time).bold()) {
                if (filtered.count > 0) {
                ForEach(filtered) { exercise in
                    ExerciseRow(exercise: exercise)
                        .onTapGesture {
                            timer.selectExercise(exercise: exercise, sendMessage: true)
                        }
                }
                } else {
                    Text("Rest")
            }
        
            
        }
    }
}

#Preview {
    TimeSection(day: "Monday", time: "Morning")
}

#Preview {
    TimeSection(day: "Wednesday", time: "Afternoon")
}

