//
//  ContentView.swift
//  bookAttempt
//
//  Created by Luis Carlos Arellano Ochoa on 27/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image("img")
            .resizable()
            .frame(width: 170, height: 260)
            .cornerRadius(35.0)
            .shadow(radius: 13.0)
            Text("J. R. R. Tolkien")
                .fontWeight(.bold)
                .font(.custom("arial", size: 15))
                .foregroundColor(Color(hue: 0.0, saturation: 0.077, brightness: 0.519, opacity: 0.537))
            Text("The Fellowship of the Ring")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .font(.custom("arial", size: 20))
            Text(" ")
            Text("The Feloowship of the Rings is the first of the three volumes in The Lord of the Rings, an epic set in the fictional world of Middle-earth. The Lord of the Rings is an entity named Sauron, the Dark Lord,...")
                .fontWeight(.bold)
                .font(.custom("arial", size: 15))
                .foregroundColor(Color(hue: 0.0, saturation: 0.077, brightness: 0.519, opacity: 0.537))
                .multilineTextAlignment(.center)
                .lineSpacing(5)
            HStack {
                Button("Fatasy", action: {})
                    .padding(6)
                    .foregroundColor(Color.black)
                    .overlay(RoundedRectangle(cornerRadius: 55)
                        .stroke(Color.black, lineWidth: 2))
                Button("Action", action: {})
                    .padding(6)
                    .foregroundColor(Color.black)
                    .overlay(RoundedRectangle(cornerRadius: 55)
                        .stroke(Color.black, lineWidth: 2))
                Button("Novel", action: {})
                    .padding(6)
                    .foregroundColor(Color.black)
                    .overlay(RoundedRectangle(cornerRadius: 55)
                        .stroke(Color.black, lineWidth: 2))
            }
            Divider()
            Text(" ")
            Button( action: {}, label:
                        {
                            Text("Buy for 18.85$")
                            .padding(6)
                            .background(Color.black)
                            .foregroundColor(Color.white)
                            .cornerRadius(90)
                        }
            )
            
                

        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
