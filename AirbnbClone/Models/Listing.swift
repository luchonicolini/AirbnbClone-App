//
//  Listing.swift
//  AirbnbClone
//
//  Created by Luciano Nicolini on 26/10/2023.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable{
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numbersOfBedrooms: Int
    let numbersOfGuests: Int
    var numbersOfBeds: Int
    let pricePerNight: Int
    let latitude: Double
    let longitude: Double
    let imageURL: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    var feactures: [ListingFeactures]
    var amenities: [ListingAmenities]
    let type: ListingtType
}

enum ListingFeactures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost
    
    var id: Int { return self.rawValue }
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
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
        case .pool: return ""
        case .kitchen: return ""
        case .wifi: return ""
        case .laundry: return ""
        case .tv: return ""
        case .alarmSystem: return ""
        case .office: return ""
        case .balcony: return ""
        }
    }
    
    var imageName: String {
        switch self {
        case .pool: return ""
        case .kitchen: return ""
        case .wifi: return ""
        case .laundry: return ""
        case .tv: return ""
        case .alarmSystem: return ""
        case .office: return ""
        case .balcony: return ""
        }
    }
    
    var id: Int { return self.rawValue }
}

enum ListingtType: Int, Codable, Identifiable, Hashable {
    case apartament
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .apartament: return ""
        case .house: return ""
        case .townHouse: return ""
        case .villa: return ""
        }
    }
    
    var id: Int { return self.rawValue }
}
