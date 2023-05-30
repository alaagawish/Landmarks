//
//  LandmarksList.swift
//  SwifUI Day1
//
//  Created by Alaa on 30/05/2023.
//

import SwiftUI

struct LandmarksList: View {
    var body: some View {
        NavigationView{
            List(landmarks){
                landmark in
                NavigationLink(destination: Details(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
                
            }.navigationBarTitle("Landmarks")
        }
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksList()
    }
}
