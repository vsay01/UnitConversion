//
//  LengthUnitCalculation.swift
//  UnitConversion
//
//  Created by vsay on 12/29/22.
//

import Foundation

enum LengthUnitEnum: String, CaseIterable {
    case METER = "Meter"
    case KILOMETER = "Kilometer"
    case FEET = "Feet"
    case YARDS = "Yards"
    case MILES = "Miles"
}

//Other meter to other length units

func convertMeterToKiloMeter(meter: Double) -> Double {
    return meter / 1000
}

func convertMeterToFeet(meter: Double) -> Double {
    return meter * 3.281
}

func convertMeterToYard(meter: Double) -> Double {
    return meter * 1.094
}

func convertMeterToMile(meter: Double) -> Double {
    return meter / 1609
}

//Other length units to meter

func convertKiloMeterToMeter(meter: Double) -> Double {
    return meter * 1000
}

func convertFeetToMeter(meter: Double) -> Double {
    return meter / 3.281
}

func convertYardToMeter(meter: Double) -> Double {
    return meter / 1.094
}

func convertMileToMeter(meter: Double) -> Double {
    return meter * 1609
}

// Convert Length Unit
func convertLengthUnit(_ selectedInputUnit: LengthUnitEnum, _ selectedOuputUnit: LengthUnitEnum, _ inputNumber: Double) -> Double {
    var convertToMeter = 0.0
    switch(selectedInputUnit) {
    case LengthUnitEnum.KILOMETER:
        convertToMeter = convertKiloMeterToMeter(meter: inputNumber)
    case LengthUnitEnum.FEET:
        convertToMeter = convertFeetToMeter(meter: inputNumber)
    case LengthUnitEnum.YARDS:
        convertToMeter = convertYardToMeter(meter: inputNumber)
    case LengthUnitEnum.MILES:
        convertToMeter = convertMileToMeter(meter: inputNumber)
    default: convertToMeter = inputNumber //return miles
    }
    return convertLengthUnitToMeter(selectedOuputUnit, convertToMeter)
}

private func convertLengthUnitToMeter(_ selectedOuputUnit: LengthUnitEnum, _ inputNumber: Double) -> Double {
    switch(selectedOuputUnit) {
    case LengthUnitEnum.KILOMETER: return convertMeterToKiloMeter(meter: inputNumber)
    case LengthUnitEnum.FEET: return convertMeterToFeet(meter: inputNumber)
    case LengthUnitEnum.YARDS: return convertMeterToYard(meter: inputNumber)
    case LengthUnitEnum.MILES: return convertMeterToMile(meter: inputNumber)
    default: return inputNumber //return miles
    }
}
