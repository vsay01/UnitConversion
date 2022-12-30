//
//  ContentView.swift
//  UnitConversion
//
//  Created by vsay on 12/29/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            BaseConversionForm()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
