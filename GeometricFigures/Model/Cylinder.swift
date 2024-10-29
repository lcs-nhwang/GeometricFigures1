//
//  Cylinder.swift
//  GeometricFigures
//
//  Created by Nicholas Hwang on 28/10/2024.
//

import Foundation

//PROTOCOL
protocol Describable {
    var descriptionA: String { get }
    var descriptionV: String { get }
}


// STRUCTURE
struct Cylinder: Describable {
    // STORED PROPERTIES
    var radius: Double
    var height: Double
    // Computed Properties
    var circumference: Double {
        return Double.pi * 2 * radius
    }
    var circleArea: Double {
        return Double.pi * radius * radius
    }
    var totalSurfaceArea: Double {
        return circumference * height + 2 * circleArea
    }
    var volume: Double {
        return circleArea * height
    }
    var descriptionA: String {
        return "The Total Surface Area of the Cylinder is \(totalSurfaceArea) units."
    }
    var descriptionV: String {
        return "The Volume of the Cylinder is \(volume) units."
    }
}
