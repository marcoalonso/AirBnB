//
//  ListingImageCarruselView.swift
//  AirBnBApp
//
//  Created by Marco Alonso Rodriguez on 06/11/23.
//

import SwiftUI

struct ListingImageCarruselView: View {
    let listing: Listing
    
   
    var body: some View {
        TabView {
            ForEach(listing.imagesURLs, id: \.self) { image in
                Image(image)
                    .resizable()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarruselView(listing: DeveloperPreview.shared.listings[0])
}
