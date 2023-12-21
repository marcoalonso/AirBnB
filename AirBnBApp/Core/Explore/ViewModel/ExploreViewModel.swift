//
//  ExploreViewModel.swift
//  AirBnBApp
//
//  Created by Marco Alonso Rodriguez on 06/12/23.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    private let service: ExploreService
    private var listingsCopy = [Listing]()
    
    init (service: ExploreService) {
        self.service = service
        Task {
            await fetchListings()
        }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
            listingsCopy = listings
        } catch {
            print("Debug: error \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation() {
        let filteredListings = listings.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listingsCopy : filteredListings
    }
}
