//
//  ExploreService.swift
//  AirBnBApp
//
//  Created by Marco Alonso Rodriguez on 06/12/23.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
