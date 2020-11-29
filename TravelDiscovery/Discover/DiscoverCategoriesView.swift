//
//  DiscoverCategoriesView.swift
//  TravelDiscovery
//
//  Created by George Solorio on 11/28/20.
//

import SwiftUI

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

struct DiscoverCategoriesView_Previews: PreviewProvider {
   static var previews: some View {
      ZStack {
         Color.orange
         DiscoverCategoriesView()
      }
   }
}
