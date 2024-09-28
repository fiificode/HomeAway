//
//  Listing.swift
//  HomeAway
//
//  Created by fiififranklin on 28/09/2024.
//

import Foundation

struct Listing: Identifiable, Codable {
    let id: String
    let ownerId: String
    let ownerName: String
    let ownerAvatar: String
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBedrooms: Int
    let numberOfBeds: Int
    var pricePerNight: Int
    var ImageUrls: [String]
    let latitude: Double
    let longitude: Double
    let address: String
    let city: String
    let state: String
    let country: String
    let title: String
    var rating: Double
    var features:[ListingFeatures]
    var amenities:[ListingAmenities]
    let type:[ListingTypes]
    
}

enum ListingFeatures:Int,Codable, Identifiable, Hashable {
    case selfCheckin
    case superHost
    
    var title: String {
        switch self {
        case .selfCheckin: return "Self Checkin"
        case .superHost: return "Super Host"
        }
    }
    
    var subTitle: String? {
        switch self {
        case .selfCheckin: return "Check yourself in with Keypad"
        case .superHost: return "Super Host are experienced, highly rated hosts who welcome you to their home and committed to providing great service."
        }
    }
    
    var imageName: String {
        switch self {
        case .selfCheckin: return "self-checkin"
        case .superHost: return "superhost"
        }
    }
    
    var id: Int {return self.rawValue }
}

enum ListingAmenities:Int,Codable, Identifiable, Hashable {
    case parking
    case wifi
    case breakfast
    case kitchen
    case tv
    case pool
    case hotTub
    case gym
    case airConditioning
    case washer
    case dryer
    
    
    var title: String {
        switch self {
        case .parking: return "Parking"
        case .wifi: return "WiFi"
        case .breakfast: return "Breakfast"
        case .kitchen: return "Kitchen"
        case .tv: return "TV"
        case .pool: return "Pool"
        case .hotTub: return "Hot Tub"
        case .gym: return "Gym"
        case .airConditioning: return "Air Conditioning"
        case .washer: return "Washer"
        case .dryer: return "Dryer"
        }
    }
        
    var imageName: String {
            switch self {
            case .parking: return "parking"
            case .wifi: return "wifi"
            case .breakfast: return "breakfast"
            case .kitchen: return "kitchen"
            case .tv: return "tv"
            case .pool: return "pool"
            case .hotTub: return "hotTub"
            case .gym: return "gym"
            case .airConditioning: return "airConditioning"
            case .washer: return "washer"
            case .dryer: return "dryer"
           
            }
    }
    
    var id: Int {return self.rawValue }
}

enum ListingTypes:Int,Codable, Identifiable, Hashable {
    case apartment
    case house
    case condo
    case townhouse
    case duplex
    case mobileHome
    case villa
    case studio
    
    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house: return "House"
        case .condo: return "Condo"
        case .townhouse: return "Townhouse"
        case .duplex: return "Duplex"
        case .mobileHome: return "Mobile Home"
        case .villa: return "Villa"
        case .studio: return "Studio"
        }
    }
    
    
    var id: Int {return self.rawValue }
}
