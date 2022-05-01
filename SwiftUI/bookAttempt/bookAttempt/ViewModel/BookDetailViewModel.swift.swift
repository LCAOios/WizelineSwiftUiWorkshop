//
//  BookDetailViewModel.swift.swift
//  bookAttempt
//
//  Created by Luis Carlos Arellano Ochoa on 30/04/22.
//

import Foundation

class BookDetailViewModel: ViewModel {
    @Published
    var state: BookDetailState
    
    init(svc: BookSvc, id: Int) {
        let detail = svc.bookDetails(bookId: id)
        state = BookDetailState(svc: svc, bookDetail: detail)
    }
    
    func trigger(_ input: Void) {
        state.bookDetail = state.svc.bookDetails(bookId: state.bookDetail.bookId)
    }
    
}
