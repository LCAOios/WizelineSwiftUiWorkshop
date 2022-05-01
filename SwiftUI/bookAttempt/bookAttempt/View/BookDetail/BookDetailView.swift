//
//  BookDetailView.swift
//  bookAttempt
//
//  Created by Luis Carlos Arellano Ochoa on 30/04/22.
//

import SwiftUI

struct BookDetailState {
    var svc: BookSvc
    var bookDetail: BookDetail
}

struct BookDetailView: View {
    @ObservedObject
    var viewModel: AnyViewModel<BookDetailState, Void>
    
    @State private var showModal = false;
    @State private var showAlert = false
    @State private var animate = false
    
    var randomMinRange = 5.0
    var randomMaxRange = 8.0
    
    init(svc: BookSvc, BookId: Int) {
        self.viewModel = AnyViewModel(BookDetailViewModel(svc: svc, id: BookId))
    }
    
    var body: some View {
        VStack {
            BookDetailImage(image: viewModel.bookDetail.image)
                .scaleEffect(animate ? 1 : 0.1)
                .rotationEffect(.degrees(animate ? 0: 180))
                .opacity(animate ? 1 : 0)
            
            Spacer()
                .frame(height: 30)
            
            Text(viewModel.bookDetail.author)
                .foregroundColor(.gray)
            
            
            Text(viewModel.bookDetail.title)
                .font(.system(size: 24, weight: .semibold))
                .foregroundColor(.gray)
                
            
            Text(viewModel.bookDetail.description)
                .foregroundColor(.gray)
            
            Spacer()
                .frame(height: 20)
            
            HStack(spacing: 20) {
                ForEach(0 ..< viewModel.bookDetail.genre.count, id: \.self) {
                    index in BookDetailLabel(text: self.viewModel.bookDetail.genre[index].description)
                        .rotationEffect(.degrees(animate ? 0 : 180))
                        .opacity(animate ? 1: 0)
                        .animation(.spring(response: 0.7, dampingFraction: 0.4, blendDuration: 100).delay(Double.random(in: randomMinRange..<randomMaxRange) * 0.1), value: animate)
                }
                BookDetailLabel(text: viewModel.bookDetail.kind)
                    .rotationEffect(.degrees(animate ? 0 : 180))
                        .opacity(animate ? 1 : 0)
                        .animation(.spring(response: 0.7, dampingFraction: 0.4, blendDuration: 100).delay(Double.random(in: randomMinRange..<randomMaxRange) * 0.1), value: animate)
            }
                .padding(.bottom, 10)
                                    
            Divider()
                .padding(.bottom, 30)
                .padding([.leading, .trailing], 20)
                                    
            Button(action: {}) {
                BookDetailButton(text: "Buy for $" + String(viewModel.bookDetail.price), buttonColor: Color.black)
            }
            
            
        }
        .onAppear {
            withAnimation {
                animate.toggle()
            }
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        return BookDetailView(svc: BookDB(), BookId: 2)
    }
}


