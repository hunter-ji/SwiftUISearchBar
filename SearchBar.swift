//
//  SearchBar.swift
//  Demo
//
//  Created by Kuari on 2021/5/31.
//

import SwiftUI

struct SearchBar: View {

    @Binding var search: String

    @Environment(\.colorScheme) var colorScheme

    var isLigth: Bool {
        colorScheme == .light
    }

    var body: some View {
        HStack(spacing: 12) {

            // Search Bar
            HStack {

                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)

                TextField("Search", text: $search)
                    .textFieldStyle(PlainTextFieldStyle())


                if !search.isEmpty {
                    Button(action: {
                        search = ""
                    }, label: {
                        Image(systemName: "xmark.circle")
                    })
                    .buttonStyle(PlainButtonStyle())
                }

            }
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(Color.white)
            .foregroundColor(Color.black)
            .cornerRadius(20)
            .shadow(color: (isLigth ? Color.black.opacity(0.1) : Color.white.opacity(0.2)), radius: 5, x: 5, y: 5)
            .shadow(color: (isLigth ? Color.black.opacity(0.1) : Color.white.opacity(0.2)), radius: 5, x: -1, y: -1)

        }

    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(search: .constant(""))
    }
}
