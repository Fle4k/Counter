//
//  CounterTheme_0.swift
//  Counter4
//
//  Created by Shahin on 10.12.24.
//

import SwiftUI
struct CounterTheme_0: View {
    @State var counterNumber: Int = 0
    @State private var isGlitching: Bool = false
    
    var body: some View {
        
        ZStack {
            
            
            Rectangle()
                .fill(Color.counterDarkGrey)
                .scaledToFill()
                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Text("\(counterNumber)")
                    .font(.custom("Silkscreen-Regular", size: 140))
                    .foregroundStyle(.counterRed)
                Spacer()
                    .frame(width: 100, height: 140)
                Button(action: {
                    counterNumber += 1

                }) {
                    Text("+")
                        .font(.custom("Silkscreen-Regular", size: 100))
                        .foregroundStyle(.counterRed)
                }
                
                Spacer()
                    .frame(width: 100, height: 20)
                
                Button(action: {
                    counterNumber -= 1
                    if counterNumber < 0 {
                        counterNumber = 0
                    }

                }) {
                    Text("–")
                        .font(.custom("Silkscreen-Regular", size: 100))
                        .foregroundStyle(.counterRed)
                }
                
                Spacer()
                Button(action: {
                    counterNumber = 0

                }) {
                    Text("reset")
                        .font(.custom("Silkscreen-Regular", size: 20))
                        .foregroundStyle(.counterRed)
                }
            }
            .padding()

            
        }
    }
}


#Preview {
    CounterTheme_0()
}
