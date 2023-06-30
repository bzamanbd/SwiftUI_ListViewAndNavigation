//
//  MapView.swift
//  SwiftUI_ListViewAndNavigation
//
//  Created by Jesmin Nancy on 30/6/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate = CLLocationCoordinate2D()
    @State private var region = MKCoordinateRegion()
    
    private func setRagion(_ coordinate: CLLocationCoordinate2D){
        region = MKCoordinateRegion(
            center:coordinate,
        span: MKCoordinateSpan(latitudeDelta: 0.9, longitudeDelta: 0.9))
    }
    
    var body: some View {
        Map(coordinateRegion: $region)
            .opacity(0.7)
            .onAppear{
                setRagion(coordinate)
            }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView( coordinate: CLLocationCoordinate2D(
            latitude: 21.8380, longitude: 73.7191
        ))
    }
}
