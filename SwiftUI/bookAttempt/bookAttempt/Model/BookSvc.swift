//
//  BookSvc.swift
//  bookAttempt
//
//  Created by Luis Carlos Arellano Ochoa on 30/04/22.
//

import Foundation

protocol BookSvc {
  func bookList() -> [Book]
  func bookDetails(bookId: Int) -> BookDetail

}
