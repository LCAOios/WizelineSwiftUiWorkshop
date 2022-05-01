//
//  BookDetailButton.swift
//  bookAttempt
//
//  Created by Luis Carlos Arellano Ochoa on 01/05/22.
//

import SwiftUI

struct BookDetailButton: View {
    var text: String
    var buttonColor: Color
    var body: some View {
        HStack{
            Text(text)
                .fontWeight(.semibold)
        }
        .frame(width: 200)
        .padding()
        .foregroundColor(.white)
        .background(buttonColor)
        .cornerRadius(40)
    }
}
