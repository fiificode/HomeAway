//
//  ListingImageCarouselView.swift
//  HomeAway
//
//  Created by fiififranklin on 25/09/2024.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = [
        "Listing-1",
        "Listing-2",
        "Listing-3"
    ]
    var body: some View {
        TabView{
            ForEach(images,id:\.self){ image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .shadow(color:.black,radius: 1.0)
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
