import SwiftUI

struct ExerciseList: View {
    let exercises = useExercise().allExercises
    @EnvironmentObject var timer: useCountdownTimer

    var body: some View {
        VStack(spacing: 0) {
            Divider()
            List {
                daySection(day: "Monday")
                daySection(day: "Tuesday")
                daySection(day: "Wednesday")
                daySection(day: "Thursday")
                daySection(day: "Friday")
                daySection(day: "Saturday", isRestDay: true)
                daySection(day: "Sunday", isRestDay: true)
            }
            SelectedExercise().padding()
        }
    }

    func daySection(day: String, isRestDay: Bool = false) -> some View {
        Section(header: Text(day).bold()) {
            if isRestDay {
                Text("Rest")
            } else {
                Group {
                    TimeSection(day: day, time: "Morning")
                    TimeSection(day: day, time: "Afternoon")
                }
            }
        }
    }
}

#Preview {
    ExerciseList().environmentObject(useCountdownTimer())
}
