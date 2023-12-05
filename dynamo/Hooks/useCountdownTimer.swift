import SwiftUI
import AVFoundation
import Combine
import Foundation
import WatchConnectivity

class useCountdownTimer: NSObject, ObservableObject, WCSessionDelegate {
    var timer: Timer?
    @Published var remainingTime: Int = 60
    @Published var selected: Exercise?
    var timerStarted: Bool = false
    var session: WCSession = .default
    
    override init() {
        super.init()
        self.session.delegate = self
        self.session.activate()
    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        print("session: \(session)")
    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        print(message)
        DispatchQueue.main.async {
            if let action = message["action"] as? String {
                switch action {
                case "startTimer":
                    self.startTimer(sendMessage: false)
                case "stopTimer":
                    self.stopTimer(sendMessage: false)
                case "pauseTimer":
                    self.pauseTimer(sendMessage: false)
                case "selectExercise":
                    let exerciseId = message["exercise"] as! Int
                    let exercise = useExercise().getById(id: exerciseId)
                    self.selectExercise(exercise: exercise, sendMessage: false)
                default:
                    print("no action")
                }
            }
        }
    }
    
    #if os(iOS)
    func sessionDidBecomeInactive(_ session: WCSession) {
        print("session inactive")
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        print("session deactivated")
    }
    
    func sessionWatchStateDidChange(_ session: WCSession) {
        print("watch state changed")
    }
    #endif
    
    func startTimer(sendMessage: Bool = true) {
        if !self.timerStarted {
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                if self.remainingTime > 0 {
                    self.remainingTime -= 1
                } else {
                    self.playSound()
                    self.stopTimer()
                }
            }
            if sendMessage {
                self.session.sendMessage(["action": "startTimer"], replyHandler: nil) { error in
                    print(error.localizedDescription)
                }
            }
        }
        self.timerStarted = true
    }

    func stopTimer(sendMessage: Bool = true) {
        self.pauseTimer(sendMessage: false)
        if (selected != nil) {
            self.remainingTime = selected!.duration
        }
        self.timerStarted = false
        if sendMessage {
            self.session.sendMessage(["action": "stopTimer"], replyHandler: nil) { error in
                print(error.localizedDescription)
            }
        }
    }
    
    func pauseTimer(sendMessage: Bool = true) {
        self.timer?.invalidate()
        self.timer = nil
        self.timerStarted = false
        if sendMessage {
            self.session.sendMessage(["action": "pauseTimer"], replyHandler: nil) { error in
                print(error.localizedDescription)
            }
        }
    }
    
    func selectExercise(exercise: Exercise, sendMessage: Bool = true) {
        self.selected = exercise
        self.remainingTime = exercise.duration
        if (exercise.duration > 0) {
            startTimer(sendMessage: false)
        }
        if sendMessage {
            let message: [String: Any] = ["action": "selectExercise", "exercise": exercise.id]
            self.session.sendMessage(message, replyHandler: nil) { error in
                print(error.localizedDescription)
            }
        }
    }
    
    func playSound() {
        #if os(iOS)
        let systemSoundID: SystemSoundID = 1304
        AudioServicesPlaySystemSound(systemSoundID)
        #elseif os(watchOS)
        WKInterfaceDevice.current().play(.success)
        #endif
    }
}
