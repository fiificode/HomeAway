//
//  ExploreView.swift
//  HomeAway
//
//  Created by fiififranklin on 25/09/2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing:30) {
                    ForEach(0...10,id: \.self){listings in
                        ListingItemView()
                            .frame(height: 380)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .padding()
                
            }
        }
    }
}

#Preview {
    ExploreView()
}
