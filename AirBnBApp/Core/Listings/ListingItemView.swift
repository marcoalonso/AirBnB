//
//  ListingView.swift
//  AirBnBApp
//
//  Created by Marco Alonso Rodriguez on 04/11/23.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "linsting-1",
        "linsting-2",
        "linsting-3",
        "linsting-4",
        "linsting-5",
        "linsting-6",
        "linsting-7",
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            TabView {
                ForEach(images, id: \.self) { image in
                    Image(image)
                        .resizable()
                }
            }
            .frame(height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
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
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
