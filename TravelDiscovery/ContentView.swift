//
//  ContentView.swift
//  TravelDiscovery
//
//  Created by George Solorio on 11/27/20.
//

import SwiftUI

struct ContentView: View {
   var body: some View {
      NavigationView {
         
         ScrollView {
            DiscoverCategoriesView()
            
            PopularDestinationsView()
            
            PopularRestaurantsView()
            
            TrendingCreatorsView()
            
         }.navigationTitle("Discovery")
      }
   }
}

struct Destination: Hashable {
   let name, country, imageName: String
}

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      ContentView()
   }
}

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
               .background(Color(.init(white: 0.9, alpha: 1)))
               .cornerRadius(5.0)
               .shadow(radius: 4, x: 0.0, y: 2)
               .padding(.bottom)
            }
         }.padding(.horizontal)
      }
   }
}

struct PopularRestaurantsView: View {
   
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
            ForEach(0..<5, id: \.self) { num in
               Spacer()
                  .frame(width: 200, height: 64)
                  .background(Color(.lightGray))
                  .cornerRadius(5.0)
                  .shadow(radius: 4, x: 0.0, y: 2)
                  .padding(.bottom)
            }
         }.padding(.horizontal)
      }
   }
}

struct TrendingCreatorsView: View {
   
   var body: some View {
      
      HStack {
         Text("Trending Creators")
            .font(.system(size: 14, weight: .semibold))
         Spacer()
         Text("See all")
            .font(.system(size: 12, weight: .semibold))
      }.padding(.horizontal)
      .padding(.top)
      
      ScrollView(.horizontal, showsIndicators: false) {
         HStack(spacing: 8) {
            
            ForEach(0..<17, id: \.self) { num in
               VStack {
                  Spacer()
                     .frame(width: 60, height: 60)
                     .background(Color.gray)
                     .cornerRadius(.infinity)
                     .shadow(radius: 4, x: 0.0, y: 2)
                  Text("Art")
                     .font(.system(size: 12, weight: .semibold))
               }
            }
         }.padding(.horizontal)
      }
   }
}


struct Category: Hashable {
   let name, imageName: String
}

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
                     .foregroundColor(.white)
                     .frame(width: 64, height: 64)
                     .background(Color.gray)
                     .cornerRadius(64)
                     .shadow(radius: 4, x: 0.0, y: 2)
                  Text(catergory.name)
                     .font(.system(size: 12, weight: .semibold))
               }.frame(width: 66)
            }
         }.padding(.horizontal)
      }
   }
}
