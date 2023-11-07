//
//  ExploreView.swift
//  AirBnBApp
//
//  Created by Marco Alonso Rodriguez on 04/11/23.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            VStack {
                SearchAndFilterBar()
                ScrollView {
                    LazyVStack(spacing: 32) {
                        ForEach(0 ... 10, id: \.self) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                }
                .navigationDestination(for: Int.self) { listing in
                    Text("Listing detail view ....")
                }
            }
            
        }
    }
}

#Preview {
    ExploreView()
}
