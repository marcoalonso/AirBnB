//
//  ListingView.swift
//  AirBnBApp
//
//  Created by Marco Alonso Rodriguez on 04/11/23.
//

import SwiftUI

struct ListingItemView: View {
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            ListingImageCarruselView()
            .frame(height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing details
            HStack(alignment: .top) {
             //details
                VStack(alignment: .leading) {
                    Text("Morelia, Mich.")
                        .fontWeight(.semibold)
                    Text("15 km Distancia")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 4 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("$678")
                            .fontWeight(.semibold)
                        Text("Nigth")
                    }
                }
                .font(.footnote)
                
                Spacer()
                
                //rating
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.87")
                }
                
            }
            .foregroundStyle(.black)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
