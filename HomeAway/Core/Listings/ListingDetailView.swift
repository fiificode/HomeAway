//
//  ListingDetailView.swift
//  HomeAway
//
//  Created by fiififranklin on 25/09/2024.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    var images = [
        "Listing-1",
        "Listing-2",
        "Listing-3",
        "Listing-3",
        ]
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            ZStack(alignment:.topLeading) {
                ListingImageCarouselView()
                    .frame(height: 300)
                
                Button{
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.appBlack)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32,height: 32)
                        }
                        .padding(32)
                }
            }
            
            VStack(alignment:.leading,spacing: 8){
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                VStack(alignment:.leading){
                    HStack(spacing:2){
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                        Text("4.8")
                        Text(" - ")
                        Text("100 reviews")
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Text("Miami,Florida")
                        .font(.caption)
                }
                .font(.caption)
            }
            .padding()
            .frame(maxWidth:.infinity,alignment: .leading)
            
            Divider()
            
            //Host info view
            HStack{
                VStack(alignment:.leading,spacing: 8){
                    Text("Entire villa is hosted by Franklin Smith")
                        .font(.headline)
                        .frame(width:250,alignment: .leading)
                        .fontWeight(.semibold)
                    HStack(spacing:2){
                        Text("4")
                        Text("guests").foregroundStyle(.gray)
                        Text("-")
                        Text("4")
                        Text("bedrooms").foregroundStyle(.gray)
                        Text("-")
                        Text("4")
                        Text("beds").foregroundStyle(.gray)
                        Text("-")
                        Text("2")
                        Text("baths").foregroundStyle(.gray)
                    }.font(.caption)
                }
                .frame(width:300,alignment: .leading)
            
                Spacer()
                
                //Host Profile Image View
                Image("hello")
                    .resizable()
                    .scaledToFit()
                    .frame(width:64,height: 64)
                    .clipShape(Circle())
            }.padding()
            
            Divider()
            
            //listing features
            VStack(alignment:.leading,spacing:16){
                ForEach(0..<2){feature in
                    HStack(spacing:12){
                        Image(systemName: "door.right.hand.open")
                        
                        VStack(alignment:.leading){
                            Text("Self check-in")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Check yourself in with your keypad.hahddlsdklskflsdkflskfldksldfdhsdfsd")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }.padding()
            
            Divider()
            
            //bedrooms
            VStack(alignment:.leading){
                Text("Where you will be")
                    .font(.headline)
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing:16){
                        ForEach(images,id:\.self){ image in
                            Image(image)
                                .resizable()
                                .scaledToFill()
                                .clipShape(RoundedRectangle(cornerRadius: 7))
                        }
                    }.frame(width: 700)
                }.scrollTargetBehavior(.paging)
            }.padding()
            
            Divider()
            
            //listing amenities
            VStack(alignment:.leading,spacing:16){
                Text("What this place offers")
                    .font(.headline)
                ForEach(0..<5){feature in
                    HStack{
                        Image(systemName: "wifi")
                            .frame(width:32)
                        Text("Wifi")
                            .font(.footnote)
                        
                        Spacer()
                    }
                }
            }.padding()
            
            Divider()
            
            //listing map
            VStack(alignment:.leading,spacing:16){
                Text("Where you will be")
                    .font(.headline)
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }.padding()
            
            
        }
        .ignoresSafeArea()
        .padding(.bottom,64)
        .scrollIndicators(.hidden)
        .overlay(alignment:.bottom){
                VStack{
                    Divider()
                        .padding(.bottom)
                    HStack{
                        VStack(alignment:.leading){
                            Text("$1,000").font(.subheadline).fontWeight(.semibold)
                            Text("Total before taxes").font(.caption).foregroundStyle(.gray)
                            Text("Dec 1 - 3").font(.subheadline).fontWeight(.semibold).underline()
                            
                        }
                        Spacer()
                        
                        Button(action:{}, label: {
                            Text("Reserve")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 140,height: 40)
                                .background(Color.appBlack)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        )
                    }.padding(.horizontal,32)
                }.background(Color.white)
            }
    }
}

#Preview {
    ListingDetailView()
}
