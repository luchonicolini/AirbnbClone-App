//
//  DestinationSearchView.swift
//  AirbnbClone
//
//  Created by Luciano Nicolini on 20/10/2023.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation(.snappy) {
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                Spacer()
                if !destination.isEmpty {
                    Button("Clear") {
                        destination = ""
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
       
            VStack(alignment: .leading) {
                if selectedOption == .location  {
                    Text("asdadasd")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("busqueda de habitacioes", text: $destination)
                            .font(.subheadline)
                        
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(Color(.systemGray4))
                        
                    }
                } else {
                    PickerView(title: "Where", description: "add destination")
                }
                
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .location ? 120: 64)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .location}
            }
            
            // date selection
            VStack(alignment: .leading) {
                if selectedOption == .dates {
                   Text("When your trips1")
                        .font(.title2)
                        .fontWeight(.semibold)
                    VStack {
                        DatePicker("Form", selection: $startDate,displayedComponents: .date)
                        Divider()
                     
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                } else {
                    PickerView(title: "When1", description: "add dates")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .dates ? 180: 64)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .dates }
            }
            // guests selection
            VStack(alignment: .leading) {
                if selectedOption == .guests {
                   Text("Who's coming")
                        .font(.title)
                        .fontWeight(.semibold)
                    Stepper {
                        Text("\(numGuests) Adultos")
                    } onIncrement: {
                       numGuests += 1
                    } onDecrement: {
                        guard numGuests > 0 else { return }
                            numGuests -= 1
                        }
                    
                } else {
                    PickerView(title: "When1", description: "add dates")
                    
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .guests ? 120: 64)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .guests }
            }
           
            Spacer()
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct PickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
        //        .padding()
        //        .background(.white)
        //        .clipShape(RoundedRectangle(cornerRadius: 12))
        //        .padding()
        //        .shadow(radius: 10)
    }
}


struct CollapsibleDestinationViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}
