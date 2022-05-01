//
//  BookListView.swift
//  bookAttempt
//
//  Created by Luis Carlos Arellano Ochoa on 30/04/22.
//

import SwiftUI

struct BookListState {
    var svc: BookSvc
    var books: [Book]
}

struct BookListView: View {
    @ObservedObject
    var viewModel: AnyViewModel<BookListState, Never>
    
    var body: some View {
        NavigationView {
            List(viewModel.state.books) {
                book in NavigationLink(destination: NavigationLazyView(BookDetailView(svc: self.viewModel.state.svc, BookId: book.id))) {
                    BookRow(book: book)
                }
            }
                    .navigationBarTitle("Book List")
        }
                    .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = AnyViewModel(BookListViewModel(svc: BookDB()))
        return BookListView(viewModel: viewModel)
    }
}

