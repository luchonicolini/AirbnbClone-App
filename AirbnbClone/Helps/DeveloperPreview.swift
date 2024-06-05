//
//  DeveloperPreview.swift
//  AirbnbClone
//
//  Created by Luciano Nicolini on 26/10/2023.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString, ownerUid: "", ownerName: "", ownerImageUrl: "", numbersOfBedrooms: 4, numbersOfGuests: 4, numbersOfBeds: 5, pricePerNight: 6, latitude: 555, longitude: 555, imageURL: ["img1","img2","img3"], address: "", city: "", state: "", title: "", rating: 300, feactures: [.selfCheckIn, .superHost], amenities: [.wifi, .alarmSystem, .kitchen, .office], type: .villa
        ),
        .init(
            id: NSUUID().uuidString, ownerUid: "", ownerName: "", ownerImageUrl: "", numbersOfBedrooms: 4, numbersOfGuests: 4, numbersOfBeds: 5, pricePerNight: 6, latitude: 555, longitude: 555, imageURL: ["img4","img3"], address: "", city: "", state: "", title: "", rating: 300, feactures: [.selfCheckIn, .superHost], amenities: [.wifi, .alarmSystem, .kitchen, .office], type: .villa
        ),
    ]
}
