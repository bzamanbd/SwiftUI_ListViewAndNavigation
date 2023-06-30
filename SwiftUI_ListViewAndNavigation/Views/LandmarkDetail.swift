//
//  LandmarkDetail.swift
//  SwiftUI_ListViewAndNavigation
//
//  Created by Jesmin Nancy on 30/6/23.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark:Landmark
    var body: some View {
            ScrollView{
                VStack{
                    MapView(coordinate: landmark.localCoordinates)
                        .frame(height: 300)
                    CircleAvatar(image: landmark.image)
                        .offset(y:-130)
                    ParkAndCityWithDivider(
                        name: landmark.name,
                        park: landmark.park,
                        city: landmark.city
                    )
                        .offset(y: -120)
                    AboutPark(
                        nameTxt: "About \(landmark.name)",
                        aboutTxt: landmark.description
                    )
                    .offset(y: -120)
                    .padding()
                }
                
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
