//
//  BookManager.swift
//  book-store
//
//  Created by maihuutai on 27/11/2022.
//

import Foundation

class BookManager {
  let bookAPI: BookAPI = BookAPI()


  // Gets all books
  public func getAllBooksCollection() -> [Book]? {
    var books: [Book] = []
    let url = URL(string: bookAPI.getBooksAPI)!
    var request = URLRequest(url: url)
    request.httpMethod = "GET"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
      if let data = data {
        if let books = try? JSONDecoder().decode([Book].self, from: data) {
          print(books)
        } else {
          print("Invalid Response")
        }
      } else if let error = error {
        print("HTTP Request Failed \(error)")
      }
    }
    task.resume()
    return books
  }


  // Search book product by id
  public func searchBookProductById(id: Int) -> Book? {
    var book: Book? = nil
    let url = URL(string: bookAPI.filterBook + "\(id)")!
    var request = URLRequest(url: url)
    request.httpMethod = "GET"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
      if let data = data {
        if let books = try? JSONDecoder().decode(Book.self, from: data) {
          print(books)
        } else {
          print("Invalid Response")
        }
      } else if let error = error {
        print("HTTP Request Failed \(error)")
      }
    }
    task.resume()
    return book
  }


//
//  fileprivate func get filterBookWithRating() -> [Book]? {
//    var listBooks: [Book] = []
//    let url = URL(string: "http://locahost:8080/books/get")!
//    var request = URLRequest(url: url)
//    request.httpMethod = "GET"
//    request.setValue("application /json", forHTTPHeaderField: "Content-Type")
//    let task = URLSession.shared.dataTask(with: request) { data, response, error in
//      if let data = data {
//        if let books = try? Decoder().decode([Book].self, from: data) {
//
//        }
//      }
//    }
//    return listBooks
//  }
}

