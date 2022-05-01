//
//  bookAttemptApp.swift
//  bookAttempt
//
//  Created by Luis Carlos Arellano Ochoa on 27/04/22.
//

import SwiftUI

@main
struct bookAttemptApp: App {
    var body: some Scene {
        WindowGroup {
            BookListView(viewModel: AnyViewModel(BookListViewModel(svc: BookDB())))
        }
    }
}
