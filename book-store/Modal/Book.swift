//
//  Book.swift
//  book-store
//
//  Created by maihuutai on 22/11/2022.
//

import Foundation

struct Book: Codable {
  private var id: Int
  private var title: String
  private var price: Double
  private var oldPrice: Double
  private var description: String
  private var image: String
  private var type: String
  private var date: String
  private var numbers: Int
  private var numberOfPages: Int
  private var author: String
  private var publisher: String
  private var isSaleOff: Bool
  private var rating: Double
  private var language: String
  
  
  static func callAPITest() {
    let url = URL(string: "http://localhost:8080/api/v1/books/get-books")!
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
  }
}


