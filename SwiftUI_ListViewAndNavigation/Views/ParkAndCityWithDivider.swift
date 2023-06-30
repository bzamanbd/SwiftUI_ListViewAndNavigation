//
//  ParkAndCityWithDivider.swift
//  SwiftUI_ListViewAndNavigation
//
//  Created by Jesmin Nancy on 30/6/23.
//

import SwiftUI

struct ParkAndCityWithDivider: View {
    var name:String
    var park:String
    var city:String
    var body: some View {
        VStack(alignment: .leading){
            Text(name)
                .font(.title2)
                .fontWeight(.bold)
            HStack{
                Text(park)
                Spacer()
                Text(city)
                    
            }
            .font(.caption)
            .foregroundColor(Color.gray)
            Divider()
            
        }.padding()
            }
}

struct ParkAndCityWithDivider_Previews: PreviewProvider {
    static var previews: some View {
        ParkAndCityWithDivider(name:"name", park: "park", city: "city")
    }
}
