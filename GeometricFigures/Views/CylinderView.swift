//
//  CylinderView.swift
//  GeometricFigures
//
//  Created by Nicholas Hwang on 28/10/2024.
//

import SwiftUI

struct CylinderView: View {
    
    // Stored Properties
    @State var currentCylinder = Cylinder(radius: 50, height: 12)
    // Computed Properties
    var body: some View {
        VStack {
            
            // Image
            Image("CylinderDiagram")
                .resizable()
                .scaledToFit()
            
            // Label1
            Text("Radius")
            
            // Slider Control1
            Slider(value: $currentCylinder.radius, in: 1...100,
                step: 1.0
            )
            // Label2
            Text("Height")
            
            //SliderControl2
            Slider(value: $currentCylinder.height,
                in: 1...100,
                step: 1.0
            )
            // OUTPUT
            Text("Radius is: \(currentCylinder.radius.formatted())")
            Text("Height is: \(currentCylinder.height.formatted())")
            Text("Circumference is: \(currentCylinder.circumference.formatted())")
            Text("Circle Area is: \(currentCylinder.circleArea.formatted())")
            Text("Total Surface Area is: \(currentCylinder.totalSurfaceArea.formatted())")
            Text("Volume is: \(currentCylinder.volume.formatted())")
            Spacer()
        }
        .padding()
    }
}

#Preview {
    CylinderView()
}
