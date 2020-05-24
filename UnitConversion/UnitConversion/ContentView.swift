//
//  ContentView.swift
//  UnitConversion
//
//  Created by Luis Eduardo Gonzalez on 2020-05-23.
//  Copyright © 2020 Luis Eduardo Gonzalez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var category = 0
    @State private var input = ""
    @State private var inputUnit = 0
    @State private var outputUnit = 1

    let categories = ["Temperature", "Length", "Time", "Volume"]
    let subcategories = [
        ["Celsius", "Fahrenheit", "Kelvin"],
        ["meters", "kilometers", "feet", "yards", "miles"],
        ["seconds", "minutes", "hours", "days"],
        ["milliliters", "liters", "cups", "pints", "gallons"]
    ]

    private func temperatureConverter(for measurement: Double, unit: UnitTemperature, resultingUnit: UnitTemperature) -> Double {
        let value = Measurement(value: measurement, unit: unit)
        return value.converted(to: resultingUnit).value
    }

    private func lengthConverter(for measurement: Double, unit: UnitLength, resultingUnit: UnitLength) -> Double {
        let value = Measurement(value: measurement, unit: unit)
        return value.converted(to: resultingUnit).value
    }

    private func timeConverter(for measurement: Double, unit: UnitDuration, resultingUnit: UnitDuration) -> Double {
        let value = Measurement(value: measurement, unit: unit)
        return value.converted(to: resultingUnit).value
    }

    private func volumeConverter(for measurement: Double, unit: UnitVolume, resultingUnit: UnitVolume) -> Double {
        let value = Measurement(value: measurement, unit: unit)
        return value.converted(to: resultingUnit).value
    }

    var output: Double {
        let inputValue = Double(input) ?? 0

        if inputUnit == outputUnit {
            return inputValue
        } else {
            if subcategories[category][inputUnit] == "Celsius" && subcategories[category][outputUnit] == "Fahrenheit" {
                return temperatureConverter(for: inputValue, unit: .celsius, resultingUnit: .fahrenheit)
            }
            if subcategories[category][inputUnit] == "Celsius" && subcategories[category][outputUnit] == "Kelvin" {
                return temperatureConverter(for: inputValue, unit: .celsius, resultingUnit: .kelvin)
            }
            if subcategories[category][inputUnit] == "Fahrenheit" && subcategories[category][outputUnit] == "Celsius" {
                return temperatureConverter(for: inputValue, unit: .fahrenheit, resultingUnit: .celsius)
            }
            if subcategories[category][inputUnit] == "Fahrenheit" && subcategories[category][outputUnit] == "Kelvin" {
                return temperatureConverter(for: inputValue, unit: .fahrenheit, resultingUnit: .kelvin)
            }
            if subcategories[category][inputUnit] == "Kelvin" && subcategories[category][outputUnit] == "Celsius" {
                return temperatureConverter(for: inputValue, unit: .kelvin, resultingUnit: .celsius)
            }
            if subcategories[category][inputUnit] == "Kelvin" && subcategories[category][outputUnit] == "Fahrenheit" {
                return temperatureConverter(for: inputValue, unit: .kelvin, resultingUnit: .fahrenheit)
            }
            if subcategories[category][inputUnit] == "meters" && subcategories[category][outputUnit] == "kilometers" {
                return lengthConverter(for: inputValue, unit: .meters, resultingUnit: .kilometers)
            }
            if subcategories[category][inputUnit] == "meters" && subcategories[category][outputUnit] == "feet" {
                return lengthConverter(for: inputValue, unit: .meters, resultingUnit: .feet)
            }
            if subcategories[category][inputUnit] == "meters" && subcategories[category][outputUnit] == "yards" {
                return lengthConverter(for: inputValue, unit: .meters, resultingUnit: .yards)
            }
            if subcategories[category][inputUnit] == "meters" && subcategories[category][outputUnit] == "miles" {
                return lengthConverter(for: inputValue, unit: .meters, resultingUnit: .miles)
            }
            if subcategories[category][inputUnit] == "kilometers" && subcategories[category][outputUnit] == "meters" {
                return lengthConverter(for: inputValue, unit: .kilometers, resultingUnit: .meters)
            }
            if subcategories[category][inputUnit] == "kilometers" && subcategories[category][outputUnit] == "feet" {
                return lengthConverter(for: inputValue, unit: .kilometers, resultingUnit: .feet)
            }
            if subcategories[category][inputUnit] == "kilometers" && subcategories[category][outputUnit] == "yards" {
                return lengthConverter(for: inputValue, unit: .kilometers, resultingUnit: .yards)
            }
            if subcategories[category][inputUnit] == "kilometers" && subcategories[category][outputUnit] == "miles" {
                  return lengthConverter(for: inputValue, unit: .kilometers, resultingUnit: .miles)
            }
            if subcategories[category][inputUnit] == "feet" && subcategories[category][outputUnit] == "meters" {
                return lengthConverter(for: inputValue, unit: .feet, resultingUnit: .meters)
            }
            if subcategories[category][inputUnit] == "feet" && subcategories[category][outputUnit] == "kilometers" {
                return lengthConverter(for: inputValue, unit: .feet, resultingUnit: .kilometers)
            }
            if subcategories[category][inputUnit] == "feet" && subcategories[category][outputUnit] == "yards" {
                return lengthConverter(for: inputValue, unit: .feet, resultingUnit: .yards)
            }
            if subcategories[category][inputUnit] == "feet" && subcategories[category][outputUnit] == "miles" {
                  return lengthConverter(for: inputValue, unit: .feet, resultingUnit: .miles)
            }
            if subcategories[category][inputUnit] == "yards" && subcategories[category][outputUnit] == "meters" {
                return lengthConverter(for: inputValue, unit: .yards, resultingUnit: .meters)
            }
            if subcategories[category][inputUnit] == "yards" && subcategories[category][outputUnit] == "kilometers" {
                return lengthConverter(for: inputValue, unit: .yards, resultingUnit: .kilometers)
            }
            if subcategories[category][inputUnit] == "yards" && subcategories[category][outputUnit] == "feet" {
                return lengthConverter(for: inputValue, unit: .yards, resultingUnit: .feet)
            }
            if subcategories[category][inputUnit] == "yards" && subcategories[category][outputUnit] == "miles" {
                  return lengthConverter(for: inputValue, unit: .yards, resultingUnit: .miles)
            }
            if subcategories[category][inputUnit] == "miles" && subcategories[category][outputUnit] == "meters" {
                return lengthConverter(for: inputValue, unit: .miles, resultingUnit: .meters)
            }
            if subcategories[category][inputUnit] == "miles" && subcategories[category][outputUnit] == "kilometers" {
                return lengthConverter(for: inputValue, unit: .miles, resultingUnit: .kilometers)
            }
            if subcategories[category][inputUnit] == "miles" && subcategories[category][outputUnit] == "feet" {
                return lengthConverter(for: inputValue, unit: .miles, resultingUnit: .feet)
            }
            if subcategories[category][inputUnit] == "miles" && subcategories[category][outputUnit] == "yards" {
                  return lengthConverter(for: inputValue, unit: .miles, resultingUnit: .yards)
            }
            if subcategories[category][inputUnit] == "seconds" && subcategories[category][outputUnit] == "minutes" {
                return timeConverter(for: inputValue, unit: .seconds, resultingUnit: .minutes)
            }
            if subcategories[category][inputUnit] == "seconds" && subcategories[category][outputUnit] == "hours" {
                return timeConverter(for: inputValue, unit: .seconds, resultingUnit: .hours)
            }
            if subcategories[category][inputUnit] == "seconds" && subcategories[category][outputUnit] == "days" {
                return inputValue / 86400
            }
            if subcategories[category][inputUnit] == "minutes" && subcategories[category][outputUnit] == "seconds" {
                return timeConverter(for: inputValue, unit: .minutes, resultingUnit: .seconds)
            }
            if subcategories[category][inputUnit] == "minutes" && subcategories[category][outputUnit] == "hours" {
                return timeConverter(for: inputValue, unit: .minutes, resultingUnit: .hours)
            }
            if subcategories[category][inputUnit] == "minutes" && subcategories[category][outputUnit] == "days" {
                return inputValue / 1440
            }
            if subcategories[category][inputUnit] == "hours" && subcategories[category][outputUnit] == "seconds" {
                return timeConverter(for: inputValue, unit: .hours, resultingUnit: .seconds)
            }
            if subcategories[category][inputUnit] == "hours" && subcategories[category][outputUnit] == "minutes" {
                return timeConverter(for: inputValue, unit: .hours, resultingUnit: .minutes)
            }
            if subcategories[category][inputUnit] == "hours" && subcategories[category][outputUnit] == "days" {
                return inputValue / 24
            }
            if subcategories[category][inputUnit] == "days" && subcategories[category][outputUnit] == "seconds" {
                return inputValue * 86400
            }
            if subcategories[category][inputUnit] == "days" && subcategories[category][outputUnit] == "minutes" {
                return inputValue * 1440
            }
            if subcategories[category][inputUnit] == "days" && subcategories[category][outputUnit] == "hours" {
                return inputValue * 24
            }
            if subcategories[category][inputUnit] == "milliliters" && subcategories[category][outputUnit] == "liters" {
                return volumeConverter(for: inputValue, unit: .milliliters, resultingUnit: .liters)
            }
            if subcategories[category][inputUnit] == "milliliters" && subcategories[category][outputUnit] == "cups" {
                return volumeConverter(for: inputValue, unit: .milliliters, resultingUnit: .cups)
            }
            if subcategories[category][inputUnit] == "milliliters" && subcategories[category][outputUnit] == "pints" {
                return volumeConverter(for: inputValue, unit: .milliliters, resultingUnit: .pints)
            }
            if subcategories[category][inputUnit] == "milliliters" && subcategories[category][outputUnit] == "gallons" {
                return volumeConverter(for: inputValue, unit: .milliliters, resultingUnit: .gallons)
            }
            if subcategories[category][inputUnit] == "liters" && subcategories[category][outputUnit] == "milliliters" {
                return volumeConverter(for: inputValue, unit: .liters, resultingUnit: .milliliters)
            }
            if subcategories[category][inputUnit] == "liters" && subcategories[category][outputUnit] == "cups" {
                return volumeConverter(for: inputValue, unit: .liters, resultingUnit: .cups)
            }
            if subcategories[category][inputUnit] == "liters" && subcategories[category][outputUnit] == "pints" {
                return volumeConverter(for: inputValue, unit: .liters, resultingUnit: .pints)
            }
            if subcategories[category][inputUnit] == "liters" && subcategories[category][outputUnit] == "gallons" {
                return volumeConverter(for: inputValue, unit: .liters, resultingUnit: .gallons)
            }
            if subcategories[category][inputUnit] == "cups" && subcategories[category][outputUnit] == "milliliters" {
                return volumeConverter(for: inputValue, unit: .cups, resultingUnit: .milliliters)
            }
            if subcategories[category][inputUnit] == "cups" && subcategories[category][outputUnit] == "liters" {
                return volumeConverter(for: inputValue, unit: .cups, resultingUnit: .liters)
            }
            if subcategories[category][inputUnit] == "cups" && subcategories[category][outputUnit] == "pints" {
                return volumeConverter(for: inputValue, unit: .cups, resultingUnit: .pints)
            }
            if subcategories[category][inputUnit] == "cups" && subcategories[category][outputUnit] == "gallons" {
                return volumeConverter(for: inputValue, unit: .cups, resultingUnit: .gallons)
            }
            if subcategories[category][inputUnit] == "pints" && subcategories[category][outputUnit] == "milliliters" {
                return volumeConverter(for: inputValue, unit: .pints, resultingUnit: .milliliters)
            }
            if subcategories[category][inputUnit] == "pints" && subcategories[category][outputUnit] == "liters" {
                return volumeConverter(for: inputValue, unit: .pints, resultingUnit: .liters)
            }
            if subcategories[category][inputUnit] == "pints" && subcategories[category][outputUnit] == "cups" {
                return volumeConverter(for: inputValue, unit: .pints, resultingUnit: .cups)
            }
            if subcategories[category][inputUnit] == "pints" && subcategories[category][outputUnit] == "gallons" {
                return volumeConverter(for: inputValue, unit: .pints, resultingUnit: .gallons)
            }
            if subcategories[category][inputUnit] == "gallons" && subcategories[category][outputUnit] == "milliliters" {
                return volumeConverter(for: inputValue, unit: .gallons, resultingUnit: .milliliters)
            }
            if subcategories[category][inputUnit] == "gallons" && subcategories[category][outputUnit] == "liters" {
                return volumeConverter(for: inputValue, unit: .gallons, resultingUnit: .liters)
            }
            if subcategories[category][inputUnit] == "gallons" && subcategories[category][outputUnit] == "cups" {
                return volumeConverter(for: inputValue, unit: .gallons, resultingUnit: .cups)
            }
            if subcategories[category][inputUnit] == "gallons" && subcategories[category][outputUnit] == "pints" {
                return volumeConverter(for: inputValue, unit: .gallons, resultingUnit: .pints)
            }
        }

        return inputValue
    }

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Category", selection: $category) {
                        ForEach(0 ..< categories.count) {
                            Text("\(self.categories[$0])")
                        }
                    }
                }
                Section(header: Text("Input")) {
                    TextField("Amount", text: $input)
                        .keyboardType(.decimalPad)
                    Picker("Unit", selection: $inputUnit) {
                        ForEach(0 ..< subcategories[category].count) {
                            Text("\(self.subcategories[self.category][$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Output")) {
                     Text("\(output, specifier: "%.2f")")
                    Picker("Unit", selection: $outputUnit) {
                        ForEach(0 ..< subcategories[category].count) {
                            Text("\(self.subcategories[self.category][$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
            .navigationBarTitle("UnitConversion")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
