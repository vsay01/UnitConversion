//
//  TemperatureConversionForm.swift
//  UnitConversion
//
//  Created by vsay on 12/30/22.
//

import SwiftUI

struct TemperatureConversionForm: View {
    @State var selectedInputUnit = TemperatureUnitEnum.CELSIUS
    @State var selectedOutputUnit = TemperatureUnitEnum.CELSIUS
    
    @State var inputNumber = 0.0
    
    var outputNumber: Double {
        return convertTemperatureUnit(selectedInputUnit, selectedOutputUnit, inputNumber)
    }
    
    var body: some View {
        Form {
            Section {
                Picker("Input temperature Unit", selection: $selectedInputUnit) {
                    ForEach(TemperatureUnitEnum.allCases, id:\.self) {
                        Text($0.rawValue)
                    }
                }
                .pickerStyle(.menu)
                
                Picker("Output temperature Unit", selection: $selectedOutputUnit) {
                    ForEach(TemperatureUnitEnum.allCases, id:\.self) {
                        Text($0.rawValue)
                    }
                }
                .pickerStyle(.menu)
            } header: {
                Text("Select temperature Unit")
            }
            
            Section {
                TextField("Enter a number", value: $inputNumber, format: .number)
                    .keyboardType(.decimalPad)
            } header: {
                Text("Enter a number")
            }
            
            Section {
                Text(outputNumber, format: .number)
            } header: {
                Text("Output number")
            }
        }
    }
}

struct TemperatureConversionForm_Previews: PreviewProvider {
    static var previews: some View {
        TemperatureConversionForm()
    }
}
