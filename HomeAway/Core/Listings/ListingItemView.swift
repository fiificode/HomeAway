//
//  ListingItemView.swift
//  HomeAway
//
//  Created by fiififranklin on 25/09/2024.
//

import SwiftUI

struct ListingItemView: View {
    var images = [
        "Listing-1",
        "Listing-2",
        "Listing-3"
    ]
    
    var body: some View {
        VStack(spacing:8){
            //images
            TabView{
                ForEach(images,id:\.self){ image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            //listing details
            HStack(alignment: .top) {
                //details
                VStack(alignment: .leading){
                    Text("Miami,Florida")
                        .fontWeight(.bold)
                    Text("12 miles away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 5")
                        .foregroundStyle(.appBlack)
                    HStack(spacing:3){
                        Text("$1,000")
                            .fontWeight(.semibold)
                        Text("per night")
                            .foregroundStyle(.gray)
                    }
                }
                Spacer()
                //ratings
                HStack(spacing:3){
                    Image(systemName: "star.fill")
                    Text("4.6")
                }
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
