//
//  dynamoApp.swift
//  dynamo
//
//  Created by Laurynas Antanavicius on 01/12/2023.
//

import SwiftUI

@main
struct dynamoApp: App {
    @StateObject var timer = useCountdownTimer()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(timer)
        }
    }
}
