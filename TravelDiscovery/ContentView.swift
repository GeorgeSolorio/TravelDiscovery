//
//  ContentView.swift
//  TravelDiscovery
//
//  Created by George Solorio on 11/27/20.
//

import SwiftUI

struct ContentView: View {
   
   init() {
      UINavigationBar.appearance().largeTitleTextAttributes = [
         .foregroundColor: UIColor.white
      ]
   }
   
   var body: some View {
      NavigationView {
         
         ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.7097949982, blue: 0, alpha: 1)), Color(#colorLiteral(red: 0.9032120109, green: 0.4328962564, blue: 0, alpha: 1))]), startPoint: .top, endPoint: .center)
               .ignoresSafeArea()
            
            Color(.init(white: 0.95, alpha: 1))
               .offset(y: 400)
            
            ScrollView {
               
               HStack {
                  Image(systemName: "magnifyingglass")
                  Text("Where do you want to go?")
                  Spacer()
               }
               .font(.system(size: 14, weight: .semibold))
               .foregroundColor(.white)
               .padding()
               .background(Color(.init(white: 1, alpha: 0.3)))
               .cornerRadius(10)
               .padding(8)
               
               DiscoverCategoriesView()
               
               VStack {
                  PopularDestinationsView()
                  
                  PopularRestaurantsView()
                  
                  TrendingCreatorsView()
               }.background(Color(.init(white: 0.95, alpha: 1)))
               .cornerRadius(16)
               .padding(.top, 32)
               
            }.navigationTitle("Discover")
         }
      }
   }
}


// MARK: - Models
struct Destination: Hashable {
   let name, country, imageName: String
}

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      ContentView()
   }
}

struct Restaurants: Hashable {
   let name, imageName: String
}

struct User: Hashable {
   let name, imageName: String
}

// MARK: - Popular Destinations View
struct PopularDestinationsView: View {
   
   let destinations: [Destination] = [
      .init(name: "Paris", country: "France", imageName: "eiffel_tower"),
      .init(name: "Tokyo", country: "Japan", imageName: "japan"),
      .init(name: "New York", country: "USA", imageName: "new_york"),
   ]
   
   var body: some View {
      
      HStack {
         Text("Popular destinations")
            .font(.system(size: 14, weight: .semibold))
         Spacer()
         Text("See all")
            .font(.system(size: 12, weight: .semibold))
      }.padding(.horizontal)
      .padding(.top)
      
      ScrollView(.horizontal) {
         HStack(spacing: 8.0) {
            ForEach(destinations, id: \.self) { destination in
               VStack(alignment: .leading, spacing: 0) {
                  
                  Image(destination.imageName)
                     .resizable()
                     .scaledToFill()
                     .frame(width: 125, height: 125)
                     .cornerRadius(5)
                     .padding(.horizontal, 6)
                     .padding(.vertical, 6)
                  
                  Text(destination.name)
                     .font(.system(size: 12, weight: .semibold))
                     .padding(.horizontal, 12)
                  
                  Text(destination.country)
                     .font(.system(size: 12, weight: .semibold))
                     .padding(.horizontal, 12)
                     .padding(.bottom, 8)
                     .foregroundColor(.gray)
               }
               .background(Color.white)
               .cornerRadius(5.0)
               .shadow(color: .init(.sRGB, white: 0.8, opacity: 1), radius: 4, x: 0.0, y: 2)
               .padding(.bottom)
            }
         }.padding(.horizontal)
      }
   }
}

// MARK: - Popular Restaurants View
struct PopularRestaurantsView: View {
   
   let restaurants: [Restaurants] = [
      .init(name: "Japan's Finest Tapas", imageName: "tapas"),
      .init(name: "Bar & Grill", imageName: "bar_grill"),
   ]
   
   var body: some View {
      
      HStack {
         Text("Popular places to eat")
            .font(.system(size: 14, weight: .semibold))
         Spacer()
         Text("See all")
            .font(.system(size: 12, weight: .semibold))
      }.padding(.horizontal)
      .padding(.top)
      
      ScrollView(.horizontal) {
         HStack(spacing: 8.0) {
            ForEach(restaurants, id: \.self) { restaurant in
               
               HStack(spacing: 8.0) {
                  Image(restaurant.imageName)
                     .resizable()
                     .scaledToFill()
                     .frame(width: 60, height: 60)
                     .clipped()
                     .cornerRadius(5)
                     .padding(.leading, 6)
                     .padding(.vertical, 6)
                  
                  VStack(alignment: .leading, spacing: 6) {
                     
                     HStack {
                        Text(restaurant.name)
                        Spacer()
                        Button(action: {}, label: {
                           Image(systemName: "ellipsis")
                              .foregroundColor(.gray)
                        })
                     }
                     
                     HStack {
                        Image(systemName: "star.fill")
                        Text("4.7 • Sushi • $$")
                     }
                     
                     Text("Tokyo, Japan")
                  }.font(.system(size: 12, weight: .semibold))
                  
                  Spacer()
               }
               .frame(width: 240)
               .background(Color.white)
               .cornerRadius(5.0)
               .shadow(color: .init(.sRGB, white: 0.8, opacity: 1), radius: 4, x: 0.0, y: 2)
               .padding(.bottom)
            }
         }.padding(.horizontal)
      }
   }
}

// MARK: - Trending Creators View
struct TrendingCreatorsView: View {
   
   let users: [User] = [
      .init(name: "Amy Adams", imageName: "amy"),
      .init(name: "Billy ", imageName: "billy"),
      .init(name: "Sam Smith", imageName: "sam"),
   ]
   
   var body: some View {
      VStack {
         HStack {
            Text("Trending Creators")
               .font(.system(size: 14, weight: .semibold))
            Spacer()
            Text("See all")
               .font(.system(size: 12, weight: .semibold))
         }
         .padding(.horizontal)
         .padding(.top)
         
         ScrollView(.horizontal) {
            HStack(alignment: .top, spacing: 12) {
               ForEach(users, id: \.self) { user in
                  VStack {
                     Image(user.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 60)
                        .cornerRadius(60)
                     
                     Text(user.name)
                        .font(.system(size: 11, weight: .semibold))
                        .multilineTextAlignment(.center)
                  }
                  .frame(width: 60)
                  .shadow(radius: 4, x: 0.0, y: 2)
                  .padding(.bottom)
               }
            }.padding(.horizontal)
         }
      }
   }
}


struct Category: Hashable {
   let name, imageName: String
}

// MARK: - Discover Categories View
struct DiscoverCategoriesView: View {
   
   let categories: [Category] = [
      
      .init(name: "Art", imageName: "paintpalette.fill"),
      .init(name: "Sport", imageName: "sportscourt.fill"),
      .init(name: "Live Events", imageName: "music.mic"),
      .init(name: "Food", imageName: "tray.fill"),
      .init(name: "History", imageName: "books.vertical.fill"),
   ]
   
   var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
         HStack(alignment: .top, spacing: 14) {
            
            ForEach(categories, id: \.self) { catergory in
               VStack(spacing: 8) {
                  Image(systemName: catergory.imageName)
                     .font(.system(size: 20))
                     .foregroundColor(Color(#colorLiteral(red: 0.9677194953, green: 0.621350944, blue: 0.001400604844, alpha: 1)))
                     .frame(width: 64, height: 64)
                     .background(Color.white)
                     .cornerRadius(64)
                  
                  Text(catergory.name)
                     .font(.system(size: 12, weight: .semibold))
                     .foregroundColor(.white)
               }.frame(width: 66)
            }
         }.padding(.horizontal)
      }
   }
}
