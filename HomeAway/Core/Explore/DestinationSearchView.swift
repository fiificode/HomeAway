//
//  DestinationSearchView.swift
//  HomeAway
//
//  Created by fiififranklin on 27/09/2024.
//

import SwiftUI

enum DestinationOptions {
    case location
    case date
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationOptions = .location
    @State private var startDate: Date = .init()
    @State private var endDate: Date = .init()
    @State var numberOfguests = 1
    
    let stepValue = 1
    let stepRange = 1...20
 
    
    var body: some View {
        VStack{
            HStack{
                Button{
                    withAnimation(.snappy){
                        show.toggle()
                    }
                  
                } label: {
                        Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.appBlack)
                }
                Spacer()
                
                if !destination.isEmpty{
                    Button("Clear"){
                        destination = ""
                    }
                    .buttonStyle(BorderlessButtonStyle())
                    .foregroundStyle(.appBlack)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .fontWidth(.condensed)
                }
            }
            .padding()
            
            
            VStack(alignment: .leading){
                if selectedOption == .location{
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .fontWidth(.condensed)
                        .foregroundStyle(.primary)
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        TextField("Search destination",text: $destination)
                            .font(.subheadline)
                    }
                    .frame(height:44)
                    .padding(.horizontal,16)
                    .overlay{
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(lineWidth:1.0)
                            .foregroundStyle(Color(.systemGray4))
                    }
                } else {
                    CollapsedPickerView(title: "where", description: "Add destination")
                }
             
            }
            .padding()
            .frame(height:selectedOption == .location ? 120 :64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy){selectedOption = .location}
            }
            //Dates
            VStack(alignment:.leading){
                if selectedOption == .date{
                  Text("When is your trip?")
                        .font(.title2)
                        .fontWidth(.condensed)
                        .fontWeight(.semibold)
                    VStack{
                        DatePicker("From",selection: $startDate,displayedComponents: .date)
                        Divider()
                        DatePicker("To",selection: $endDate,displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .fontWidth(.condensed)
                    .fontWeight(.semibold)
                       
                } else{
                    CollapsedPickerView(title: "When", description: "Add date")
                }
            }
            .padding()
            .frame(height:selectedOption == .date ? 180 :64)
            
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy){selectedOption = .date}
            }
            
            // Guests
            VStack(alignment:.leading){
                if selectedOption == .guests{
                    Text("Who is coming?")
                        .font(.title2)
                        .fontWidth(.condensed)
                        .fontWeight(.semibold)
                    Stepper(value: $numberOfguests, in: stepRange,step: stepValue){
                        HStack{
                            Text("\(numberOfguests)")
                                .fontWidth(.condensed)
                                .fontWeight(.semibold)
                            Text("Adults")
                                .fontWidth(.condensed)
                                .fontWeight(.semibold)
                                .foregroundStyle(.gray)
                           
                        }
                        
                      
                    }
                  
                       
                } else{
                    CollapsedPickerView(title: "Who", description: "Add guests")
                }
            }
            .padding()
            .frame(height:selectedOption == .guests ? 120 :64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy){selectedOption = .guests}
            }
            Spacer()
        }
    
    }
}

#Preview {
    DestinationSearchView(show: .constant(false ))
}

struct CollapsedPickerView: View {
    let title: String;
    let description : String;
    var body: some View {
        VStack{
            
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
            }
            .fontWeight(.semibold)
            .fontWidth(.condensed)
            .font(.subheadline)
        }
    }
}
