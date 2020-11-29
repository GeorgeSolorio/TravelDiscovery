//
//  TileModifier.swift
//  TravelDiscovery
//
//  Created by George Solorio on 11/28/20.
//

import SwiftUI

extension View {
   func asTile() -> some View {
      modifier(TileModifier())
   }
}

struct TileModifier: ViewModifier {
   func body(content: Content) -> some View {
      content
         .background(Color.white)
         .cornerRadius(5.0)
         .shadow(color: .init(.sRGB, white: 0.8, opacity: 1), radius: 4, x: 0.0, y: 2)
   }
}

