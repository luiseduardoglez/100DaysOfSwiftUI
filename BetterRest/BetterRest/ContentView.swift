//
//  ContentView.swift
//  BetterRest
//
//  Created by Luis Eduardo Gonzalez on 2020-06-29.
//  Copyright © 2020 Luis Eduardo Gonzalez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 0

    var bedtime: String {
        let model = SleepCalculator()
        let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
        let hour = (components.hour ?? 0) * 60 * 60
        let minute = (components.minute ?? 0) * 60
        var message = ""
        do {
            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            let sleepTime = wakeUp - prediction.actualSleep
            let formatter = DateFormatter()
            formatter.timeStyle = .short

            message = formatter.string(from: sleepTime)
        } catch {
            message = "Error"
        }
        return message
    }

    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? Date()
    }

    var body: some View {
        NavigationView {
            Form {
                Text("When do you want to wake up")
                    .font(.headline)
                DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                Section(header: Text("Desired amount of sleep")) {
                    Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
                        Text("\(sleepAmount, specifier: "%g") hours")
                    }
                }
                Section() {
                    Picker("Daily coffee intake", selection: $coffeeAmount) {
                        ForEach(1..<21) {
                            Text("\($0) \($0 == 1 ? "cup" : "cups")")
                        }
                    }
                }
                Section(header: Text("Ideal bedtime")) {
                    Text("\(bedtime)")
                        .font(.largeTitle)
                }
            }
            .navigationBarTitle("Better Rest")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
