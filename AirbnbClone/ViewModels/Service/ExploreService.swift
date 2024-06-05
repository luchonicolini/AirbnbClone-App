//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Luciano Nicolini on 26/10/2023.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
