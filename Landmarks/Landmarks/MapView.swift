//
//  MapView.swift
//  Landmarks
//
//  Created by dongjoon min on 11/12/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        // better practice to remove 'get' in comptued properties.
        get {
            MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        }
        
    }
}

#Preview {
    MapView()
}
