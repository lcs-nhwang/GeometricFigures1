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
            HStack {
                Text("Radius")
                    .font(
                        .largeTitle
                            .weight(.bold)
                    )
                Spacer()
            }
            // Slider Control1
            Slider(value: $currentCylinder.radius, in: 1...100,
                step: 1.0
            )
            HStack {
                Text("\(currentCylinder.radius) Units")
                Spacer()
            }
            Spacer()
            // Label2
            HStack {
                Text("Height")
                    .font(
                        .largeTitle
                            .weight(.bold)
                    )
                Spacer()
            }
            //SliderControl2
            Slider(value: $currentCylinder.height,
                in: 1...100,
                step: 1.0
            )
            HStack {
                Text("\(currentCylinder.height) Units")
                Spacer()
            }
            .padding(.bottom, 10)
            // OUTPUT
            HStack {
                Text("Stats")
                    .font(
                        .largeTitle
                            .weight(.bold)
                    )
                Spacer()
            }
            Spacer()
            HStack {
                Text("Radius: ")
                    .font(
                        .system(size: 20)
                        .weight(.bold)
                    )
                Text("\(currentCylinder.radius) Units")
                Spacer()
            }
            .padding(.bottom)
            
            HStack {
                Text("Height: ")
                    .font(
                        .system(size: 20)
                        .weight(.bold)
                    )
                Text("\(currentCylinder.height) Units")
                Spacer()
            }
            .padding(.bottom)
            HStack {
                Text("Circumference: ")
                    .font(
                        .system(size:20)
                        .weight(.bold)
                    )
                Text("\(currentCylinder.circumference) Units")
                Spacer()
            }
            .padding(.bottom)
            HStack {
                Text("Area of Circle: ")
                    .font(
                        .system(size: 20)
                        .weight(.bold)
                    )
                Text("\(currentCylinder.circleArea) Square Units")
                Spacer()
            }
            .padding(.bottom)
            HStack {
                Text("Total Surface Area: ")
                    .font(
                        .system(size: 20)
                        .weight(.bold)
                    )
                Text("\(currentCylinder.totalSurfaceArea) Square Units")
                Spacer()
            }
            .padding(.bottom)
            HStack {
                Text("Volume: ")
                    .font(
                        .system(size: 20)
                        .weight(.bold)
                    )
                Text("\(currentCylinder.volume) Cube Units")
                Spacer()
            }
            Spacer()
        }
        .padding()
       
    }
}

#Preview {
    CylinderView()
}
