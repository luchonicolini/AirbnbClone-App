//
//  WhishListsView.swift
//  AirbnbClone
//
//  Created by Luciano Nicolini on 26/10/2023.
//

import SwiftUI

struct WhishListsView: View {
    var body: some View {
        NavigationStack {
            VStack() {
                VStack{
                    Text("")
                        .font(.headline)
                    Text("")
                        .font(.footnote)
                }
                Button {
                    print()
                } label: {
                    Text("")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                Spacer()
            }
            .padding()
            .navigationTitle("WishLists")
        }
    }
}

#Preview {
    WhishListsView()
}
