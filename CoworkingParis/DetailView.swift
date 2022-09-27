//
//  DetailView.swift
//  CoworkingParis
//
//  Created by Tatiana Simmer on 26/09/2022.
//

import SwiftUI

struct DetailView: View {
    var cafe: CoworkingPlace
    var body: some View {
        NavigationView {
            ZStack {
                ZStack {
                    VStack(spacing: 10){
                        HStack {
                            Text("\(cafe.name)")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.accentColor)
                            Text("☕️")
                        }
                        HStack {
                            Text("\(cafe.address)")
                                .font(.headline)
                                .foregroundColor(Color.accentColor)
                            Text("📍")
                        }
                        HStack {
                            
                            Link("Visitez notre site 👈🏻 ",destination: URL(string: "\(cafe.url)")!)
                                .foregroundColor(Color.accentColor)
                                .font(.headline)
                        }
                        if cafe.wifi == true {
                            Text("Free WI-FI ")
                                .foregroundColor(Color.accentColor)
                                .font(.headline)
                        } else {
                            Text("No WI-FI")
                                .foregroundColor(Color.accentColor)
                                .font(.headline)
                        }
                        
                        Text("\(cafe.name)")
                            .font(.headline)
                            .foregroundColor(Color.accentColor)
                    }
                }
                Image("bottom")
                    .offset(y: 280)
                    .offset(x: -5)
                    .opacity(0.7)
            }
            .ignoresSafeArea()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(cafe: CoworkingPlace.sampleCafe)
    }
}
