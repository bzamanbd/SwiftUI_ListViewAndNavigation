//
//  AboutPark.swift
//  SwiftUI_ListViewAndNavigation
//
//  Created by Jesmin Nancy on 30/6/23.
//

import SwiftUI

struct AboutPark: View {
    var nameTxt:String
    var aboutTxt:String
    var body: some View {
        VStack(alignment:.leading){
            Text(nameTxt)
                .font(.subheadline)
                .fontWeight(.bold)
            Text(aboutTxt)
                .font(.body)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)

        }
            }
}

struct AboutPark_Previews: PreviewProvider {
    static var previews: some View {
        AboutPark(nameTxt:"name", aboutTxt: "about text goes here")
    }
}
