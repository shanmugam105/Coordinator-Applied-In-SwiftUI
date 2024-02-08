//
//  MapView.swift
//  Coordinator
//
//  Created by Mohammad reza on 18.07.2022.
//

import SwiftUI

struct MapView: View {
    
    var coordinator: Coordinator<MapRouter> = .init()

    var body: some View {
        VStack {
            Button("Go to the city") {
                coordinator.show(.city(named: "El Paso"))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
