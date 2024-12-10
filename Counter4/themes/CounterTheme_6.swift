//
//  CounterTheme_6.swift
//  Counter4
//
//  Created by Shahin on 10.12.24.
//

import SwiftUI

struct CounterTheme_6: View {
    @State var counterNumber: Int = 0
    @State private var isGlitching: Bool = false
    
    var body: some View {
        
        ZStack {
            
            
            Rectangle()
                .fill(Color.counterDarkRed)
                .scaledToFill()
                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.all)
            
            Text("*")
                .font(.custom("HVD Peace", size: 200))
                .foregroundStyle(.counterWhite)
                .offset(x: 188, y:40)
            Text("A")
                .font(.custom("HVD Peace", size: 200))
                .foregroundStyle(.counterWhite)
                .offset(x: -220, y:100)
            
            VStack {
                Spacer()
                
                Text("\(counterNumber)")
                    .font(.custom("HVD Peace", size: 140))
                    .foregroundStyle(.counterWhite)
                Spacer()
                    .frame(width: 100, height: 140)
                Button(action: {
                    counterNumber += 1

                }) {
                    Text("+")
                        .font(.custom("HVD Peace", size: 100))
                        .foregroundStyle(.counterWhite)
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
                        .font(.custom("HVD Peace", size: 100))
                        .foregroundStyle(.counterWhite)
                }
                
                Spacer()
                Button(action: {
                    counterNumber = 0

                }) {
                    Text("reset")
                        .font(.custom("HVD Peace", size: 20))
                        .foregroundStyle(.counterWhite)
                }
            }
            .padding()

            
        }
    }
}


#Preview {
    CounterTheme_6()
}
