//
//  ListView.swift
//  CoworkingParis
//
//  Created by Tatiana Simmer on 26/09/2022.
//

import SwiftUI

struct ListView: View {
    var cafes: [CoworkingPlace] = CoworkingPlace.allCafes

    var body: some View {
        NavigationView{
            ZStack {
                
                List {
                   ForEach(cafes) { cafe in
                        NavigationLink(destination: DetailView(cafe: cafe)) {
                            /*@START_MENU_TOKEN@*/Text(cafe.name)/*@END_MENU_TOKEN@*/
                        }
                    }
                    //.listRowBackground(Color("wheat"))
              }
                .navigationBarTitle(Text("Coworkings"), displayMode: .inline)
                
                //change background color
                .scrollContentBackground(.hidden)
                .background(.white)
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
