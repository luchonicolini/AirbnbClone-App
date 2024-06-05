//
//  ProfileView.swift
//  AirbnbClone
//
//  Created by Luciano Nicolini on 24/10/2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 32) {
                    Text("Perfil")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Log in start planning your next trip")
                }
                Button {
                    print("Lo in")
                } label: {
                    Text("Lo in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                }
                HStack {
                    Text("Sign in")
                    Text("Sign in")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "", tilte: "preview1")
                ProfileOptionRowView(imageName: "", tilte: "preview2")
                ProfileOptionRowView(imageName: "", tilte: "preview3")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
