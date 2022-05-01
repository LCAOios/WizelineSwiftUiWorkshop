//
//  BookReadingView.swift
//  bookAttempt
//
//  Created by Luis Carlos Arellano Ochoa on 01/05/22.
//

import SwiftUI

struct BookReadingView: View {
    var titleBook: String
    var body: some View {
        VStack {
            Text(titleBook)
                .font(.largeTitle)
            Divider()
            
            Text("Some text")
                .padding(30)
        }
    }
}
