//
//  BookRow.swift
//  bookAttempt
//
//  Created by Luis Carlos Arellano Ochoa on 30/04/22.
//

import SwiftUI

struct BookRow: View {
    let book: Book
    var body: some View {
        HStack {
            BookImage(image: book.img)
            VStack(alignment: .leading) {
                Text(book.title).font(.headline)
                Text("by " + book.author).font(.subheadline).foregroundColor(.gray)
                Spacer().frame(height: 15)
                Text("$" + String(book.price)).font(.title).foregroundColor(.green)
            }
        }
    }
}
