//
//  BottomTabBarView.swift
//  book-store
//
//  Created by maihuutai on 18/11/2022.
//

import SwiftUI

struct BottomTabBarView: View {
  var body: some View {
    VStack {
      Spacer()
      HStack {
        Spacer()
        Image(systemName: "house.fill")
          .foregroundColor(.blue)
        Spacer()
        Image(systemName: "magnifyingglass")
          .foregroundColor(.gray.opacity(0.5))
        Spacer()
        Image(systemName: "cart.fill")
          .foregroundColor(.gray.opacity(0.5))

        Spacer()
      }
      .font(.system(size: 20))
      .fontWeight(.medium)
      .frame(height: UIScreen.main.bounds.height * 0.07)
      .cornerRadius(15)
    }
    .ignoresSafeArea()
    .padding(.bottom, 30)
  }

}

struct BottomTabBarView_Previews: PreviewProvider {
  static var previews: some View {
    BottomTabBarView()
  }
}
