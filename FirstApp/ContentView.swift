//
//  ContentView.swift
//  FirstApp
//
//  Created by Mengyi Gong on 3/23/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: isNight ? .white : .red,
                           middleColor: isNight ? .blue : .yellow,
                           bottomColor: isNight ? .purple : .white)
            VStack {
                Spacer()
                GreetingWords(greetingText: "Hello iOS from a Android developer!")
                Spacer()
                Button {
                    isNight.toggle()
                } label: {
                    ButtonText(showText: "Click Me")
                }
                Spacer()
            }
        }
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BackgroundView: View {
    var topColor: Color
    var middleColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, middleColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct GreetingWords: View {
    var greetingText: String
    
    var body: some View {
        Text(greetingText)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(Color.white)
            .padding()
    }
}

struct ButtonText: View {
    var showText: String
    
    var body: some View {
        Text(showText)
            .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .font(.system(size: 20, weight: .light, design: .default))
            .background(Color.white)
            .cornerRadius(10.0)
        
    }
}
