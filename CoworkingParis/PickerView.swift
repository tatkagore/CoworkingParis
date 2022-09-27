//
//  PickerView.swift
//  CoworkingParis
//
//  Created by Tatiana Simmer on 26/09/2022.
//

import SwiftUI

struct PickerView: View {
    
    @State private var selectDisplay = 0
    
    var body: some View {
        
        NavigationView{
            VStack {
                Picker("", selection: $selectDisplay) {
                    Text("Map").tag(0)
                    Text("List").tag(1)
                }
                .pickerStyle(.segmented)
                
                if selectDisplay == 0 {
                    MapView()
                } else {
                    ListView()
                }
            }
            .navigationTitle("Find you coworking place")
            .navigationBarTitleDisplayMode(.inline)
            //.background(Color.accentColor)
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
