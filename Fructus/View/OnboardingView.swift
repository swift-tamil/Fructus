//
//  OnboardingView.swift
//  Fructus
//
//  Created by python on 04/11/23.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits: [Fruit] = fruitData
    
    var body: some View {
        
        TabView {
            
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
                
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }//:TAB
}

//MARK: PREVIEW

#Preview {
    OnboardingView()
}
