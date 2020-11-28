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

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      ContentView()
   }
}

struct PopularDestinationsView: View {
   
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
            ForEach(0..<5, id: \.self) { num in
               Spacer()
                  .frame(width: 125, height: 150)
                  .background(Color.gray)
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
                  .background(Color.gray)
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
