//
//  LandmarkResponse.swift
//  SwifUI Day1
//
//  Created by Alaa on 30/05/2023.
//

import Foundation
struct LandmarkResponse: Identifiable, Decodable {

    let name: String
    let category: String
    let city: String
    let state: String
    let id: Int
    let isFeatured: Bool
    let isFavorite: Bool
    let park: String
    let coordinates: Coordinate
    let description: String
    let imageName: String

}
