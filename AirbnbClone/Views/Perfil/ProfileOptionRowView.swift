//
//  ProfileOptionRowView.swift
//  AirbnbClone
//
//  Created by Luciano Nicolini on 24/10/2023.
//

import SwiftUI

struct ProfileOptionRowView: View {
    let imageName: String
    let tilte: String
    
    var body: some View {
        VStack() {
            HStack {
                Image(systemName: imageName)
                Text(tilte)
                    .font(.subheadline)
                Spacer()
                Image(systemName: "chevron.right")
            }
            Divider()
        }
        
    }
}

#Preview {
    ProfileOptionRowView(imageName: "gear", tilte: "Setting")
}
