//
//  ResData.swift
//  SwiftFilter
//
//  Created by ٍٍRaneem A on 04/05/1445 AH.
//
import Foundation

import SwiftUI

class ResData: ObservableObject{
    @Published var resdata: [Restaurant]
    init(){
    resdata = [
    Restaurant(id: UUID(), RestName: "McDonald's", Type1: "Fast Food and Burgers", image: "MAC" ,logo: "heart"),
        
    Restaurant(id: UUID(), RestName: "Piatto", Type1: "Italian", image: "Piatt" ,logo: "heart"),
        
    Restaurant(id: UUID(), RestName: "Herfy", Type1: "Fast Food", image: "Herfy" ,logo: "heart"),
        
    Restaurant(id: UUID(), RestName: "KFC",Type1: "Fast Food and Burgers", image: "KFC" ,logo: "heart"),
        
    Restaurant(id: UUID(), RestName: "Kudu", Type1: "Fast Food", image: "Kudu" ,logo: "heart"),
        
     Restaurant(id: UUID(), RestName: "Shawarmer", Type1: "Arabic and others", image: "Sh" ,logo: "heart"),
        
    Restaurant(id: UUID(), RestName: "Burger King", Type1: "American and Burgers", image: "King" ,logo: "heart"),
      
    
    
    ]
        
    }
}
