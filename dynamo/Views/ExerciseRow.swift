import SwiftUI


struct ExerciseRow: View {
    var exercise: Exercise

    var body: some View {
        VStack {
            Text("\(exercise.group)").frame(maxWidth: .infinity, alignment: .leading)
            HStack {
                Text(exercise.name).font(.title2)
                Spacer()
                if exercise.repetitions != 1 {
                    Text("\(exercise.repetitions) reps x \(exercise.sets) sets").font(.title2)
                } else {
                    Text("\(exercise.duration / 60) min x \(exercise.sets) sets").font(.title2)
                }
            }
            Text("\(exercise.description)").frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}


#Preview {
    ExerciseRow(exercise: useExercise().allExercises[0])
}
