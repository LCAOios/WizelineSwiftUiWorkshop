//
//  Genre.swift
//  bookAttempt
//
//  Created by Luis Carlos Arellano Ochoa on 01/05/22.
//

import SwiftUI

struct Genre: Identifiable {
    var id: Int
    var description: String
    
    
    static let fantasy = Genre(id: 0, description: "Fantasy")
    static let action = Genre(id: 1, description: "Action")
    static let history = Genre(id: 1, description: "History")
    static let present = Genre(id: 1, description: "Present")
    static let business = Genre(id: 1, description: "Business")
    static let economics = Genre(id: 1, description: "Economics")
    static let scienceFiction = Genre(id: 1, description: "Science Fiction")
    static let drama = Genre(id: 1, description: "Drama")
    
}


