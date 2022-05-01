//
//  BookDetailLabel.swift
//  bookAttempt
//
//  Created by Luis Carlos Arellano Ochoa on 30/04/22.
//

import SwiftUI

struct BookDetailLabel: View  {
    var text: String
    var body: some View {
        Text(text)
            .fontWeight(.bold)
            .padding(7)
            .overlay( RoundedRectangle(cornerRadius:20)
                .stroke(Color.gray, lineWidth: 1)
            )
    }
}

struct BookDetailLabelView_Previews: PreviewProvider{
    static var previews: some View {
        BookDetailLabel(text: "Fantasy")
    }
}
