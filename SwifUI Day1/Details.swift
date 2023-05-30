//
//  Details.swift
//  SwifUI Day1
//
//  Created by Alaa on 30/05/2023.
//

import SwiftUI

struct Details: View {
    var landmark: LandmarkResponse
    var body: some View {
        ScrollView {
            MapView(lat: landmark.coordinates.latitude, long: landmark.coordinates.longitude)
                .edgesIgnoringSafeArea(.top)
                .ignoresSafeArea()
            
            LandmarkImageView(img: landmark.imageName)
                .offset(x:0,y:-150)
                .padding(.bottom,-150)
            LandmarkName(name: landmark.name)
            
            
            Text(landmark.park)
                .font(.title2)
                .foregroundColor(.black)
                .bold()
            HStack{
                Text("\(landmark.city),")
                Text(landmark.state)
            }
            Divider()
            Text("Category: \(landmark.category)")
             
                .bold()
            Spacer(minLength: 10)
                
            
            
            Text("      Description about the park: \(landmark.description)")
            
        }.navigationBarTitle(landmark.name)
        
        
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details(landmark: landmarks[0])
    }
}
