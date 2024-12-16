//
//  LongPressButton.swift
//  Counter4
//
//  Created by Shahin on 12.12.24.
//

import SwiftUI

struct LongPressView_2s: View {
    var title: String
    var font: Font = .custom("Silkscreen-Regular", size: 20)
    var color: Color = .counterRed
    
    
    var body: some View {
        Text(title)
            .font(font)
            .foregroundStyle(color)
            .onLongPressGesture(minimumDuration: 2.0) {
                print("reseted")

            }
    }
}



#Preview {
    LongPressView_2s(title: "Lorem")
}
