//
//  PopularRestaurantsView.swift
//  TravelDiscovery
//
//  Created by George Solorio on 11/28/20.
//

import SwiftUI

struct PopularRestaurantsView: View {
   
   let restaurants: [Restaurants] = [
      .init(name: "Japan's Finest Tapas", imageName: "tapas"),
      .init(name: "Bar & Grill", imageName: "bar_grill"),
   ]
   
   var body: some View {
      
      VStack {
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
                  .asTile()
                  .padding(.bottom)
               }
            }.padding(.horizontal)
         }
      }
   }
}

struct PopularRestaurantsView_Previews: PreviewProvider {
   static var previews: some View {
      PopularRestaurantsView()
      DiscoverView()
   }
}
