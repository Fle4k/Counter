//
//  CounterTheme_3.swift
//  Counter4
//
//  Created by Shahin on 10.12.24.
//

import SwiftUI

struct CounterTheme_3: View {
    @State var counterNumber: Int = 0
    
    
    var body: some View {
        ZStack {
            
            
            
            Rectangle()
                .fill(Color.counterLime)
                .scaledToFill()
                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                
                ZStack {
                    HStack {
                        Text("{")
                            .font(.custom("GlassAntiqua-Regular", size: 120))
                            .foregroundStyle(.white)
                        Spacer()
                            .frame(width: 180)
                        
                        Text("}")
                            .font(.custom("GlassAntiqua-Regular", size: 120))
                            .foregroundStyle(.white)
                    }
                    
                    
                    
                    Text("\(counterNumber)")
                        .font(.custom("GlassAntiqua-Regular", size: 120))
                        .foregroundStyle(.white)
                }
                
                Spacer()
                    .frame(width: 100, height: 140)
                Button(action: {
                    counterNumber += 1
                    
                }) {
                    Text("+")
                        .font(.custom("GlassAntiqua-Regular", size: 100))
                        .foregroundStyle(.white)
                }
                
                Button(action: {
                    counterNumber -= 1
                    if counterNumber < 0 {
                        counterNumber = 0
                    }
                    
                }) {
                    Text("-")
                        .font(.custom("GlassAntiqua-Regular", size: 100))
                        .foregroundStyle(.white)
                }
                
                Spacer()
                
                Button(action: {
                    counterNumber = 0
                    
                }) {
                    
                    Text("reset")
                        .font(.custom("GlassAntiqua-Regular", size: 35))
                        .foregroundStyle(.white)
                }
                
            }
            .padding()
            
            
        }
    }
    
    
    
}



#Preview {
    CounterTheme_3()
}
