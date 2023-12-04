//
//  Listing.swift
//  AirBnBApp
//
//  Created by Marco Alonso Rodriguez on 03/12/23.
//

import Foundation

struct Listing: Identifiable, Codable {
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBeedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var pricePerNight: Double
    let latitude: Double
    let longitude: Double
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    var features: [LisitingFeatures]
    var amenities: [ListingAmenities]
    let type: ListingType
}


enum LisitingFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost
    
    var imageName: String {
        switch self {
        case .selfCheckIn: return "doorleft.hand.open"
        case .superHost: return "medal"
        }
    }
    
    var title: String {
        switch self {
        case .selfCheckIn: return "Self chek-in"
        case .superHost: return "Superhost"
        }
    }
    
    var subtitle: String {
        switch self {
        case .selfCheckIn:
            return "Check yourself in with the keypad."
        case .superHost:
            return "Superhosts are eperienced, highly rated hosts who are commited to providing greate stars for guests."
        }
    }
    
    var id: Int { return self.rawValue }
}

enum ListingAmenities:  Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title: String {
        switch self {
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "Wifi"
        case .laundry: return "Laundry"
        case .tv: return "Tv"
        case .alarmSystem: return "AlarmSystem"
        case .office: return "Office"
        case .balcony: return "Balcony"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .wifi: return "wifi"
        case .laundry: return "washer"
        case .tv: return "tv"
        case .alarmSystem: return "checkerboard.shield"
        case .office: return "pencil.and.ruler.fill"
        case .balcony: return "building"
        }
    }
    
    var id: Int { return self.rawValue }
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    case aprtment
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .aprtment: return "Apartment"
        case .house: return "House"
        case .villa: return "Villa"
        case .townHouse: return "TownHouse"
        }
    }
    
    var id: Int { return self.rawValue }
}
