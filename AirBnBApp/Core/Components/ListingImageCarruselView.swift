//
//  ListingImageCarruselView.swift
//  AirBnBApp
//
//  Created by Marco Alonso Rodriguez on 06/11/23.
//

import SwiftUI

struct ListingImageCarruselView: View {
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
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarruselView()
}
