//
//  ListingItemView.swift
//  HomeAway
//
//  Created by fiififranklin on 25/09/2024.
//

import SwiftUI

struct ListingItemView: View {
 
    var body: some View {
        VStack(spacing:8){
            //images
            ListingImageCarouselView()
            .frame(height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 7))
            
            //listing details
            HStack(alignment: .top) {
                //details
                VStack(alignment: .leading){
                    Text("Miami,Florida")
                        .fontWeight(.bold)
                        .foregroundStyle(.appBlack)
                    Text("12 miles away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 5")
                        .foregroundStyle(.appBlack)
                    HStack(spacing:3){
                        Text("$1,000")
                            .fontWeight(.semibold)
                            .foregroundStyle(.appBlack)
                        Text("per night")
                            .foregroundStyle(.gray)
                    }
                }
                Spacer()
                //ratings
                HStack(spacing:3){
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                    Text("4.6")
                        .foregroundStyle(.appBlack)
                }
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
