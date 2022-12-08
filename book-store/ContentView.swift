//
//  ContentView.swift
//  book-store
//
//  Created by maihuutai on 17/11/2022.
//

import SwiftUI

struct ContentView: View {
  @State var selectedIndex: Int = 0

  var body: some View {
    TabView(selection: $selectedIndex) {
      NavigationStack {
        HomeView()
      }
      .tabItem {
        Label("Home", systemImage: "house")
      }

      SearchView()
        .tabItem {
          Label("Search", systemImage: "magnifyingglass")
        }

      NavigationStack {

      }
      .badge(2)
      .tabItem {
        Label("Notification", systemImage: "bell")
      }

      AccountView()
        .tabItem {
          Label("Account", systemImage: "person")
        }
    }
    .onAppear {
      let appearance = UITabBarAppearance()
      appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
      UITabBar.appearance().standardAppearance = appearance
      UITabBar.appearance().scrollEdgeAppearance = appearance
    }
  }
}


struct NavigationBarCustomView: View {
  @Binding var avatarName: String

  var body: some View {
    HStack {

      NavigationLink(destination: ContentView()) {
        Image("\(avatarName)")
          .customizeUserAvatar()
      }

      Text("Hi, Tai!")
        .fontWeight(.bold)
        .font(.custom("DMSerifDisplay-Regular", size: 20))

      Spacer()

      NavigationLink(destination: CartView()) {
        Image(systemName: "cart.fill")
          .customizeNotificationImage()
      }
    }
  }
}

extension Image {
  fileprivate func customizeUserAvatar() -> some View {
    return self
      .resizable()
      .aspectRatio(contentMode: .fit)
      .clipShape(Circle())
      .frame(width: 50, height: 50)
      .padding(.leading)
    
  }


  fileprivate func customizeBookProduct() -> some View {
    return self
      .resizable()
      .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.2)
      .aspectRatio(contentMode: .fill)
      .clipped()
      .shadow(radius: 3)
  }


  fileprivate func customizeNotificationImage() -> some View {
    return self
      .font(.system(size: 30))
      .fontWeight(.thin)
      .padding(.trailing)
      .foregroundColor(.black)
  }
}


struct OptionNewBookView: View {
  var body: some View {
    ForEach(1..<4) { index in
      NewBookView(index: .constant(2))
    }
  }
}

struct SaleView: View {
  var body: some View {
    ZStack {
      Image("fl_3")
        .resizable()
        .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.1)
    }
    .cornerRadius(15)
  }
}


struct NewBookView: View {
  @Binding var index: Int
  @State var isSelected: Bool = false

  var body: some View {
    HStack {
      Image("b_\(index)")
        .customizeBookProduct()

      VStack(alignment: .leading) {

        Text("The Advanture")
          .fontWeight(.bold)
        Text("Richard Kalee")
          .foregroundColor(.gray)
        Spacer()
        HStack {
          Text("$22.4")
            .fontWeight(.bold)
            .foregroundColor(.blue)

          Text("$50")
            .strikethrough()
            .foregroundColor(.gray)
        }
      }
      .padding(.vertical)
      .padding(.leading)

      Spacer()
      
      VStack(alignment: .trailing) {
        Button {
          isSelected = !isSelected

        } label: {
          Image(systemName: "heart.fill")
            .foregroundColor(isSelected ? .red : .gray)
        }

        Spacer()
        Text("★4.3")
          .foregroundColor(.orange)
      }
      .padding(.vertical)

    }
    .font(.system(size: 20))
    .padding(.horizontal, 25)
    .padding(.bottom)
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

