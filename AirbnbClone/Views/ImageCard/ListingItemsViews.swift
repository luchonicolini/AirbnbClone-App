//
//  ListingItemsViews.swift
//  AirbnbClone
//
//  Created by Luciano Nicolini on 19/10/2023.
//

import SwiftUI

struct ListingItemsViews: View {
    
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8) {
            ListingImageCarouselView(listing: listing)
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    

            //listing details
            HStack(alignment: .top) {
                
                HStack {
                    // details
                    VStack(alignment: .leading) {
                        Text("\(listing.city), \(listing.state)")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Text("preview1")
                            .foregroundStyle(.gray)
                        Text("preview1")
                            .foregroundStyle(.gray)
                        
                        HStack(spacing: 4) {
                            Text("$\(listing.pricePerNight)")
                                .fontWeight(.semibold)
                            
                        }
                        .foregroundStyle(.black)
                    }
                    Spacer()
                    //rating
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        Text("\(listing.rating)")
                    }
                    .foregroundStyle(.black)
                }
                .font(.footnote)
            }
        }
    }
}

#Preview {
    ListingItemsViews(listing: DeveloperPreview.shared.listings[0])
}
