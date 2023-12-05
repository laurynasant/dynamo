import Foundation

class useExercise {
    let allExercises: [Exercise]  = [
        // Monday morning Strength and Conditioning
        Exercise(id: 1, name: "Jumping Jacks", description: "Stand with feet together, then jump, spreading your arms and legs.", group: "Warm-up", duration: 120, repetitions: 1, sets: 1, day: "Monday", time: "Morning"),
        Exercise(id: 2, name: "Arm Circles", description: "Extend your arms and make circular motions (1 minute each direction)", group: "Warm-up", duration: 60, repetitions: 1, sets: 2, day: "Monday", time: "Morning"),
        Exercise(id: 3, name: "Leg Swings", description: "Hold onto a support and swing one leg forward and backward (1 minute each leg)", group: "Warm-up", duration: 60, repetitions: 1, sets: 2, day: "Monday", time: "Morning"),
        Exercise(id: 4, name: "Bodyweight Squats", description: "Stand with feet shoulder-width apart, squat down, and stand back up", group: "Warm-up", duration: 120, repetitions: 1, sets: 1, day: "Monday", time: "Morning"),
        Exercise(id: 5, name: "Yoga Flow", description: "Perform a gentle yoga flow incorporating movements like downward dog, upward dog, and lunges", group: "Strength Training", duration: 30, repetitions: 1, sets: 4, day: "Monday", time: "Morning"),
        Exercise(id: 6, name: "Push-ups", description: "Standard push-ups or modified push-ups on your knees", group: "Strength Training", duration: 0, repetitions: 3, sets: 15, day: "Monday", time: "Morning"),
        // Monday afternoon Strength and Conditioning
        Exercise(id: 7, name: "Bodyweight Squats", description: "Focus on proper form and deep squats", group: "Strength Training", duration: 0, repetitions: 20, sets: 3, day: "Monday", time: "Morning"),
        Exercise(id: 8, name: "Plank", description: "Hold a plank position on your hands or forearms", group: "Strength Training", duration: 60, repetitions: 1, sets: 3, day: "Monday", time: "Morning"),
        Exercise(id: 9, name: "Yoga Poses", description: "Warrior poses, tree pose, and chair pose", group: "Strength Training", duration: 60, repetitions: 1, sets: 3, day: "Monday", time: "Morning"),
        Exercise(id: 10, name: "Crunches", description: "Lie on your back, hands behind your head, and lift your upper body.", group: "Core Exercises", duration: 0, repetitions: 20, sets: 3, day: "Monday", time: "Morning"),
        Exercise(id: 11, name: "Russian Twists", description: "Sit on the mat, lean back slightly, and twist your torso while holding a yoga block or your hands.", group: "Core Exercises", duration: 0, repetitions: 15, sets: 3, day: "Monday", time: "Morning"),
        Exercise(id: 12, name: "Leg Raises", description: "Lie on your back and lift your legs towards the ceiling.", group: "Core Exercises", duration: 0, repetitions: 15, sets: 3, day: "Monday", time: "Morning"),
        Exercise(id: 13, name: "Plank with Knee to Elbow", description: "From a plank position, bring your knee to the opposite elbow.", group: "Core Exercises", duration: 0, repetitions: 15, sets: 3, day: "Monday", time: "Morning"),
        Exercise(id: 14, name: "Jump Rope: Mix of Single and Double Unders", description: "Perform a mix of single and double unders with a jump rope.", group: "Cardiovascular Training", duration: 1800, repetitions: 1, sets: 1, day: "Monday", time: "Afternoon"),
        Exercise(id: 15, name: "Cone Shuffle", description: "Set up a line of cones in a zigzag pattern and shuffle through them quickly.", group: "Agility Drills", duration: 1200, repetitions: 1, sets: 1, day: "Monday", time: "Afternoon"),
        // Tuesday morning Martial Arts and Flexibility
        Exercise(id: 16, name: "Jumping Jacks", description: "Stand with feet together, then jump, spreading your arms and legs.", group: "Warm-up", duration: 120, repetitions: 1, sets: 1, day: "Tuesday", time: "Morning"),
        Exercise(id: 17, name: "Arm Circles", description: "Extend your arms and make circular motions (1 minute each direction)", group: "Warm-up", duration: 60, repetitions: 1, sets: 2, day: "Tuesday", time: "Morning"),
        Exercise(id: 18, name: "Leg Swings", description: "Hold onto a support and swing one leg forward and backward (1 minute each leg)", group: "Warm-up", duration: 60, repetitions: 1, sets: 2, day: "Tuesday", time: "Morning"),
        Exercise(id: 19, name: "Bodyweight Squats", description: "Stand with feet shoulder-width apart, squat down, and stand back up", group: "Warm-up", duration: 120, repetitions: 1, sets: 1, day: "Tuesday", time: "Morning"),
        Exercise(id: 20, name: "Shadowboxing", description: "Practice punches, kicks, and footwork without a partner.", group: "Martial Arts Techniques", duration: 600, repetitions: 1, sets: 3, day: "Tuesday", time: "Morning"),
        Exercise(id: 21, name: "Solo Agility Drill", description: "Perform a cone shuffle with random targets to simulate quick decision-making.", group: "Solo Agility Drill", duration: 600, repetitions: 1, sets: 2, day: "Tuesday", time: "Morning"),
        // Tuesday afternoon Martial Arts and Flexibility
        Exercise(id: 22, name: "Yoga Stretching Routine", description: "Include poses like forward folds, pigeon pose, and seated twists.", group: "Flexibility Training", duration: 600, repetitions: 1, sets: 3, day: "Tuesday", time: "Afternoon"),
        Exercise(id: 23, name: "Isometric Exercises (Horse Stance)", description: "Assume a wide-legged stance, lower into a squat, and hold.", group: "Isometric Exercises", duration: 60, repetitions: 1, sets: 3, day: "Tuesday", time: "Afternoon"),
        // Wednesday morning
        Exercise(id: 24, name: "Light Jogging in Place", description: "Keep it low-impact and focus on staying active.", group: "Active Recovery", duration: 1800, repetitions: 1, sets: 1, day: "Wednesday", time: "Morning"),
        Exercise(id: 25, name: "Gentle Stretching", description: "Stretch major muscle groups, holding each stretch for 15-30 seconds.", group: "Gentle Stretching", duration: 600, repetitions: 1, sets: 1, day: "Wednesday", time: "Morning"),
        // Thursday morning
        Exercise(id: 26, name: "Jumping Jacks", description: "Stand with feet together, then jump, spreading your arms and legs.", group: "Warm-up", duration: 120, repetitions: 1, sets: 1, day: "Thursday", time: "Morning"),
        Exercise(id: 27, name: "Arm Circles", description: "Extend your arms and make circular motions (1 minute each direction)", group: "Warm-up", duration: 60, repetitions: 1, sets: 2, day: "Thursday", time: "Morning"),
        Exercise(id: 28, name: "Leg Swings", description: "Hold onto a support and swing one leg forward and backward (1 minute each leg)", group: "Warm-up", duration: 60, repetitions: 1, sets: 2, day: "Thursday", time: "Morning"),
        Exercise(id: 29, name: "Bodyweight Squats", description: "Stand with feet shoulder-width apart, squat down, and stand back up", group: "Warm-up", duration: 120, repetitions: 1, sets: 1, day: "Thursday", time: "Morning"),
        Exercise(id: 30, name: "HIIT Session (Jump Rope Intervals)", description: "Alternate between intense jump rope sessions and short rest periods.", group: "High-Intensity Interval Training (HIIT)", duration: 600, repetitions: 1, sets: 3, day: "Thursday", time: "Morning"),
        Exercise(id: 31, name: "Box Jumps", description: "Jump onto a sturdy surface, then step back down.", group: "Plyometric Exercises", duration: 0, repetitions: 15, sets: 3, day: "Thursday", time: "Morning"),
        // Thursday afternoon
        Exercise(id: 32, name: "Crunches", description: "Lie on your back, hands behind your head, and lift your upper body.", group: "Core Exercises", duration: 0, repetitions: 20, sets: 3, day: "Thursday", time: "Afternoon"),
        Exercise(id: 33, name: "Russian Twists", description: "Sit on the mat, lean back slightly, and twist your torso while holding a yoga block or your hands.", group: "Core Exercises", duration: 0, repetitions: 15, sets: 3, day: "Thursday", time: "Afternoon"),
        Exercise(id: 34, name: "Leg Raises", description: "Lie on your back and lift your legs towards the ceiling.", group: "Core Exercises", duration: 0, repetitions: 15, sets: 3, day: "Thursday", time: "Afternoon"),
        Exercise(id: 35, name: "Plank with Knee to Elbow", description: "From a plank position, bring your knee to the opposite elbow.", group: "Core Exercises", duration: 0, repetitions: 15, sets: 3, day: "Thursday", time: "Afternoon"),
        // Friday morning
        Exercise(id: 36, name: "Jumping Jacks", description: "Stand with feet together, then jump, spreading your arms and legs.", group: "Warm-up", duration: 120, repetitions: 1, sets: 1, day: "Friday", time: "Morning"),
        Exercise(id: 37, name: "Arm Circles", description: "Extend your arms and make circular motions (1 minute each direction)", group: "Warm-up", duration: 60, repetitions: 1, sets: 2, day: "Friday", time: "Morning"),
        Exercise(id: 38, name: "Leg Swings", description: "Hold onto a support and swing one leg forward and backward (1 minute each leg)", group: "Warm-up", duration: 60, repetitions: 1, sets: 2, day: "Friday", time: "Morning"),
        Exercise(id: 39, name: "Bodyweight Squats", description: "Stand with feet shoulder-width apart, squat down, and stand back up", group: "Warm-up", duration: 120, repetitions: 1, sets: 1, day: "Friday", time: "Morning"),
        Exercise(id: 40, name: "Kata Practice", description: "Perform traditional martial arts forms with precision.", group: "Martial Arts Techniques", duration: 900, repetitions: 1, sets: 3, day: "Friday", time: "Morning"),
        Exercise(id: 41, name: "Solo Reaction Drill (Cone Shuffle)", description: "Perform a cone shuffle with random targets to simulate quick decision-making.", group: "Solo Agility Drill", duration: 600, repetitions: 1, sets: 2, day: "Friday", time: "Morning"),
        // Friday afternoon
        Exercise(id: 42, name: "Yoga Stretching Routine", description: "Include poses like forward folds, pigeon pose, and seated twists.", group: "Flexibility Training", duration: 600, repetitions: 1, sets: 3, day: "Friday", time: "Afternoon"),
        Exercise(id: 43, name: "Yoga Meditation", description: "Sit comfortably, focus on your breath, and clear your mind.", group: "Meditation", duration: 900, repetitions: 1, sets: 1, day: "Friday", time: "Afternoon"),
    ]
    
    func getById(id: Int) -> Exercise {
        if let exercise = allExercises.first(where: {$0.id == id}) {
           return exercise
        } else {
            return allExercises[0]
        }
    }
}
