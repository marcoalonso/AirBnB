//
//  ProfileOptionRowView.swift
//  AirBnBApp
//
//  Created by Marco Alonso Rodriguez on 03/12/23.
//

import SwiftUI

struct ProfileOptionRowView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                
                Text(title)
                    .font(.subheadline)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                
            }
            Divider()
        }
    }
}

#Preview {
    ProfileOptionRowView(imageName: "gear", title: "Settings")
}
