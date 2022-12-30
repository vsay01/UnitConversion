//
//  LengthConversionForm.swift
//  UnitConversion
//
//  Created by vsay on 12/29/22.
//

import SwiftUI

struct LengthConversionForm: View {
    
    @State var selectedInputUnit = LengthUnitEnum.METER
    @State var selectedOutputUnit = LengthUnitEnum.METER
    
    @State var inputNumber = 0.0
    
    var outputNumber: Double {
        return convertLengthUnit(selectedInputUnit, selectedOutputUnit, inputNumber)
    }
    
    var body: some View {
        Form {
            Section {
                Picker("Input length Unit", selection: $selectedInputUnit) {
                    ForEach(LengthUnitEnum.allCases, id:\.self) {
                        Text($0.rawValue)
                    }
                }
                .onChange(of: selectedInputUnit) {
                    value in
                    print(selectedInputUnit)
                }
                .pickerStyle(.menu)
                
                Picker("Output length Unit", selection: $selectedOutputUnit) {
                    ForEach(LengthUnitEnum.allCases, id:\.self) {
                        Text($0.rawValue)
                    }
                }
                .pickerStyle(.menu)
            } header: {
                Text("Select Length Unit")
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

struct LengthConversionForm_Previews: PreviewProvider {
    static var previews: some View {
        LengthConversionForm()
    }
}
