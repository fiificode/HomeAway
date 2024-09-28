//
//  ProfileView.swift
//  HomeAway
//
//  Created by fiififranklin on 28/09/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack(alignment:.leading,spacing:20){
                VStack(alignment:.leading,spacing:4) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .fontWidth(.condensed)
                    Text("Login to start planning your trip")
                        .font(.subheadline)
                        .fontWidth(.condensed)
                        .foregroundStyle(.secondary)
                }
                
                
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
                HStack{
                    Text("Don't have an account?")
                    Text("Sign up")
                        .fontWeight(.bold)
                        .underline()
                }.font(.caption)
                    .fontWidth(.condensed)
            }.padding(.bottom,18)
            
            VStack(spacing:24){
                ProfileOptionRowView(imageName: "gear", titel: "Settings")
                ProfileOptionRowView(imageName: "gear", titel: "Accessiblity")
                ProfileOptionRowView(imageName: "questionmark.circle", titel: "Help")
            }.padding(.vertical)
            
        }.padding()
      
    }
}

#Preview {
    ProfileView()
}
