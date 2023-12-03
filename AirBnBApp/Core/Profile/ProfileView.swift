//
//  ProfileView.swift
//  AirBnBApp
//
//  Created by Marco Alonso Rodriguez on 03/12/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            ///Profile login view
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("Log in to stat planning your net trip.")
                }
                
               ButtonLoginView(title: "Log In")
                
                HStack {
                    Text("Don't have an account?")
                    
                    Text("Don't have an account?")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)

            }
            
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
