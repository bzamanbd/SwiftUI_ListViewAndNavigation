//
//  LandmarkRow.swift
//  SwiftUI_ListViewAndNavigation
//
//  Created by Jesmin Nancy on 30/6/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark:Landmark
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0] )
    }
}
