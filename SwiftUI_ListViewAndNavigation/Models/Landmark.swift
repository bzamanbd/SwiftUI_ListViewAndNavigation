//
//  Landmark.swift
//  SwiftUI_ListViewAndNavigation
//
//  Created by Jesmin Nancy on 30/6/23.
//

import SwiftUI
import CoreLocation
struct Landmark: Hashable, Codable{
    var id:Int
    var name:String
    var category:String
    var city:String
    var state:String
    var park:String
    var description:String
//    var imageName:String
    private var imageName:String
    
    var image: Image{Image(imageName)}
    
    struct Coordinates: Hashable, Codable
    {
        var latitude: Double
        var longitude: Double
    }
    private var coordinates: Coordinates
    
    var localCoordinates: CLLocationCoordinate2D{
        CLLocationCoordinate2D( latitude:coordinates.latitude, longitude: coordinates.longitude)
    }
    
    
}
