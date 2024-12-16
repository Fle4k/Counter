//
//  LongPressTester.swift
//  Counter4
//
//  Created by Shahin on 16.12.24.
//

import SwiftUI

struct LongPressMinusButton: View {
    
    @Binding var counterNumber: Int
    
    var body: some View {
        Text("–")
            .font(.custom("Silkscreen-Regular", size: 100))
            .foregroundStyle(.counterRed)
            .onLongPressGesture(minimumDuration: 1) {
                print("counterNumber < 0")
                counterNumber -= 1
                if counterNumber < 0 {
                    counterNumber = 0
                }
            }
    }
}
    #Preview {
      LongPressMinusButton(counterNumber: .constant(0))
    }
