//
//  DeveloperPreview.swift
//  AirBnBApp
//
//  Created by Marco Alonso Rodriguez on 04/12/23.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    var listings: [Listing] = [
        .init(id: NSUUID().uuidString, 
              ownerUid: NSUUID().uuidString,
              ownerName: "Marco Alonso",
              ownerImageUrl: "marco",
              numberOfBeedrooms: 3,
              numberOfBathrooms: 2,
              numberOfGuests: 5,
              numberOfBeds: 2,
              pricePerNight: 999,
              latitude: 19.1878,
              longitude: -101.1893,
              imagesURLs: [
                "linsting-1",
                "linsting-2",
                "linsting-3",
                "linsting-4",
                "linsting-5",
                "linsting-6",
                "linsting-7"
              ],
              address: "Morelia 123",
              city: "Michoacan",
              state: "Mich.",
              title: "House in the city",
              rating: 4.67,
              features: [.selfCheckIn, .selfCheckIn],
              amenities: [.wifi, .kitchen, .laundry, .office, .tv], type: .house
             ),
        .init(id: NSUUID().uuidString, 
              ownerUid: NSUUID().uuidString,
              ownerName: "Lizeth Loeza",
              ownerImageUrl: "marcoalonso",
              numberOfBeedrooms: 3,
              numberOfBathrooms: 2,
              numberOfGuests: 5,
              numberOfBeds: 2,
              pricePerNight: 999,
              latitude: 19.1838,
              longitude: -101.1825,
              imagesURLs: [
                "linsting-1",
                "linsting-2",
                "linsting-3",
                "linsting-4",
                "linsting-5",
                "linsting-6",
                "linsting-7"
              ],
              address: "Morelia 456",
              city: "Michoacan",
              state: "Mich.",
              title: "El Trebol",
              rating: 4.78,
              features: [.selfCheckIn, .selfCheckIn],
              amenities: [.wifi, .kitchen, .laundry, .office, .tv], type: .house
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Lizeth Loeza",
              ownerImageUrl: "marcoalonso",
              numberOfBeedrooms: 3,
              numberOfBathrooms: 2,
              numberOfGuests: 5,
              numberOfBeds: 2,
              pricePerNight: 999,
              latitude: 19.1838,
              longitude: -101.1825,
              imagesURLs: [
                "linsting-1",
                "linsting-2",
                "linsting-3",
                "linsting-4",
                "linsting-5",
                "linsting-6",
                "linsting-7"
              ],
              address: "Morelia 456",
              city: "Michoacan",
              state: "Mich.",
              title: "El Trebol",
              rating: 4.78,
              features: [.selfCheckIn, .selfCheckIn],
              amenities: [.wifi, .kitchen, .laundry, .office, .tv], type: .house
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Marco Alonso",
              ownerImageUrl: "marco",
              numberOfBeedrooms: 3,
              numberOfBathrooms: 2,
              numberOfGuests: 5,
              numberOfBeds: 2,
              pricePerNight: 999,
              latitude: 19.1878,
              longitude: -101.1893,
              imagesURLs: [
                "linsting-1",
                "linsting-2",
                "linsting-3",
                "linsting-4",
                "linsting-5",
                "linsting-6",
                "linsting-7"
              ],
              address: "Morelia 123",
              city: "Michoacan",
              state: "Mich.",
              title: "House in the city",
              rating: 4.67,
              features: [.selfCheckIn, .selfCheckIn],
              amenities: [.wifi, .kitchen, .laundry, .office, .tv], type: .house
             )
    ]
}
