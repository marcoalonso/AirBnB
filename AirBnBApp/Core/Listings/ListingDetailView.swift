//
//  ListingDetailView.swift
//  AirBnBApp
//
//  Created by Marco Alonso Rodriguez on 06/11/23.
//

import SwiftUI

struct ListingDetailView: View {
    
    var body: some View {
        ScrollView {
            ListingImageCarruselView()
            .frame(height: 320)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Marco's house")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        
                        Text("4.87")
                        
                        Text("-")
                        
                        Text("20 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text("Tarimbaro, Mich.")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Beatiful house near to Morelia city hosted by Marco Alonso")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing: 2) {
                        Text("4 guests - ")
                        Text("4 betrooms - ")
                        Text("4 bedss - ")
                        Text("2 baths")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                
                Spacer()
                
                Image("marco")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
        }
    }
}

#Preview {
    ListingDetailView()
}
