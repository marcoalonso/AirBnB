//
//  ButtonLoginView.swift
//  AirBnBApp
//
//  Created by Marco Alonso Rodriguez on 03/12/23.
//

import SwiftUI

struct ButtonLoginView: View {
    let title: String
    var body: some View {
        Button {
            print("login")
        } label: {
            Text(title)
                .foregroundStyle(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 48)
                .background(.purple)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    ButtonLoginView(title: "Login")
}
