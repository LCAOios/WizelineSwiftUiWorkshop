//
//  BookDetail.swift
//  bookAttempt
//
//  Created by Luis Carlos Arellano Ochoa on 30/04/22.
//

import SwiftUI

struct BookDetail {
    var id: Int
    var bookId: Int
    var author: String
    var title: String
    var price: Double
    var genre: [Genre]
    var kind: String
    var description: String
    var imgName: String
    var isAvailable: Bool
}

extension BookDetail {
    var image: Image {
        ImageStore.shared.image(name: imgName)
    }
}
