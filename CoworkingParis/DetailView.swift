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
                LinearGradient(gradient: Gradient(colors: [.white, .yellow, .orange]), startPoint: .top, endPoint: .bottom)

                VStack(spacing: 10){
                    HStack {
                        Text("\(cafe.name)")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("☕️")
                    }
                    HStack {
                        Text("\(cafe.address)")
                            .font(.headline)
                        Text("📍")
                    }
                    HStack {
                        Text("\(cafe.url)")
                            .font(.headline)
                    }
                    Text("\(cafe.name)")
                        .font(.headline)
                }
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
