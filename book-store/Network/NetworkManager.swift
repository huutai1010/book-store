//
//  NetworkManager.swift
//  book-store
//
//  Created by maihuutai on 21/11/2022.
//

import Foundation
import UIKit

class NetworkManager {
  let bookAPI: BookAPI = BookAPI()

  public func getBooksList() {
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
  }
}
