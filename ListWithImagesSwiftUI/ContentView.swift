//
//  ContentView.swift
//  ListWithImagesSwiftUI
//
//  Created by naresh kukkala on 27/04/22.
//

import SwiftUI

struct ContentView: View {
    let cities = ["Denver", "Houston", "Seattle"]
    
    var body: some View {
        List(cities, id: \.self) { city in
            HStack {
                
                Image(city.lowercased())
                    .resizable()
                    .frame(width: 30, height: 30)
                    //.aspectRatio(contentMode: .fit)
                    
                Text(city)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
