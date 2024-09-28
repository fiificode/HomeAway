//
//  ProfileOptionRowView.swift
//  HomeAway
//
//  Created by fiififranklin on 28/09/2024.
//

import SwiftUI

struct ProfileOptionRowView: View {
    var imageName:String
    var titel:String
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                
                Text(titel)
                    .font(.headline)
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            .fontWidth(.condensed)
            Divider()
        }
    }
}

#Preview {
    ProfileOptionRowView(imageName: "gear", titel: "Settings")
}
