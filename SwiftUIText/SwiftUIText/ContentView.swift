//
//  ContentView.swift
//  SwiftUIText
//
//  Created by Amit Thakur on 03/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()

            Text("He who dares, \n wins!")
                .fontWeight(.bold)
                .font(.title)
                .multilineTextAlignment(.center)
                .rotation3DEffect(.degrees(30), axis: (x: 1, y: 0, z: 0))
            
            Spacer(minLength: 20.0)
            
            Text("This time next year,\n we will be millionaires.")
                .font(.headline)
                .fontWeight(.thin)
                .rotationEffect(.degrees(180))
            
            Spacer(minLength: 20.0)

            Text("**Don't be a plonker all your life!**")
                .fontWeight(.semibold)
                .font(.system(size: 24, design: .rounded))
                .foregroundColor(.teal)
            
            Spacer(minLength: 20.0)

            Text("What a **100% 24-Carat** plonker he is")
                .font(.title)
                .foregroundColor(.indigo)

            Spacer()

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
