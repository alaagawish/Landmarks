//
//  Network.swift
//  SwifUI Day1
//
//  Created by Alaa on 30/05/2023.
//

import Foundation
class Network {
    func getDate<T: Decodable>(fileName: String) -> T {
        
        var data: Data
        guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)else{
            fatalError("couldn't open file...")
           
        }
        do{
            data = try Data(contentsOf: file)
            return try JSONDecoder().decode(T.self, from: data)
        }catch{
            fatalError("error geting data")
        }
        
        
    }
}

var landmarks: [LandmarkResponse] = Network().getDate(fileName: "landmarkData.json")
