//
//  ViewModel.swift
//  AirbnbClone
//
//  Created by Luciano Nicolini on 26/10/2023.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }

    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
        } catch {
            print("DEBUG: ERROR AL COMPILAR \(error.localizedDescription)")
        }
    }
}
