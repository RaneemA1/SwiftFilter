//
//  ResView.swift
//  SwiftFilter
//
//  Created by ٍٍRaneem A on 04/05/1445 AH.
//

import SwiftUI

struct ResView: View {


    
        @StateObject var restaurant = ResData()
        @State var searchText = ""
        
        
           var filtertype: [Restaurant] {
               if searchText.isEmpty {
                   return restaurant.resdata
               } else {
                   return restaurant.resdata.filter { $0.Type1.localizedCaseInsensitiveContains(searchText) }
               }
           }
        
        var body: some View {
            ZStack{
                Color.pink
                    .ignoresSafeArea()
                VStack(spacing: 2){
                    
                    HStack(spacing: 70){
                        Image(systemName: "arrow.left")
                        Text("All Restaurants ")
                        Image(systemName: "mappin.and.ellipse.circle.fill")
                        
                    }.foregroundColor(.white)
                        .font(.title3).bold()
                        .padding()
                  
                        ZStack{
                            UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: 0, bottomTrailingRadius: 5, topTrailingRadius: 5).fill(.pink1)
                      
                                .ignoresSafeArea()
                     
                                ScrollView{
                                    VStack {
                                        
                                        HStack{
                                            Image(systemName: "magnifyingglass")
                                            TextField("Search...", text: $searchText)
                                        }.padding()
                                            .foregroundColor(.black)
                                            .font(.title3)
                                            .frame(width: 380,height: 70)
                                            .background(RoundedRectangle(cornerRadius:25, style: .continuous).fill(.white.opacity(0.9)))
                                           
                                        ForEach(filtertype) { n in
                                            
                                            ZStack {
                                                RoundedRectangle(cornerRadius: 15)
                                                    .fill(Color.white)
                                                    .frame(maxWidth: .infinity)
                                                    .frame(height: 90)
                                                
                                                HStack {
                                                    Image( n.image)
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(width: 70)
                                                        .padding()
                                                    VStack {
                                                        Text(n.RestName)
                                                            .bold()
                                                            .font(.title3)
                                                        Text(n.Type1)
                                                    }
                                                    
  Spacer()
                                                    Image(systemName: n.logo)
                                                        .resizable()
                                                        .scaledToFit()
                                                        .foregroundColor(.pink)
                                                        .frame(width: 30)
                                                    
                                                    
                                                    
                                                }.padding()
                                              
                                            }
                                        }
                            }.padding()
                        }
                    }
            }}}}
#Preview {
    ResView()
}
