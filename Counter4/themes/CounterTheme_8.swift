//
//  CounterTheme_8.swift
//  Counter4
//
//  Created by Shahin on 10.12.24.
//

import SwiftUI

struct CounterTheme_8: View {
    @State var counterNumber: Int = 0
    @State private var isGlitching: Bool = false
    
    var body: some View {
        
        ZStack {
            
            
            Rectangle()
                .fill(Color.counterDarkBlue)
                .scaledToFill()
                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Text("\(counterNumber)")
                    .font(.custom("Crimescene Afterimage", size: 100))
                    .foregroundStyle(.counterDarkYellow)
                Spacer()
                    .frame(width: 100, height: 140)
                Button(action: {
                    counterNumber += 1

                }) {
                    Text("+")
                        .font(.custom("Crimescene Afterimage", size: 100))
                        .foregroundStyle(.counterDarkYellow)
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
                        .font(.custom("Crimescene Afterimage", size: 100))
                        .foregroundStyle(.counterDarkYellow)
                }
                
                Spacer()
                Button(action: {
                    counterNumber = 0

                }) {
                    HStack {
                        Text("reset")
                            .font(.custom("Crimescene Afterimage", size: 30))
                            .foregroundStyle(.counterDarkYellow)
                    }
                }
            }
            .padding()

            
        }
    }
}


#Preview {
    CounterTheme_8()
}
