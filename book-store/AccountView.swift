//
//  AccountView.swift
//  book-store
//
//  Created by maihuutai on 19/11/2022.
//

import SwiftUI

struct AccountView: View {
  var body: some View {
    ZStack {
      Color.blue.opacity(0.2)
      VStack {
        Spacer()


        ZStack(alignment: Alignment.top) {
          
          Color.white.opacity(0.5)
            .cornerRadius(30)
          .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.7)

          Image("avatar")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .padding(.bottom, 60)
        }
      }

    }
    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    .ignoresSafeArea()
  }
}

struct AccountView_Previews: PreviewProvider {
  static var previews: some View {
    AccountView()
  }
}
