//
//  HomeView.swift
//  book-store
//
//  Created by maihuutai on 19/11/2022.
//

import SwiftUI
import UIKit

struct HomeView: View {
  @State var avatarName: String = "avatar"
  
  var body: some View {
    VStack {
      
      NavigationBarCustomView(avatarName: $avatarName)
      
      ScrollView(.vertical, showsIndicators: false) {
        //        ScrollView(.horizontal, showsIndicators: false) {
        //          HStack {
        //            ForEach(1..<6) { index in
        //              SaleView()
        //                .padding(.horizontal, 5)
        //            }
        //          }
        //        }
        //        .padding(.vertical)
        
        HStack {
          Text("Book store")
            .customPopularTitleView()
            //.font(.custom("DMSerifDisplay-Regular", size: 40))
            .font(.custom("PlayfairDisplay-Bold", size: 40))
          Spacer()
        }
        .padding(.horizontal, 25)
        
        ScrollView(.horizontal, showsIndicators: false) {
          NavigationLink(destination: BookDetailView()) {
          HStack {
            ForEach(1..<8) { index in
                VStack(alignment: .leading) {
                  Image("a_\(index)")
                    .customBookImageV2()

                  VStack(alignment: .leading) {
                    Text("A Burning")
                      .fontWeight(.bold)

                    Text("David Jr.S")
                      .font(.system(size: 15))
                  }
                }
                .foregroundColor(.black)
                .padding(.leading, 25)
              }
            }
          }
        }

        HStack {
          Text("Popular")
            .customPopularTitleView()
            .font(.custom("DMSerifDisplay-Regular", size: 25))
          Spacer()
        }
        .padding(.horizontal, 25)

        ScrollView(.horizontal, showsIndicators: false) {
          NavigationLink(destination: BookDetailView()) {
            HStack {
              ForEach(1..<5) { index in
                VStack(alignment: .leading) {
                  Image("b_\(index)")
                    .customBookImage()

                  VStack(alignment: .leading) {
                    Text("A Burning")
                      .fontWeight(.bold)

                    Text("David Jr.S")
                      .font(.system(size: 15))
                  }
                }
                .foregroundColor(.black)
                .padding(.leading, 25)
              }
            }
          }

        }

        HStack {
          Text("Trending")
            .customPopularTitleView()
            .font(.custom("DMSerifDisplay-Regular", size: 25))
          Spacer()
        }
        .padding(.horizontal, 25)

        ScrollView(.horizontal, showsIndicators: false) {
          HStack {
            ForEach(1..<5) { index in
              VStack(alignment: .leading) {
                Image("c_\(index)")
                  .customBookImage()

                VStack(alignment: .leading) {
                  Text("A Burning")
                    .fontWeight(.bold)

                  Text("David Jr.S")
                    .font(.system(size: 15))
                }
              }
              .padding(.leading, 25)
            }
          }
        }


        HStack {
          Text("Recommend")
            .customPopularTitleView()
            .font(.custom("DMSerifDisplay-Regular", size: 25))
          Spacer()
        }
        .padding(.horizontal, 25)

        ScrollView(.horizontal, showsIndicators: false) {
          HStack {
            ForEach(1..<5) { index in
              VStack(alignment: .leading) {
                Image("d_\(index)")
                  .customBookImage()

                VStack(alignment: .leading) {
                  Text("A Burning")
                    .fontWeight(.bold)

                  Text("David Jr.S")
                    .font(.system(size: 15))
                }
              }
              .padding(.leading, 25)
            }
          }
        }
        //        HStack(alignment: .bottom) {
        //          Text("New Books")
        //            .customNewBookSectionView()
        //          Spacer()
        //
        //          NavigationLink(destination: ContentView()) {
        //            Text("More")
        //              .fontWeight(.regular)
        //              .foregroundColor(.blue)
        //          }
        //        }
        //        .padding(.horizontal, 25)
        //        OptionNewBookView()
      }
    }
  }
}

struct NewBookItemView: View {
  @State var bookName: String = ""
  @State var author: String = ""
  
  var body: some View {
    
    VStack(alignment: .leading) {
      Image("book_1")
        .customBookImage()
      
      VStack(alignment: .leading) {
        Text("A Burning")
          .fontWeight(.bold)
        
        Text("David Jr.S")
          .font(.system(size: 15))
      }
    }
    .padding(.leading, 25)
    
  }
}


extension View {
  
  fileprivate func customNewBookSectionView() -> some View {
    return self
      .fontWeight(.bold)
      .padding(.top, 20)
      .font(.system(size: 23))
  }
  
  
  fileprivate func customPopularTitleView() -> some View {
    return self
      .fontWeight(.bold)
      .padding(.top, 20)
    //.font(.system(size: 23))
  }
}



extension Image {
  fileprivate func customBookImage() -> some View {
    return self
      .resizable()
      .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.2)
      .aspectRatio(contentMode: .fill)
      .clipped()
    //.cornerRadius(5)
    //.shadow(radius: 3)
  }

  fileprivate func customBookImageV2() -> some View {
    return self
      .resizable()
      .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.2)
      .aspectRatio(contentMode: .fill)
      .clipped()
      .cornerRadius(5)
    //.shadow(radius: 3)
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
