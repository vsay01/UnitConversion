//
//  BaseConversionForm.swift
//  UnitConversion
//
//  Created by vsay on 12/29/22.
//

import SwiftUI

struct BaseConversionForm: View {
    
    enum ConversionEnum: String, CaseIterable {
        case Temperature = "Temperature"
        case Length = "Length"
        case Time = "Time"
        case Volume = "Volume"
    }
    
    @State var selectedConversion = ConversionEnum.Temperature
    
    var body: some View {
        Picker("Select a conversion", selection: $selectedConversion) {
            ForEach(ConversionEnum.allCases, id:\.self) {
                Text($0.rawValue)
            }
        }
        .pickerStyle(.menu)
        switch (selectedConversion) {
            case ConversionEnum.Length: LengthConversionForm()
            default: TemperatureConversionForm()
        }
    }
}

struct BaseConversionForm_Previews: PreviewProvider {
    static var previews: some View {
        BaseConversionForm()
    }
}
