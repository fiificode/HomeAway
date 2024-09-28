//
//  WishListView.swift
//  HomeAway
//
//  Created by fiififranklin on 28/09/2024.
//

import SwiftUI

struct WishListView: View {
    var body: some View {
       
            VStack(alignment:.leading,spacing:20) {
                Text("WishList")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .fontWidth(.condensed)
                Text("Log in to view your wishlists")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .fontWidth(.condensed)
                    .foregroundStyle(.appBlack)
                Text("You can create,view, edit, and delete your wishlists once you logged in.")
                    .font(.subheadline)
                    .fontWidth(.condensed)
                    .foregroundStyle(.gray)
            }
            .padding(.bottom,40)
            
            
            Button{
                print("login")
            }label: {
                Text("Login")
                    .foregroundStyle(.white)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .fontWidth(.condensed)
                    .frame(width:360,height: 48)
                    .background(.appBlack)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
        Spacer()
        
    }
}

#Preview {
    WishListView()
}
