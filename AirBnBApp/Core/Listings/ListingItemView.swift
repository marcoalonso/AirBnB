//
//  ListingView.swift
//  AirBnBApp
//
//  Created by Marco Alonso Rodriguez on 04/11/23.
//

import SwiftUI

struct ListingItemView: View {
    
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            ListingImageCarruselView(listing: listing)
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing details
            HStack(alignment: .top) {
             //details
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state).")
                        .fontWeight(.semibold)
                    Text("15 km Distancia")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 4 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        Text("Nigth")
                    }
                }
                .font(.footnote)
                
                Spacer()
                
                //rating
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("\(listing.rating)")
                }
                
            }
            .foregroundStyle(.black)
        }
        .padding()
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
