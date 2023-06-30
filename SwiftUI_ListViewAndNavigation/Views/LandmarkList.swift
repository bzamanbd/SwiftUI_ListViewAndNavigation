//
//  LandmarkList.swift
//  SwiftUI_ListViewAndNavigation
//
//  Created by Jesmin Nancy on 30/6/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks){
                landmark in
                NavigationLink(
                    destination: LandmarkDetail(landmark: landmark)
                )
                {
                    LandmarkRow(landmark: landmark)
                }
                
            }
            .padding(.vertical,30)
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
