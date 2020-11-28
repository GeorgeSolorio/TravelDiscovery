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
         }.navigationTitle("Discovery")
      }
   }
}

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      ContentView()
   }
}

struct DiscoverCategoriesView: View {
   
   var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
         HStack(spacing: 8) {
            
            ForEach(0..<5, id: \.self) { num in
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
