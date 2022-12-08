//
//  BookDetailView.swift
//  book-store
//
//  Created by maihuutai on 19/11/2022.
//

import SwiftUI

struct BookDetailView: View {
  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

  var body: some View {
    ZStack {
      VStack {
        Spacer()
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
        .foregroundColor(.black.opacity(0.6))

        VStack {
          Image("b_1")
            .resizable()
            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.3)
            .aspectRatio(contentMode: .fill)
            .clipped()
        }
        .frame(height: UIScreen.main.bounds.height * 0.4)


        ZStack {
          VStack {
            HStack {
              Text("$20.00")
                .padding(.leading)
                .font(.system(size: 25))
                .foregroundColor(.green.opacity(0.8))
              Spacer()
            }
            HStack {
              Text("A Love Hate Thing")
                .font(.custom("DMSerifDisplay-Regular", size: 25))
                .padding(.leading)
              Spacer()
              Image(systemName: "bookmark.circle.fill")
                .font(.system(size: 35))
                .foregroundColor(.green.opacity(0.9))
                .padding(.trailing)
            }

            HStack {
              Text("Whitney D.Grandison")
                .foregroundColor(.gray)
                .padding(.leading)
              Spacer()
            }


            HStack {
              Spacer()
              VStack {
                Text("Rating")
                Text("4.1")
                  .fontWeight(.bold)
              }
              Spacer()
              VStack {
                Text("Number of pages")
                Text("120 Page")
                  .fontWeight(.bold)
              }
              Spacer()
              VStack {
                Text("Language")
                Text("ENG")
                  .fontWeight(.bold)
              }
              Spacer()
            }
            .font(.system(size: 13))
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            .padding(.horizontal)
            .padding(.top)


            Text("Gallery West Residence is an apartment that is part of the AKR Gallery West mixed-use complex that is integrated with office")
              .font(.system(size: 12))
              .padding(.horizontal)
              .padding(.vertical)


            HStack {
              HStack {
                Text("QTY             ")
                  .foregroundColor(.gray)
                Image(systemName: "minus")
                  .foregroundColor(.gray)
                Text("2")
                  .foregroundColor(.green)
                Image(systemName: "plus")
                  .foregroundColor(.gray)
              }
              .padding(.horizontal)
              .padding(.vertical)
              .background(Color.gray.opacity(0.1))
              .cornerRadius(10)
              .padding(.leading)


              Spacer()

              VStack {
                Text("Add to Cart")
              }
              .padding(.horizontal, 30)
              .padding(.vertical)
              .background(Color.orange)
              .foregroundColor(.white)
              .cornerRadius(10)
              .padding(.trailing)
            }

          }

        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.45)
        .background(Color.white)
        .cornerRadius(30)

      }
      .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
      .background(Color.gray.opacity(0.1))
    }
    .navigationBarHidden(true)
    .toolbar(.hidden, for: .tabBar)
  }
}

struct BookDetailView_Previews: PreviewProvider {
  static var previews: some View {
    BookDetailView()
  }
}
