ZStack{
            Rectangle()
                .fill(Color.counterWhite)
                .scaledToFill()
                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.all)
            
            
            Circle()
                .foregroundStyle(Color.counterTeal4.shadow(.inner(color: .counterTealDark, radius: 4, x: 0, y: 10)))
                .frame(width: 360, height: 360, alignment: .center)
            
            Circle()
                .foregroundStyle(Color.counterTeal3.shadow(.inner(color: .counterTealDark, radius: 4, x: 0, y: 10)))
                .frame(width: 280, height: 280, alignment: .center)
            
            Circle()
                .foregroundStyle(Color.counterTeal2.shadow(.inner(color: .counterTealDark, radius: 4, x: 0, y: 10)))
                .frame(width: 200, height: 200, alignment: .center)
            Circle()
                .foregroundStyle(Color.counterTeal1.shadow(.inner(color: .counterTealDark, radius: 4, x: 0, y: 10)))
                .frame(width: 160, height: 140, alignment: .center)
            
            Text("\(counterNumber)")
                .font(.custom("MajorMonoDisplay-Regular", size: 120))
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .shadow(color: Color.counterTealDark.opacity(1), radius: 6, x: 0, y: 20)
            
        }