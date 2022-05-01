//
//  Book.swift
//  bookAttempt
//
//  Created by Luis Carlos Arellano Ochoa on 30/04/22.
//

import SwiftUI

struct Book: Identifiable {
    var id: Int
    var title: String
    var author: String
    var price: Double
    var imgName: String
}

extension Book {
    var img: Image {
        ImageStore.shared.image(name: imgName)
    }
}
