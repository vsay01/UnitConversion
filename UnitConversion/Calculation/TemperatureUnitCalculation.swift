//
//  TemperatureUnitCalculation.swift
//  UnitConversion
//
//  Created by vsay on 12/30/22.
//

import Foundation

enum TemperatureUnitEnum: String, CaseIterable {
    case CELSIUS = "Celsius"
    case FAHRENHEIT = "Fahrenheit"
    case KELVIN = "Kelvin"
}

//Other celsius to other temperature units

func convertCelsiusToFahrenheit(celsius: Double) -> Double {
    return (celsius * 9/5) + 32
}

func convertCelsiusToKelvin(celsius: Double) -> Double {
    return celsius + 273.15
}


//Other Tempature units to celsius

func convertFahrenheitToCelsuis(fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5/9
}

func convertKelvinToCelsuis(kelvin: Double) -> Double {
    return kelvin - 273.15
}

// Convert Temperature Unit
func convertTemperatureUnit(_ selectedInputUnit: TemperatureUnitEnum, _ selectedOuputUnit: TemperatureUnitEnum, _ inputNumber: Double) -> Double {
    var convertToCelsius = 0.0
    switch(selectedInputUnit) {
    case TemperatureUnitEnum.FAHRENHEIT:
        convertToCelsius = convertFahrenheitToCelsuis(fahrenheit: inputNumber)
    case TemperatureUnitEnum.KELVIN:
        convertToCelsius = convertKelvinToCelsuis(kelvin: inputNumber)
    default: convertToCelsius = inputNumber //return celsius
    }
    return convertTemperatureUnitToCelsius(selectedOuputUnit, convertToCelsius)
}

private func convertTemperatureUnitToCelsius(_ selectedOuputUnit: TemperatureUnitEnum, _ inputNumber: Double) -> Double {
    switch(selectedOuputUnit) {
    case TemperatureUnitEnum.FAHRENHEIT: return convertCelsiusToFahrenheit(celsius: inputNumber)
    case TemperatureUnitEnum.KELVIN: return convertCelsiusToKelvin(celsius: inputNumber)
    default: return inputNumber
    }
}
