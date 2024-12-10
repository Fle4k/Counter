//
//  CounterTheme_7.swift
//  Counter4
//
//  Created by Shahin on 10.12.24.
//

import SwiftUI

struct CounterTheme_7: View {
    @State var counterNumber: Int = 0
    @State private var isGlitching: Bool = false
    
    var body: some View {
        
        ZStack {
            
            
            Rectangle()
                .fill(Color.counterPink)
                .scaledToFill()
                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.all)
            
            Text("I")
                .offset(x: 210, y: 180)
                .font(.custom("Colchester", size: 500))
                .foregroundStyle(.counterWhite)
            Text("S")
                .offset(x: -240, y: 10)
                .font(.custom("Colchester", size: 500))
                .foregroundStyle(.counterWhite)
            
            VStack {
                Spacer()
                
                Text("\(counterNumber)")
                    .font(.custom("Colchester", size: 140))
                    .foregroundStyle(.counterWhite)
                Spacer()
                    .frame(width: 100, height: 180)
                Button(action: {
                    counterNumber += 1

                }) {
                    Image("plus")
                        .foregroundStyle(.counterWhite)
                        .frame(width: 80, height: 60)
                }
                
                Spacer()
                    .frame(width: 100, height: 80)
                
                Button(action: {
                    counterNumber -= 1
                    if counterNumber < 0 {
                        counterNumber = 0
                    }

                }) {
                    Image("minus")
                        .foregroundStyle(.counterWhite)
                        .frame(width: 80, height: 80)
                }
                
                Spacer()
                Button(action: {
                    counterNumber = 0

                }) {
                    Text("reset")
                        .font(.custom("Colchester", size: 60))
                        .foregroundStyle(.counterWhite)
                }
            }
            .padding()

            
        }
    }
}

#Preview {
    CounterTheme_7()
}
