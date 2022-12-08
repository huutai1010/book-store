//
//  BookAPI.swift
//  book-store
//
//  Created by maihuutai on 24/11/2022.
//

import Foundation

struct BookAPI {
  let host = "http://localhost:8080"

  let remoteHost = "https://mht.bookstore.com"

  let getBooksAPI = "api/v1/books/get-books"

  let updateBookAPI = "api/v1/books/update?id="

  let filterBook = "api/v1/books/filter?id="

}
