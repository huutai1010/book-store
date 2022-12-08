//
//  SearchView.swift
//  book-store
//
//  Created by maihuutai on 19/11/2022.
//

import SwiftUI
import UIKit

struct SearchView: View {
  @State var searchText: String = ""

  var body: some View {
    VStack {
      HStack {
        HStack {
          TextField("Please text here", text: $searchText)
          Image(systemName: "magnifyingglass")
            .foregroundColor(.gray)
        }
        .configUITextField()

        Image(systemName: "square.grid.2x2.fill")
          .customFilterImage()
      }
      .padding(.horizontal, 25)
      .padding(.top)

      HStack {
        VStack(alignment: .leading) {
          Text("Search Result")
            .fontWeight(.bold)
          Text("45 Books found")
        }
        Spacer()

        Image(systemName: "square.grid.2x2")
        Image(systemName: "list.bullet")
        Divider().frame(height: 30)
        Image(systemName: "fiberchannel")
      }
      .padding()
      .padding(.horizontal)

      ScrollView(.vertical) {
        ForEach(1..<6) { index in
          NewBookView(index: .constant(1))
        }
      }
      .padding(.top)
    }
  }
}


extension View {

  fileprivate func configUITextField() -> some View {
    return self
      .padding()
      .background(Color.gray.opacity(0.2))
      .cornerRadius(10)
  }
}

extension Image {
  fileprivate func customFilterImage() -> some View {
    return self
      .padding()
      .background(Color.blue)
      .foregroundColor(.white)
      .cornerRadius(10)
      .padding(.leading)
  }
}

struct SearchView_Previews: PreviewProvider {
  static var previews: some View {
    SearchView()
  }
}
