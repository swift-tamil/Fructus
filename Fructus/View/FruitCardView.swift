//
//  FruitCardView.swift
//  Fructus
//
//  Created by python on 04/11/23.
//

import SwiftUI

struct FruitCardView: View {
    
    //MARK: PROPERTIES
    
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    
    //MARK: BODY
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 20)
            {
                
                // FRUIT : IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // FRUIT : Text
                
                Text(fruit.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 2, x: 2, y: 2)
                
                // FRUIT : TextHeadLine
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 480)
                
                // FRUIT : StartButton
                
                StartButtonView()
            }
        }
        .onAppear{
            withAnimation(.easeInOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity,minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        
    }
}

//MARK: PREVIEW

#Preview {
    FruitCardView(fruit: fruitData[0])
        .previewLayout(.fixed(width: 320, height: 640))
}
