//
//  MyTextView.swift
//  SwifUI Day1
//
//  Created by Mac on 28/05/2023.
//

import SwiftUI

struct LandmarkName: View {
    var name: String
    var body: some View {
        
        Text(name)
            .foregroundColor(.red)
            .font(.largeTitle)
            .bold()
            .shadow(radius: 4)
        
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkName(name: "hello")
    }
}
