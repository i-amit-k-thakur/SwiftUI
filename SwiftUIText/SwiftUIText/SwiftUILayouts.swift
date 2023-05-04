//
//  SwiftUILayouts.swift
//  SwiftUIText
//
//  Created by Amit Thakur on 04/05/2023.
//

import SwiftUI

struct SwiftUILayouts: View {
    var body: some View {
        VStack{
            HeaderView()
            HStack {
                CharacterView(firstName: "Derek", lastName: "Trotter", alias: "'Del Boy'", isStar: true)
                CharacterView(firstName: "Rodney", lastName: "Trotter", isStar: true)
            }
            .padding(.horizontal)
            HStack {
                CharacterView(firstName: "Racquel", lastName: "Trotter")
                CharacterView(firstName: "Cassandra", lastName: "Trotter")

            }
            .padding(.horizontal)
            HStack {
                CharacterView(firstName: "Edward", lastName: "Trotter", alias: "'Grandad'")
                CharacterView(firstName: "Uncle", lastName: "Trotter")
            }
            .padding(.horizontal)
            
            HStack {
                CharacterView(firstName: "Herman", lastName: "Boyce", alias: "'Boycie'")
                CharacterView(firstName: "Colin", lastName: "Bell", alias: "'Trigger'")
            }
            .padding(.horizontal)

        }

    }
}

struct SwiftUILayouts_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILayouts()
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Only Fools")
                .font(.system(.largeTitle, design:.serif))
                .fontWeight(.black)
            Text("&")
                .font(.system(.largeTitle, design:.serif))
                .fontWeight(.black)
            Text("Horses")
                .font(.system(.largeTitle, design:.serif))
                .fontWeight(.black)
        }

    }
}


struct CharacterView: View {
    var firstName:String?
    var lastName:String?
    var alias:String?
    var isStar:Bool = false
    
        
    var body: some View {
        VStack(alignment: .center) {
            if isStar {
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }.padding(2)
            }
            if let firstName = firstName {
                Text(firstName)
                    .font(.system(.title3, design:.serif))
                    .fontWeight(.thin)
                    .foregroundColor(.white)
            }
            
            if let alias = alias {
                Text(alias)
                    .font(.system(.title2, design:.rounded))
                    .fontWeight(.black)
                    .foregroundColor(.white)
            }

            if let lastName = lastName {
                Text(lastName)
                    .font(.system(.title3, design:.serif))
                    .fontWeight(.thin)
                    .foregroundColor(.white)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(30)
        .background(Color(red: Double(Double(Int.random(in: 1...200))/255.0),
                          green: Double(Double(Int.random(in: 1...200))/255.0),
                          blue: Double(Double(Int.random(in: 1...200))/255.0)))
        .cornerRadius(10)
    }
}
