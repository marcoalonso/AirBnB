//
//  ExploreViewModel.swift
//  AirBnBApp
//
//  Created by Marco Alonso Rodriguez on 06/12/23.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    
    init (service: ExploreService) {
        self.service = service
        Task {
            await fetchListings()
        }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
        } catch {
            print("Debug: error \(error.localizedDescription)")
        }
    }
}
