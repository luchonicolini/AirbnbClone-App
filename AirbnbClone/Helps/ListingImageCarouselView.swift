//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by Luciano Nicolini on 19/10/2023.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    let listing: Listing
    
    var body: some View {
        TabView {
            ForEach(listing.imageURL, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
