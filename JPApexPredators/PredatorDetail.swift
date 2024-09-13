//
//  PredatorDetail.swift
//  JPApexPredators
//
//  Created by Ibrahim Lokman on 13/9/24.
//

import SwiftUI

struct PredatorDetail: View {
    let predator: ApexPredator
    var body: some View {
        GeometryReader { geo in
            ScrollView{
                ZStack (alignment: .bottomTrailing) {
                    Image(predator.type.rawValue)
                        .resizable()
                        .scaledToFit()
                    
                    Image(predator.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width / 1.5, height: geo.size.height / 3)
                        .scaleEffect(x: -1)
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 7)
                        .offset(y: 20)
                }
            }.ignoresSafeArea()
        }
       
    }
}

#Preview {
    PredatorDetail(predator: Predators().apexPredators[2] )
}
