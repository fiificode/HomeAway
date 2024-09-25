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
                SearchAndFilterBar()
                LazyVStack(spacing:30) {
                    ForEach(0...10,id: \.self){listing in
                        NavigationLink(value: listing, label: {
                            ListingItemView()
                                .frame(height: 380)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        })
                    }
                }
                .padding()
                
            }.scrollIndicators(.hidden)
            .navigationDestination(for: Int.self){listing in
                    ListingDetailView()
                        .navigationBarHidden(true)
                }
        }
    }
}

#Preview {
    ExploreView()
}
