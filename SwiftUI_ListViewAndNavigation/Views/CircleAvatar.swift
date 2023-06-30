//
//  CircleAvatar.swift
//  SwiftUI_ListViewAndNavigation
//
//  Created by Jesmin Nancy on 30/6/23.
//

import SwiftUI

struct CircleAvatar: View {
    var image:Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke( Color.white))
            .shadow(radius: 7)
    }
}

struct CircleAvatar_Previews: PreviewProvider {
    static var previews: some View {
        CircleAvatar(image: Image("svp"))
    }
}
