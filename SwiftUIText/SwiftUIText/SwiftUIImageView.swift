//
//  SwiftUIImageView.swift
//  SwiftUIText
//
//  Created by Amit Thakur on 04/05/2023.
//

import SwiftUI

struct SwiftUIImageView: View {
    var body: some View {
//        Image(systemName: "cloud.heavyrain")
//            .font(.system(size: 100))
//            .foregroundColor(.blue)
//            .shadow(color: .gray, radius: 10)
//

        
        Image("Biker")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay (
                Text("Amit Thakur\n")
                    .font(.system(size: 22, weight: .heavy))
                    .opacity(0.75)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center),
                
                alignment:.bottom
            
            )
    }
}

struct SwiftUIImageView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIImageView()
    }
}
