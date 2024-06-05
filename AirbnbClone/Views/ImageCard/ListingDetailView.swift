//
//  ListingDetailView.swift
//  AirbnbClone
//  .refreshable
//  Created by Luciano Nicolini on 19/10/2023.
//

import SwiftUI
import MapKit


struct ListingDetailView: View {
    @Environment(\.dismiss) var dismiss
    let listing: Listing
    @State private var cameraPosition: MapCameraPosition
    
    init(listing: Listing) {
        self.listing = listing
        
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 25.7602, longitude: -80.1959), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        self._cameraPosition = State(initialValue: .region(region))
    }
    
    var body: some View {
        ScrollView {
            //boton de back
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView(listing: listing)
                    .frame(height: 320)
                   
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                }
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Buenos Aires")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        Text("\(listing.rating)")
                        Text(" - ")
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                        
                    }
                    .foregroundStyle(.black)
                    Text("Caba")
                }
                .font(.caption)
            }
            
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            Divider()
            
            //host info View
            HStack {
                VStack(alignment: .leading,spacing: 4) {
                    Text("Luciano Nicolini")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack {
                        Text("4 habitaciones")
                        Text("2 baños")
                        Text("1 quincho")
                        Text("1 cocina")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                Spacer()
                Image("img3")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }
            .padding()
            Divider()
            
            // listing feacture
            VStack(alignment: .leading, spacing: 16) {
                ForEach(0 ..< 2) { index in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                        VStack() {
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Buenos Aires es la gran capital cosmopolita de Argentina")
                                .font(.caption)
                                .foregroundStyle(.gray)
                            
                            
                        }
                        Spacer()
                    }
                    
                }
            }
            .padding()
            
            Divider()
            
            // listing cardsview
            VStack(alignment: .leading, spacing: 16) {
                Text("Servicios")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(1 ..< 5) { bedroom in
                            VStack {
                                Image(systemName: "bed.double")
                                Text("Berroom \(bedroom)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
         
            // listing Wifi
            VStack(alignment: .leading, spacing: 16) {
                Text("Comodidades")
                    .font(.headline)
                
                ForEach(0 ..< 5) { feacture in
                    HStack {
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        Text("Wifi")
                            .font(.footnote)
                        Spacer()
                    }
                }
            }
            .padding()
           
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Ubicacion")
                    .font(.headline)
                
                Map(position: $cameraPosition)
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
            
        }
        //boton de reserva
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom,64)
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                HStack {
                    VStack(alignment: .leading) {
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total impuestos añadidos")
                            .font(.footnote)
                        Text("Total impuestos añadidos")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .unredacted()
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("Reservas")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
                .padding(.horizontal,32)
            }
            .background(.white)
        }
    }
}


#Preview {
    ListingDetailView(listing: DeveloperPreview.shared.listings[0])
}
