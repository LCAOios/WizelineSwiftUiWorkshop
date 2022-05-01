//
//  BookListViewModel.swift
//  bookAttempt
//
//  Created by Luis Carlos Arellano Ochoa on 30/04/22.
//

import Foundation

class BookListViewModel: ViewModel {
    @Published
    var state: BookListState
    
    init(svc: BookSvc) {
        let books = BookDB().bookList()
        self.state = BookListState(svc: svc, books: books)
    }
    
    func trigger(_ input: Never) {}
}
