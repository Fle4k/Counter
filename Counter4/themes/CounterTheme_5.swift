//
//  CounterTheme_5.swift
//  Counter4
//
//  Created by Shahin on 10.12.24.
//

import SwiftUI

struct CounterTheme_5: View {
    @State var counterNumber: Int = 0
    @State private var isGlitching: Bool = false
    
    var body: some View {
        
        ZStack {
            
            
            Rectangle()
                .fill(Color.counterRedBrown)
                .scaledToFill()
                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Text("\(counterNumber)")
                    .font(.custom("ManbowLines-Regular", size: 140))
                    .foregroundStyle(.counterWhite)
                Spacer()
                    .frame(width: 100, height: 140)
                Button(action: {
                    counterNumber += 1

                }) {
                    Text("+")
                        .font(.custom("ManbowLines-Regular", size: 100))
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
                        .font(.custom("ManbowLines-Regular", size: 100))
                        .foregroundStyle(.counterWhite)
                }
                
                Spacer()
                Button(action: {
                    counterNumber = 0

                }) {
                    Text("<")
                        .font(.custom("ManbowLines-Regular", size: 100))
                        .foregroundStyle(.counterWhite)
                }
            }
            .padding()

            
        }
    }
}



#Preview {
    CounterTheme_5()
}
