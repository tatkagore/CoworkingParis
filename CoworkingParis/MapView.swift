//
//  ContentView.swift
//  CoworkingParis
//
//  Created by Tatiana Simmer on 26/09/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var cafes: [CoworkingPlace] = CoworkingPlace.allCafes
    
    @State private var coordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.8731907, longitude: 2.3631488), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        
        NavigationView {
            
            Map(coordinateRegion: $coordinateRegion, annotationItems: cafes) { cafe in
                MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: cafe.lat, longitude: cafe.lon))
                {
                    NavigationLink(destination: DetailView(cafe: cafe)) {
                        VStack(alignment: .leading) {
                            Image(systemName: "pin.fill")
                                .foregroundColor(.accentColor)
                        }
                    }
                }
            }
            .ignoresSafeArea()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            MapView()
        }
    }
}
