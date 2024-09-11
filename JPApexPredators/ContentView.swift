//
//  ContentView.swift
//  JPApexPredators
//
//  Created by Ibrahim Lokman on 9/9/24.
//

import SwiftUI

struct ContentView: View {
    let predators = Predators()
    @State var searchText = ""
    
    var filteredDinos: [ApexPredator]{
        if searchText.isEmpty {
            return predators.apexPredators
        } else {
            return predators.apexPredators.filter { predators in
                predators.name
                    .localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    var body: some View {
        
        NavigationStack{
            List(filteredDinos){ predator in
                NavigationLink{
                    Image(predator.image)
                        .resizable()
                        .scaledToFit()
                     
                        .shadow(color: .white, radius: 1)
                } label: {
                    HStack{
                        Image(predator.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                            .shadow(color: .white, radius: 1)
                        VStack(alignment:.leading) {
                            Text(predator.name)
                                .fontWeight(.bold)
                            Text(predator.type.rawValue.capitalized)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.horizontal,13)
                                .padding(.vertical, 5)
                                .background(predator.type.background)
                                .clipShape(.capsule)
                        }
                      
                    }
                }
               
            }
            .navigationTitle("Apex Predators")
            .searchable(text: $searchText)
            .autocorrectionDisabled()
            .animation(.default, value: searchText)
        }
   
        .preferredColorScheme(.dark)
       
    }
}

#Preview {
    ContentView()
}

