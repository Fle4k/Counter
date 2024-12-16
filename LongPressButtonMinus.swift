//
//  LongPressButton_1s.swift
//  Counter4
//
//  Created by Shahin on 14.12.24.
//

import SwiftUI

struct LongPressButtonMinus: View {
    @Binding var counterNumber: Int
    
        var title: String
        var font: Font = .custom("Silkscreen-Regular", size: 20)
        var color: Color = .counterRed

        var body: some View {
            Button(action: {}) {
                Text(title)
                    .font(font)
                    .foregroundStyle(color)
            }
            .onLongPressGesture(minimumDuration: 1.0) {
                counterNumber -= 1
                if counterNumber < 0 {
                    counterNumber = 0
                }
            }
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
