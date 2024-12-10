//
//  CounterTheme_1.swift
//  Counter4
//
//  Created by Shahin on 10.12.24.
//

import SwiftUI

struct CounterTheme_1: View {
    @State var counterNumber: Int = 0
    
    var body: some View {
        
        ZStack {
            

            
            Rectangle()
                .fill(Color.counterMidBrown)
                .scaledToFill()
                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
      
                
                Text("\(counterNumber)")
                    .font(.custom("BungeeOutline-Regular", size: 120))
                    .foregroundStyle(.counterLightBlue)
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 80)
//                            .stroke(lineWidth: 1)
//                            .foregroundColor(.counterLightBlue)
//                            .frame(width: 360, height: 140)
//                    )
                    
                
                
                Spacer()
                    .frame(width: 100, height: 140)
                Button(action: {
                    counterNumber += 1

                }) {
                    Text("+")
                        .font(.custom("BungeeOutline-Regular", size: 100))
                        .foregroundStyle(.counterLightBlue)
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
                        .font(.custom("BungeeOutline-Regular", size: 100))
                        .foregroundStyle(.counterLightBlue)
                }
                
                Spacer()
                Button(action: {
                    counterNumber = 0

                }) {
                    
                    Image(systemName: "arrow.trianglehead.clockwise")
                        .fontWeight(.ultraLight)

                        .font(.custom("sf-pro-text-medium", size: 40))
                        .foregroundStyle(.counterLightBlue)
                }
                
            }
            .padding()

            
        }
    }
}


#Preview {
    CounterTheme_1()
}
