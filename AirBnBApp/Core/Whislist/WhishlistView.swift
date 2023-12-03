//
//  WhislistView.swift
//  AirBnBApp
//
//  Created by Marco Alonso Rodriguez on 03/12/23.
//

import SwiftUI

struct WhishlistView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Log in to view your whishlists")
                        .font(.headline)
                    
                    Text("You can create, view or edit whishlists once you've logged in")
                        .font(.footnote)
                    
                    ButtonLoginView(title: "Log in")

                    
                }
                .padding(.vertical)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Whishlists")
        }
    }
}

#Preview {
    WhishlistView()
}


