//
//  CartView.swift
//  book-store
//
//  Created by maihuutai on 30/11/2022.
//

import SwiftUI

struct CartView: View {
  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

  var body: some View {
    VStack {
      HStack {
        Button {
          self.presentationMode.wrappedValue.dismiss()
        } label: {
          Image(systemName: "arrow.backward")
            .font(.system(size: 20))
            .padding(.leading)
        }

        Spacer()
        Text("Detail Book")
          .font(.custom("DMSerifDisplay-regular", size: 20))
        Spacer()
        Image(systemName: "text.alignright")
          .font(.system(size: 20))
          .padding(.trailing)
      }
      .padding(.vertical)
      .foregroundColor(.black.opacity(0.6))
      
      ScrollView(.vertical, showsIndicators: false) {

        NavigationLink(destination: BookDetailView()) {
          VStack {
            ForEach(1..<10) { index in
              ItemView()
            }
          }
        }
      }

      HStack {
        Spacer()

          Text("Total: ")
            .font(.custom("PlayfairDisplay-Bold", size: 25))
            .fontWeight(.bold)
          +
          Text("1500$")
          .font(.system(size: 20))

        Spacer()
        VStack {
          Text("Payment")
            .foregroundColor(.white)
            .fontWeight(.bold)
        }
        .padding(.vertical)
        .padding(.horizontal, 25)
        .background(Color.green)
        .cornerRadius(5)
        Spacer()
      }
      .padding(.top)
      .padding(.bottom, 30)
      .background(Color.gray.opacity(0.1))
    }
    .navigationBarHidden(true)
    .toolbar(.hidden, for: .tabBar)
    .edgesIgnoringSafeArea(.bottom)
  }
}

struct ItemView: View {
  var body: some View {
    HStack {
      NavigationLink(destination: BookDetailView()) {
        Image("c_4")
          .customBookProductImage()
        .padding(.leading, 25)
      }

      VStack(alignment: .leading) {
        Text("The Advanture")
          .font(.custom("PlayfairDisplay-Bold", size: 20))
          .foregroundColor(.black)

        Text("$1100")
          .fontWeight(.bold)
          .font(.system(size: 20))
          .foregroundColor(.green)

        HStack {
          Image(systemName: "plus")
            .padding(.horizontal)
          Text("3")
            .fontWeight(.bold)
          Image(systemName: "minus")
            .padding(.horizontal)
        }
        .padding(.vertical)
        .foregroundColor(.black)

        .background(Color.gray.opacity(0.2))
        .cornerRadius(5)
      }
      .padding(.leading, 30)
      Spacer()
    }
    .padding(.bottom)
  }
}

extension Image {
  func customBookProductImage() -> some View {
    return self
      .resizable()
      .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.2)
  }
}

struct CartView_Previews: PreviewProvider {
  static var previews: some View {
    CartView()
  }
}
