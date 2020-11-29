//
//  ContentView.swift
//  TravelDiscovery
//
//  Created by George Solorio on 11/27/20.
//

import SwiftUI

struct DiscoverView: View {
   
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

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      DiscoverView()
   }
}

